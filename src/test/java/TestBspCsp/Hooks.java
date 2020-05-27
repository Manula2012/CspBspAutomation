package TestBspCsp;


import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks extends Utils
{
    BrowserSelector browserSelector = new BrowserSelector();

    @Before

    public void openBrowser()
    {
        browserSelector.setupBrowser();
    }

    @After
    public void closeBrowser()
    {
        driver.quit();
    }
}
