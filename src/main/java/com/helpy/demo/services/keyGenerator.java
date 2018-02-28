package com.helpy.demo.services;

import java.util.Random;

public class keyGenerator {
	Random rand = new Random();
	final String alphabet = "1234567890ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvxyz";
	final int alphabetLength = alphabet.length();
	
	
	public String generateVerificationKey(int length){
		String key = "";
		for(int b = 0; b<length; b++){
			key = key.concat( String.valueOf( alphabet.charAt ( rand.nextInt( alphabetLength))));
		}
		System.out.println("Code generated: "+key);
		return key;
	}
}
