package TestBspCsp;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

public class BrowserSelector extends Utils {
    public void setupBrowser() {
        LoadProp loadProp = new LoadProp();
        String browser = loadProp.getProperty("browser");
        if (browser.equalsIgnoreCase("chrome")) {
            System.setProperty("webdriver.chrome.driver", "src/test/Resources/BrowserDrivers/chromedriver.exe");
            driver = new ChromeDriver();
            driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
            driver.manage().window().fullscreen();
            driver.get("url");
        } else if
        (browser.equalsIgnoreCase("firefox")) {
            System.setProperty("webdriver.gecko.driver", "src/test/Resources/BrowserDrivers/geckodriver.exe");
            driver = new FirefoxDriver();
            driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
            driver.manage().window().fullscreen();
            driver.get("url");
        }
        else {
            System.out.println("Wrong browser name or empty: " + browser);
        }
    }
}
