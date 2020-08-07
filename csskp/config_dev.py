ALLOWED_HOSTS = []

SECRET_KEY = "u__*p&-rrjtc4t)d)@5ybj_a#3=491=k6x[k[@ei#h7mb=-21k"

HASH_KEY = b"hDs4HftKsu9OaxI9smHP-TmHv-8r7h-4xaEp0UYhI10-"

DEBUG = True

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": "postgres",
        "USER": "postgres",
        "PASSWORD": "password",
        "HOST": "db",
        "PORT": 5432,
    }
}
