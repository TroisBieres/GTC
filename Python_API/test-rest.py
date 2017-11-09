from flask import Flask, jsonify
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'testuser'
app.config['MYSQL_DATABASE_DB'] = 'GestionTableConv'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

mysql.init_app(app)

@app.route('/api/AllPlays')
def getAllPlays():
    cur = mysql.connect().cursor()
    cur.execute('''select Dis_Schedule, Dis_NoPlayer, Dis_TableNumber,
    Sce_AgeRestriction, Sce_NoPlayerMax, Sce_NoPlayerMin,
    Sys_Description, Sys_Name
    from GestionTableConv.T_Scenario NATURAL JOIN
    GestionTableConv.T_Disponibilite NATURAL JOIN GestionTableConv.T_Systeme''')
#    cur.execute('''select * from GestionTableConv.'''+table)
    r = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    return jsonify(r)

if __name__ == '__main__':
    app.run()
