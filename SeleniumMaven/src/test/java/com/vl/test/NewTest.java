package com.vl.test;

import org.testng.annotations.Test;

import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;

import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.AfterTest;

public class NewTest {
	public WebDriver driver;
	ExtentReports extent;
	ExtentTest logger;	
	
	@Test
	public void f(Method m) {
		System.out.println("Done");
		logger = extent.startTest(m.getName());
		Assert.assertTrue(true);
		//To generate the log when the test case is passed
		logger.log(LogStatus.PASS, "Test Case Passed is :"+m.getName());
	}
	@Test
	public void f1(Method m) {
		System.out.println("Done");
		logger = extent.startTest("f1");
		Assert.assertTrue(true);
		//To generate the log when the test case is passed
		logger.log(LogStatus.PASS, "Test Case Passed is :"+m.getName());
	}
	@Test
	public void f2(Method m) {
		System.out.println("Done");
		logger = extent.startTest("f2");
		Assert.assertTrue(false);
		//To generate the log when the test case is passed
		logger.log(LogStatus.FAIL, "Test Case failed is : "+m.getName());
	}
	@BeforeSuite
	public void beforeSuite() {
		System.setProperty("webdriver.gecko.driver", "C:\\Users\\sivaram.chakala\\Downloads\\geckodriver-v0.18.0-win64\\geckodriver.exe");
		driver = new FirefoxDriver();
		driver.get("https://www.google.com");
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		try {
			driver.manage().window().maximize();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	@AfterSuite
	public void afterSuite() {
		driver.quit();
	}
	
	@BeforeTest
	public void startReport(){
		//ExtentReports(String filePath,Boolean replaceExisting) 
		//filepath - path of the file, in .htm or .html format - path where your report needs to generate. 
		//replaceExisting - Setting to overwrite (TRUE) the existing file or append to it
		//True (default): the file will be replaced with brand new markup, and all existing data will be lost. Use this option to create a brand new report
		//False: existing data will remain, new tests will be appended to the existing report. If the the supplied path does not exist, a new file will be created.
		extent = new ExtentReports (System.getProperty("user.dir") +"/test-output/STMExtentReport.html", true);
		//extent.addSystemInfo("Environment","Environment Name")
		extent
                .addSystemInfo("Host Name", "AUTOMATION SAMPLE")
                .addSystemInfo("Environment", "Automation Testing - Selenium")
                .addSystemInfo("User Name", "Sivaram");
                //loading the external xml file (i.e., extent-config.xml) which was placed under the base directory
                //You could find the xml file below. Create xml file in your project and copy past the code mentioned below
                extent.loadConfig(new File(System.getProperty("user.dir")+"\\extent-config.xml"));
	}
	
	@AfterMethod
	public void getResult(ITestResult result) throws Throwable{
		if(result.getStatus() == ITestResult.FAILURE){			
			String screenShotPath = GetScreenShot.capture(driver, "screenShotName");
			logger.log(LogStatus.FAIL, "Test Case Failed is "+result.getName());
			logger.log(LogStatus.FAIL, result.getThrowable());
			logger.log(LogStatus.FAIL, "Snapshot below: " + logger.addScreenCapture(screenShotPath));
			
		}else if(result.getStatus() == ITestResult.SKIP){
			logger.log(LogStatus.SKIP, "Test Case Skipped is "+result.getName());
		}
		// ending test
		//endTest(logger) : It ends the current test and prepares to create HTML report
		extent.endTest(logger);
	}
	@AfterTest
	public void endReport(){
		// writing everything to document
		//flush() - to write or update test information to your report. 
                extent.flush();
                //Call close() at the very end of your session to clear all resources. 
                //If any of your test ended abruptly causing any side-affects (not all logs sent to ExtentReports, information missing), this method will ensure that the test is still appended to the report with a warning message.
                //You should call close() only once, at the very end (in @AfterSuite for example) as it closes the underlying stream. 
                //Once this method is called, calling any Extent method will throw an error.
                //close() - To close all the operation
                extent.close();
    }

}
