from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://www.naukri.com/python-jobs?k=python&nignbevent_src=jobsearchDeskGNB').text
soup = BeautifulSoup(html_text, 'lxml')
jobs = soup.find_all('a', class_='comp-name mw-25')
print(jobs)
