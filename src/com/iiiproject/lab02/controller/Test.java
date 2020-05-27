package com.iiiproject.lab02.controller;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;



public class Test {
	
	
	public String redirect() throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
		String key = "kittymickysnoopy"; // 對稱式金鑰
		byte[] iv = new byte[128 / 8]; // 初始向量
		SecureRandom srnd = new SecureRandom();
		srnd.nextBytes(iv);
		String plainText = "美國總統(川普)的老婆拍過裸照";
		String cipherText = "zsQ61dKBuK9CA/Kfg8EGkQ==";
		String decryptedString = "";
		
			
			decryptedString = CipherUtils.decryptString(key, cipherText, iv);
			System.out.println("原始字串: " + plainText);
			System.out.println("加密字串: " + cipherText);
			System.out.println("解密字串: " + decryptedString);
			return "test";
	}
	
}
