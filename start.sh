pip install virtualenv
pip install virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv my-venv
workon my-venv
export FLASK_CONFIG=development
export FLASK_APP=run.py

sudo apt-get install libmysqlclient-dev
pip install -r requirements.txt

rm instance/config.py
touch instance/config.py

echo -n "Run local or production (l/p)?"
read answer
if echo "$answer" | grep -iq "^p" ;then
    echo "SECRET_KEY = 'p9Bv>3Eid9%$s01'" >> instance/config.py
    echo "SQLALCHEMY_DATABASE_URI = 'mysql://gamesApis:!Alessiolorenzo93@gamesApis.mysql.pythonanywhere-services.com/gamesApis$DEV'" >> instance/config.py
else
    echo "SECRET_KEY = 'p9Bv>3Eid9%$s01'" >> instance/config.py
    echo -n "insert MySql username..."
    read username
    echo -n "insert MySql password..."
    read password
    echo -n "insert MySql DB name (should be DEV)..."
    read db

    echo "SQLALCHEMY_DATABASE_URI = 'mysql://"$username":"$password"@localhost/"$db"'" >> instance/config.py
fi