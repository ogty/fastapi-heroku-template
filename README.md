# Template for Deploying FastAPI to Heroku

## Table of Contents

- [Directory Structure](https://github.com/ogty/fastapi-deploying-heroku-template#Directory-Structure)
- [Install Packages](https://github.com/ogty/fastapi-deploying-heroku-template#Install-Packages)
- [Run](https://github.com/ogty/fastapi-deploying-heroku-template#Run)
- [Heroku Deploy](https://github.com/ogty/fastapi-deploying-heroku-template#)
    - [Install Homebrew](https://github.com/ogty/fastapi-deploying-heroku-template#Install-Homebrew)
    - [Install Heroku CLI](https://github.com/ogty/fastapi-deploying-heroku-template#Install-Heroku-CLI)
    - [Login](https://github.com/ogty/fastapi-deploying-heroku-template#Login)
    - [Create Heroku Application](https://github.com/ogty/fastapi-deploying-heroku-template#Create-Heroku-Application)
    - [Using Make Comamnd](https://github.com/ogty/fastapi-deploying-heroku-template#Using-Make-Command)
- [Using Environmental Variables](https://github.com/ogty/fastapi-deploying-heroku-template#Using Environmental-Variables)
    - [Create `.env` File](https://github.com/ogty/fastapi-deploying-heroku-template#Create-env-File)
    - [Install Package](https://github.com/ogty/fastapi-deploying-heroku-template#Install-Package)
    - [Editing File](https://github.com/ogty/fastapi-deploying-heroku-template#Editing-File)

## Directory Structure

```
.
├── Procfile
├── README.md
├── main.py
├── requirements.txt
└── runtime.txt
```

## Install Packages

```zsh
$ pip3 install -r requirements.txt
```

## Run

```zsh
$ uvicorn main:app --reload
```

---

## Heroku Deploy

### Install Homebrew

```zsh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Heroku CLI

Create a [Heroku](https://www.heroku.com/) account

```zsh
$ brew tap heroku/brew && brew install heroku
```

### Login

```
$ heroku login
```

### Create Heroku Application

```zsh
$ heroku create <app-name>
```

### Create Repository

```zsh
$ git init
```

### Commit to Heroku Application

```zsh
$ git add .
$ git commit -m "<commit-message>"
$ heroku git:remote -a <app-name>
$ git push heroku master
```

### Using Make Command

Before use, enter the application name created with the `heroku create` command in the `app_name` variable.

```zsh
$ make
```

Commit messages can be used by doing the following

```zsh
$ make message="first commit" # or make commit
```

---

## Using Environmental Variables

### Create `.env` File

```.env
VARIABLE_NAME=***************
```

### Install Package

```zsh
$ pip3 install python-dotenv
```

### Editing File

```python
import os


from dotenv import load_dotenv


load_dotenv()

VARIABLE_NAME = os.getenv("VARIABLE_NAME")

# ...
```
