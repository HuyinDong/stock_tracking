import MySQLdb as mysql
import requests
import time
import sys, urllib, urllib2, json

#database connection
connection = mysql.connect(host='localhost',user='root', passwd='1986070@Dong',db='SSTD',charset='utf8')
cursor = connection.cursor()

sh = {}
now = (time.strftime("%Y-%m-%d"))
url = "http://apis.baidu.com/apistore/stockservice/stock?stockid=sh000001&list=1"

try:
    req = urllib2.Request(url)
    req.add_header("apikey", "b667d51ce3512f8f0a86a3dc3d86c579")
    resp = urllib2.urlopen(req)
    content =  json.loads(resp.read())

    data = content["retData"]["stockinfo"][0]
    print data
    sh["open"]=float(data["OpenningPrice"])
    sh["close"]=float(data["currentPrice"])
    sh["high"]=float(data["hPrice"])
    sh["low"]=float(data["lPrice"])
    sh["date"]=str(data["date"])
    sh["rate"]=float(data["increase"])

    print sh

    if sh["date"] == now and sh["open"] != 0:
       print "Good"
       sql = "INSERT INTO `SH`(`Date`, `Open`, `High`, `Low`, `Close`, `Rate`) VALUES ('{}','{}','{}','{}','{}','{}')".format(sh["date"],sh["open"],sh["high"],sh["low"],sh["close"],sh["rate"])
       try:
               cursor.execute(sql)
       except:
               print "Error: unable to write sh data to db"

except:
    print "Error: unable to fecth SH data"


connection.commit()
connection.close()
