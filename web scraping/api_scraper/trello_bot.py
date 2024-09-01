from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
import time
from datetime import date
import os
import json

CHROME_DRIVER_PATH = os.path.join(os.getcwd(), "chromedriver.exe")
if not os.path.isfile(CHROME_DRIVER_PATH):
    raise FileNotFoundError(f"The path is not a valid file: {CHROME_DRIVER_PATH}")

OP = webdriver.ChromeOptions()
OP.add_argument('--headless')
OP.add_argument('--no-sandbox')
OP.add_argument('--disable-dev-shm-usage')
OP.add_argument('--disable-gpu')
OP.add_argument('--window-size=1920,1080')

service = ChromeService(executable_path=CHROME_DRIVER_PATH)
DRIVER = webdriver.Chrome(service=service, options=OP)

def screenshotPage():
    time.sleep(2)
    date_str = date.today().strftime("%m-%d-%Y")
    fpath = os.path.join(os.getcwd(), 'downloads/{}.png'.format(date_str))
    DRIVER.get_screenshot_as_file(fpath)

def addTask():
    time.sleep(2)
    DRIVER.find_element(
        By.XPATH, value="//textarea[@aria-label='To Do']/ancestor::div/descendant::div[@class='card-composer-container js-card-composer-container']/child::a").click()
    task_text_area = DRIVER.find_element(
        By.XPATH, value="//div[@class='card-composer']/descendant::textarea")
    task_text_area.clear()
    task_text_area.send_keys("Bot Added Task")
    DRIVER.find_element(By.XPATH, value="//input[@value='Add card']").click()
    time.sleep(5)

def login():
    with open('config.json') as configFile:
        credentials = json.load(configFile)
        DRIVER.get("https://trello.com")
        try:
            WebDriverWait(DRIVER, 10).until(EC.presence_of_element_located((By.XPATH, "//a[@href='/login']")))
            DRIVER.find_element(By.XPATH, value="//a[@href='/login']").click()
        except TimeoutException:
            print("Login link not found")
            return

        try:
            WebDriverWait(DRIVER, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, "input[name='user']")))
            username = DRIVER.find_element(By.CSS_SELECTOR, value="input[name='user']")
            password = DRIVER.find_element(By.CSS_SELECTOR, value="input[name='password']")
            username.clear()
            password.clear()
            username.send_keys(credentials["USERNAME"])
            password.send_keys(credentials["PASSWORD"])
            DRIVER.find_element(By.CSS_SELECTOR, value="input[type='submit']").click()
        except TimeoutException:
            print("Username or password field not found")
            return

        try:
            WebDriverWait(DRIVER, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, "input[name='password']")))
            password = DRIVER.find_element(By.CSS_SELECTOR, value="input[name='password']")
            password.clear()
            password.send_keys(credentials["PASSWORD"])
            DRIVER.find_element(By.CSS_SELECTOR, value="button[type='submit']").click()
        except TimeoutException:
            print("Password field not found")
            return

def navigateToBoard():
    try:
        WebDriverWait(DRIVER, 10).until(EC.presence_of_element_located((By.XPATH, "//div[@title='Bot Board']/ancestor::a")))
        DRIVER.find_element(By.XPATH, value="//div[@title='Bot Board']/ancestor::a").click()
        time.sleep(5)
    except TimeoutException:
        print("Board not found")
        return

def main():
    try:
        login()
        navigateToBoard()
        addTask()
        screenshotPage()
        input("Bot Operation Completed. Press any key...")
        DRIVER.quit()
    except Exception as e:
        print(e)
        DRIVER.quit()

if __name__ == "__main__":
    main()



