# Laravel Rsync Deploy

#### Deploy Laravel developed project with Rsync.

### Usage

Example usage to `/.github/workflows/*.yml` file

> Always update the release tag to the latest one while you are using this action for the first time. Otherwise, leave it to the previous release tag to avoid code breaks.

> uses: SHSharkar/Laravel-Rsync-Deploy@v1.x

```
- name: Deploy with Laravel Rsync Deploy
  uses: SHSharkar/Laravel-Rsync-Deploy@v1.7

  env:
    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
    ARGS: "--ignore-times --compress --verbose --exclude=.git --filter=':- .gitignore' --no-perms --no-owner --no-group --recursive"
    REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
    REMOTE_HOST_PORT: ${{ secrets.REMOTE_HOST_PORT }}
    REMOTE_USER: ${{ secrets.REMOTE_USER }}
    TARGET_DIRECTORY: ${{ secrets.TARGET_DIRECTORY }}
```

### Example usage in github workflow

```
name: Laravel Rsync Deploy

on:
  push:
    branches:
      - master

jobs:
  laravel-rsync-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Laravel Rsync Deploy
        uses: SHSharkar/Laravel-Rsync-Deploy@v1.7
        env:
          SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
          ARGS: "--ignore-times --compress --verbose --exclude=.git --filter=':- .gitignore' --no-perms --no-owner --no-group --recursive"
          REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
          REMOTE_HOST_PORT: ${{ secrets.REMOTE_HOST_PORT }}
          REMOTE_USER: ${{ secrets.REMOTE_USER }}
          TARGET_DIRECTORY: ${{ secrets.TARGET_DIRECTORY }}
```
