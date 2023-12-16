import org.openqa.selenium.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class login {
	public static void main(String[] args) {
		System.setProperty("Webdriver.chrome.Driver",
				"Broweser//path");
		WebDriver driver = new ChromeDriver();
		driver.get("URL");
		driver.findElement(By.name("username")).sendKeys("User_Name");
		driver.findElement(By.name("password")).sendKeys("Password");
		driver.findElement(By.tagName("button")).click();
		String expectedTitle = "Page_Title";
		String receivedTitle = driver.getTitle();
		System.out.println(receivedTitle);
		if (expectedTitle.equals(receivedTitle)) {
			System.out.println("Test Success");
		} else {
			System.out.println("Something went wrong");
		}
		 driver.close();
	}

}
