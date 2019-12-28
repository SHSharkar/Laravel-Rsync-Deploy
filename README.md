# Laravel Rsync Deploy

#### Deploy Laravel developed project with Rsync.

Example usage to `/.github/workflows/*.yml` file

> Always update the release tag to the latest one while you are using this action for the first time. Otherwise, leave it to the previous release tag to avoid code breaks.

`uses: SHSharkar/Laravel-Rsync-Deploy@v1.x`

```
- name: Deploy with Laravel Rsync Deploy
  uses: SHSharkar/Laravel-Rsync-Deploy@v1.3

  env:
    DEPLOY_KEY: ${{ secrets.SERVER_SSH_KEY }}
    ARGS: "--ignore-times --compress --verbose --exclude=.git --filter=':- .gitignore' --no-perms --no-owner --no-group --recursive"
    SERVER_PORT: ${{ secrets.SERVER_PORT }}
    SERVER_IP: ${{ secrets.SERVER_IP }}
    USERNAME: ${{ secrets.USERNAME }}
    SERVER_DESTINATION: ${{ secrets.SERVER_DESTINATION }}
```
