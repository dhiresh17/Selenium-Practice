package com.Utility;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigReader {
	
	public static String ConfigurationReader(String AppURL)
	{
		String url=null;
		
		String RelativePath = new File(System.getProperty("user.dir")).getAbsolutePath();
		Properties properties = new Properties();		
		
		try {
			FileInputStream objFile =new FileInputStream(RelativePath+"\\src\\test\\resources\\config\\configuration.properties");	
			try {
				properties.load(objFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			url= properties.getProperty(AppURL);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Application URL is :"+url);
		return url;
	}

}
