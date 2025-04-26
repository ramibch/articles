## Reset migrations in a Django project

Have you ever find yourself editing or commenting lines of code from migrations files because some fields or models to do not exits anymore in your codebase? If the answer is yes, reseting migrations may be a (dangerous?) solution for you.

This aproach envolves removing all the migration files you have and removing the records from your table ´django_migrations´. So that maybe dangerous because you loose your migrations history and there are some side-effects. But I applied in one of my projects and it worked!

> Note: I do not recommend to use this directly in production. Test it first, check that it works and it is what you expected. Afterwards, if you feel confident, apply it in production.

Here are the steps:

1. First of all, remove all your migrations files.

```bash
rm -r app1/migrations/*.py app2/migrations/*.py
```

2. Now create the migrations again. 

```bash
python manage.py makemigrations app1 app2
```

3. Remove the records from `django_migrations`


```bash
python manage.py dbshell
```

```bash
my_db=> delete from django_migrations;
```

This will remove all the migration history in the database.

4. Now migrate with the `--fake` option

```bash
python manage.py migrate --fake
```

This will create the records in `django_migrations` even if the migrations were not applied (becase tables, index and constrains, etc.? already exist.)