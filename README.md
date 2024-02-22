# Django sample application

## Setup

The first thing to do is to clone the repository:

```sh
$ git clone https://github.com/Manojkumar1709/Django-Application.git
$ cd Django-Application
```

Then install the dependencies:

```sh
$ pip install -r requirements.txt
```
Once `pip` has finished downloading the dependencies:
```sh
$ cd myapp
$ python manage.py runserver
```
And navigate to `http://127.0.0.1:8000/`.


## Requirement

- Docker

Go into the project directory and run the command:

```
$ docker build -t django-app-image .
$ docker run -d -p 8000:8000 django-app-image
```

Open `http://localhost:8000` and enjoy!










