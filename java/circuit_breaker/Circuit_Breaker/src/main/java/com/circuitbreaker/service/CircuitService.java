package com.circuitbreaker.service;

import java.io.IOException;

import org.springframework.stereotype.Service;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

import okhttp3.OkHttpClient;
import okhttp3.Request;

@Service
public class CircuitService {

	private final OkHttpClient okHttpClient;

	public CircuitService(OkHttpClient okHttpClient) {
		this.okHttpClient = okHttpClient;
	}

	@HystrixCommand(fallbackMethod = "pingFallBack")
	public String pingGoogle() throws IOException {
		final Request request = new Request.Builder().url("http://localhost:8081/c1/api/hello").get().addHeader("cache-control", "no-cache").build();
		okHttpClient.newCall(request).execute();
		return "ping to google was sucessfull";
	}
	
	public String pingFallBack() {
		return "Resource is busy or offline";
	}
}
