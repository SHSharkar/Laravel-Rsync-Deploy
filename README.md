# Laravel Rsync Deploy

#### Deploy Laravel developed project with Rsync.

### Usage

Example usage to `/.github/workflows/*.yml` file

```
- name: Laravel Rsync Deploy
  uses: SHSharkar/Laravel-Rsync-Deploy@master
  env:
    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
    ARGS: "--ignore-times --compress --verbose --exclude=.git --exclude=.github --exclude=node_modules --no-perms --no-owner --no-group --recursive"
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

      - uses: MilesChou/composer-action/7.3/install@master
      - run: |
          cp .env.example .env
          php artisan key:generate --ansi

      - name: Pull Docker image
        run: |
          docker pull "node:lts-slim"
          npm install && npm run production

      - name: Laravel Rsync Deploy
        uses: SHSharkar/Laravel-Rsync-Deploy@master
        env:
          SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
          ARGS: "--ignore-times --compress --verbose --exclude=.git --exclude=.github --exclude=node_modules --no-perms --no-owner --no-group --recursive"
          REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
          REMOTE_HOST_PORT: ${{ secrets.REMOTE_HOST_PORT }}
          REMOTE_USER: ${{ secrets.REMOTE_USER }}
          TARGET_DIRECTORY: ${{ secrets.TARGET_DIRECTORY }}
```
