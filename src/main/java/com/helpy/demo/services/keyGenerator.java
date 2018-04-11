package com.helpy.demo.services;

import java.util.Random;

import org.springframework.stereotype.Service;

@Service
public class keyGenerator {
	Random rand = new Random();
	final String alphabet = "1234567890ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvxyz";
	final String UpperCaseAlphabetDigits = "1234567890ABCDEFGHIJKLMNOPQRSTUVXYZ";
	final int alphabetLength = alphabet.length();
	final int upperCaseAlphabetDigits = UpperCaseAlphabetDigits.length();
	
	public String generateVerificationKey(int length){
		String key = "";
		for(int b = 0; b<length; b++){
			key = key.concat( String.valueOf( alphabet.charAt ( rand.nextInt( alphabetLength))));
		}
		return key;
	}
	
	public String generateVerificationKeyUppercase(int length){
		String key = "";
		for(int b = 0; b<length; b++){
			key = key.concat( String.valueOf( UpperCaseAlphabetDigits.charAt ( rand.nextInt( upperCaseAlphabetDigits))));
		}
		return key;
	}
}
