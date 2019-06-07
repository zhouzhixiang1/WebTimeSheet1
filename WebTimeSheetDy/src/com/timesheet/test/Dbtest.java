package com.timesheet.test;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

class Dbtest {
	private ApplicationContext act = null;
	
	{
		act= new ClassPathXmlApplicationContext("applicationContext.xml");
	}	

	@Test
	public void TestEntity() {
		
	}
	
	
	@Test
	public void testDataSource() throws SQLException {
		DataSource dataSource = act.getBean(DataSource.class);
		System.out.println(dataSource.getConnection());
		
	}

}
