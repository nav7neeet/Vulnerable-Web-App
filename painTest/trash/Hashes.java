package com.acc.trash;

import java.security.MessageDigest;

public class Hashes
{

	public static void main(String[] args) throws Exception
	{
		String password = "012";
		int a = 1;
		byte[] pwd = password.getBytes();

		MessageDigest digest = MessageDigest.getInstance("sha-256");

		byte[] byteData = digest.digest(pwd);

		for (byte b : byteData)
		{
			System.out.println(b);
		}

		StringBuffer hexString = new StringBuffer();

		for (int i = 0; i < byteData.length; i++)
		{
			String hex = Integer.toHexString(0xff & byteData[i]);

			if (hex.length() == 1)
			{
				hexString.append('0');
			}
			
			hexString.append(hex);
		}
		System.out.println("Digest(in hex format):: "
				+ hexString.toString());
	}

}
