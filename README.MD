# Chirp - a Twitter Clone
This application is heavilly based on 
[the Flask Mega-Tutoria by Miguel Grinberg](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world).

The aim of this application is to support UI Automation testing.

## Run in Development
In order to pain and simple run this application you need to fetch the sources from this directory.

You will need `Python 3.8` or newer installed.

### Install Python Dependencies
```commandline
 pip3 install -r requirements.txt
```

### Prepare Database
For the first time you must run the following command to create an SQLite file.
```commandline
flask db init
```
Then you must run the following two commands to populate the database.
```commandline
flask db migrate
```

```commandline
flask db upgrade
```

### Starting the Application
```commandline
flask run
```

There is no default User registered. You must register you own usesr.