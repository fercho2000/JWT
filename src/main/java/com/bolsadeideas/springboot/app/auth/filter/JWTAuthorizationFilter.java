package com.bolsadeideas.springboot.app.auth.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

import javax.crypto.SecretKey;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import com.bolsadeideas.springboot.app.auth.SimpleGrantedAuthoritiesMixin;
import com.fasterxml.jackson.databind.ObjectMapper;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

public class JWTAuthorizationFilter extends BasicAuthenticationFilter {

	public static final SecretKey SECRET_KEY = Keys.secretKeyFor(SignatureAlgorithm.HS512);

	public JWTAuthorizationFilter(AuthenticationManager authenticationManager) {
		super(authenticationManager);

	}

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		String token = request.getHeader("Authorization");

		if (!requiresAuthentication(token)) {
			chain.doFilter(request, response);
			return;
		}

		boolean tokenValido;
		Claims claimsToken = null;
		try {

			claimsToken = Jwts.parserBuilder().
					setSigningKey(SECRET_KEY).build()
					.parseClaimsJws(token.replace("Bearer ", ""))
					.getBody();

			tokenValido = true;
		} catch (JwtException | IllegalArgumentException e) {
			
			tokenValido = false;
		}

		UsernamePasswordAuthenticationToken authentication = null;
		
		if (tokenValido) {
			String username = claimsToken.getSubject();
			Object roles = claimsToken.get("authorities"); 
			
			Collection<? extends GrantedAuthority> authorities = Arrays.asList(new ObjectMapper()
					.addMixIn(SimpleGrantedAuthority.class, SimpleGrantedAuthoritiesMixin.class)
					.readValue(roles.toString().getBytes(), SimpleGrantedAuthority[].class));
			
			authentication = new UsernamePasswordAuthenticationToken(username, null, authorities);
		} 
		
		SecurityContextHolder.getContext().setAuthentication(authentication);
		chain.doFilter(request, response);
		
	}

	protected boolean requiresAuthentication(String token) {

		if (token == null || !token.startsWith("Bearer ")) {
			return false;
		}
		return true;
	}

}