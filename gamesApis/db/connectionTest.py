'''
Created on 26 set 2018

@author: alessio
'''

import pymysql

db = pymysql.connect(host="127.0.0.1",
    user="root",
    passwd="123456",
    db="gamesApisDB"
    )

cursor = db.cursor()
cursor.execute("select * from users")
rows = cursor.fetchall()

for row in rows:
    print(row)

db.close()