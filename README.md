# Drupal Iberia 2026 fork of DrupalCamp Spain Base
- https://github.com/AsociacionDrupalES/DrupalCampSpainBase

## Initial setup

Get a copy of the database and files (available on the assets folder)

```shell
# Get started.
ddev start
ddev composer install

# Import the DB:
ddev import-db --file=database-file.sql.gz

# No database, no problem (WIP):
# ddev drush -y site:install --existing-config -v

# Run possible pending updates and import the configuration from code.
ddev drush deploy

# Access to the site
ddev drush uli

# Bring images from the production site.
ddev drush -y en stage_file_proxy
```

## Translations

If the folder `web/sites/default/files/translations` is not created,
then run the command:
```
mkdir web/sites/default/files/translations
```

## How to contribute

 - Git workflow information: https://docs.github.com/en/get-started/using-github/github-flow
 - Development branch: ```dev```
 - Production branch: ```main```

### Branches

- `main` is the source of truth, the branch with the production code, always.
