import MySQLdb as mysql
import requests
import time

#database connection
connection = mysql.connect(host='localhost',user='root', passwd='@llW1nW1n',db='SSTD',charset='utf8')
cursor = connection.cursor()

# sql
sql = "select * from Stack_Pool"

stock = {}

try:
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
      id = row[0]
      code = row[1]
      stock["code"] = str(code)

      if code[0] == "6":
        code = "sh"+code
      else:
        code = "sz"+code

      url = "http://hq.sinajs.cn/list="+code
      now = (time.strftime("%Y-%m-%d"))
      print now
      res = requests.get(url)
      stock["id"] = int(id)
      stock["open"] = float(res.text.split(",")[1])
      stock["close"] = float(res.text.split(",")[3])
      stock["high"] = float(res.text.split(",")[4])
      stock["low"] = float(res.text.split(",")[5])
      stock["date"] =  str(res.text.split(",")[30])
      stock["rate"] = round((float(res.text.split(",")[3])-float(res.text.split(",")[2]))/float(res.text.split(",")[2])*100,2)
      print stock["date"]==now

      if stock["date"]==now and stock["open"] != 0:
        sql = "INSERT INTO `Detail`(`ID`,`code`,`After_Date`, `Open`, `High`, `Low`, `Close`, `Rate`) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}')".format(stock['id'],stock['code'],stock["date"],stock["open"],stock["high"],stock["low"],stock["close"],stock["rate"])
        try:
                cursor.execute(sql)

                count = "SELECT COUNT(ID) FROM Detail where ID = "+ str(stock["id"])
                cursor.execute(count)
                num = cursor.fetchone()

                if num[0] > 5 :
                    print "good"
                    try:

                        move = "INSERT INTO History SELECT * FROM Stack_Pool WHERE ID = {}; ".format(stock['id'])
                        move2 = "DELETE FROM Stack_Pool WHERE ID = {};".format(stock['id'])

                        cursor.execute(move)
                        cursor.execute(move2)

                    except:
                        print "Error: unable to fecth data2"

        except:
              print "Error: unable to fecth data1"

except:

   print "Error: unable to fecth data"


connection.commit()
connection.close()
