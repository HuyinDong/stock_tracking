import MySQLdb as mysql
import requests
import time
import sys, urllib, urllib2, json

#database connection
connection = mysql.connect(host='localhost',user='root', passwd='1986070@Dong',db='SSTD',charset='utf8')
cursor = connection.cursor()

chuangyeban = {}
now = (time.strftime("%Y-%m-%d"))
url = "http://apis.baidu.com/apistore/stockservice/stock?stockid=sz399006&list=1"

try:
    req = urllib2.Request(url)
    req.add_header("apikey", "b667d51ce3512f8f0a86a3dc3d86c579")
    resp = urllib2.urlopen(req)
    content =  json.loads(resp.read())

    data = content["retData"]["stockinfo"][0]
    chuangyeban["open"]=float(data["OpenningPrice"])
    chuangyeban["close"]=float(data["currentPrice"])
    chuangyeban["high"]=float(data["hPrice"])
    chuangyeban["low"]=float(data["lPrice"])
    chuangyeban["date"]=str(data["date"])
    chuangyeban["rate"]=float(data["increase"])

    print chuangyeban

    if chuangyeban["date"] == now and chuangyeban["open"] != 0:
       sql = "INSERT INTO `CYB`(`Date`, `Open`, `High`, `Low`, `Close`, `Rate`) VALUES ('{}','{}','{}','{}','{}','{}')".format(chuangyeban["date"],chuangyeban["open"],chuangyeban["high"],chuangyeban["low"],chuangyeban["close"],chuangyeban["rate"])
       try:
               cursor.execute(sql)
       except:
               print "Error: unable to write cyb data to db"

except:
    print "Error: unable to fecth chuangyeban data"

connection.commit()
connection.close()
