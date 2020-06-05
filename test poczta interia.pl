public class Interia_test_suite {

    public static void main(String[] args) {
        Logowanie m = new Logowanie();
        Wylogowanie n = new Wylogowanie();
        Usuwanie_wiadomosci o = new Usuwanie_przywracanie_wiadomosci();
        m.logowanie();
        n.wylogowanie();
        o.usuwanie_wiadomosci();
    }
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

 Logowanie.java - pierwszy test

public class Logowanie {

      public void logowanie() {
            System.setProperty("webdriver.chrome.driver", "C:\\Selenium\\chromedriver_win32\\chromedriver.exe");
            WebDriver driver = new ChromeDriver();
            driver.get("http://www.interia.pl");
            driver.findElement(By.className("switch-mail")).click();
            driver.findElement(By.className("rodo-popup-agree")).click();
            driver.findElement(By.id("formEmail")).sendKeys("hillary.clinton@interia.pl");
            driver.findElement(By.id("formPassword")).sendKeys("Test$444");
            driver.findElement(By.id("formSubmit")).click();
            System.out.println(driver.getTitle());
        }
        
 Wylogowanie.java- drugi test

    public class Wylogowanie {

        public void wylogowanie() {
            System.setProperty("webdriver.chrome.driver", "C:\\Selenium\\chromedriver_win32\\chromedriver.exe");
            WebDriver driver=new ChromeDriver();
            driver.get("https://poczta.interia.pl/");
            driver.findElement(By.className("contact-user-avatar")).click();
            driver.findElement(By.linkText("Wyloguj"));
            System.out.println(driver.getTitle());
        }

    }

Usuwanie_wiadomosci.java- trzeci test

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

    public class Usuwanie_wiadomosci {

        public void usuwanie_wiadomosci() {
            System.setProperty("webdriver.chrome.driver", "C:\\Selenium\\chromedriver_win32\\chromedriver.exe");
            WebDriver driver=new ChromeDriver();
            driver.get("https://poczta.interia.pl/");
            driver.findElement(By.className("icon-trash")).click();
            driver.findElement(By.className("notification-list-tem"));
        }

    }
--

}
