from flask import Flask, jsonify
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'testuser'
app.config['MYSQL_DATABASE_PASSWORD'] = 'testuser'
app.config['MYSQL_DATABASE_DB'] = 'GestionTableConv'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

mysql.init_app(app)

@app.route('/api/<table>s')
def getTable(table):
    print(table)
    cur = mysql.connect().cursor()
    cur.execute('''select * from GestionTableConv.'''+table)
    r = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    return jsonify(r)

if __name__ == '__main__':
    app.run()
