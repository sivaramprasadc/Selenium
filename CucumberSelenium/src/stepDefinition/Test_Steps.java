package stepDefinition;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Test_Steps {
	public static WebDriver driver;
	@Given("^User is on Home Page$")
	public void user_is_on_Home_Page() throws Throwable {
        //driver = new FirefoxDriver();
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
  	  	//driver = new FirefoxDriver();
  	  	driver=new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        //Thread.sleep(10000);
        driver.get("http://www.store.demoqa.com");
		}

	@When("^User Navigate to LogIn Page$")
	public void user_Navigate_to_LogIn_Page() throws Throwable {
		driver.findElement(By.xpath(".//*[@id='account']/a")).click();
		}

	@When("^User enters UserName and Password$")
	public void user_enters_UserName_and_Password() throws Throwable {
		driver.findElement(By.id("log")).sendKeys("testuser_1"); 	 
	    driver.findElement(By.id("pwd")).sendKeys("Test@123");
	    driver.findElement(By.id("login")).click();
		}

	@Then("^Message displayed Login Successfully$")
	public void message_displayed_Login_Successfully() throws Throwable {
		System.out.println("Login Successfully");
	}

	@When("^User LogOut from the Application$")
	public void user_LogOut_from_the_Application() throws Throwable {
		//driver.findElement(By.xpath("//a[contains(text(),'Register')])).click();"
		driver.findElement(By.xpath("//a[contains(text(),'Register')]"));
	}

	@Then("^Message displayed Logout Successfully$")
	public void message_displayed_Logout_Successfully() throws Throwable {
		driver.quit();
        System.out.println("LogOut Successfully");
	}

}