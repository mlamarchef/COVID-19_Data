from datetime import date
import requests


def download():
    filename = today.strftime("%m-%d-%Y") + ".csv" 
    url = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/" + filename
    
    if requests.status_codes == 200:
        print("File downloaded : " + filename)
        downloaded_obj = requests.get(url)
        with open(filename, "wb") as file:
            file.write(downloaded_obj.content)
    else:
        print("404 not found : " + filename)
          


def OlderFiles():
    for filename in ["03-21-2020.csv","03-22-2020.csv","03-23-2020.csv","03-24-2020.csv"]:
            url = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/" + filename
            request = requests.get(url)
            if request.status_code == 200:
                print("File downloaded : " + filename)
                downloaded_obj = requests.get(url)
                with open(filename, "wb") as file:
                    file.write(downloaded_obj.content)
            else:
                print("File not found - 404 : " + filename)
            
OlderFiles()           





       
        



    






    