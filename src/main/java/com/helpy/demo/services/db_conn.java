package com.helpy.demo.services;

import java.sql.Connection;
import java.sql.DriverManager;

public class db_conn {
	private static Connection connection=null;
	public static Connection getConnection() {
		if(connection!=null)
			return connection;
		else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpy","root","root");
			}
			catch(Exception e) {
				System.out.println("Connection Error: "+e);
			}
			return connection;
		}
	}
}
