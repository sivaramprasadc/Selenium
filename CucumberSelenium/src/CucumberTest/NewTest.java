package CucumberTest;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;

public class NewTest {
	public WebDriver driver;
  @Test
  public void f() {
	  //driver=new FirefoxDriver();
	  //System.setProperty("webdriver.firefox.driver","C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe");
	  //System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
	  System.setProperty("webdriver.gecko.driver", "C:\\Users\\sivaram.chakala\\Downloads\\geckodriver.exe");
	  driver = new FirefoxDriver();
	  //driver=new ChromeDriver();
	  driver.get("http://www.google.com");
	  driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	  driver.manage().window().maximize();
	  driver.quit();
  }
}
