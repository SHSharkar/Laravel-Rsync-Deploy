# Laravel Rsync Deploy

Deploy Laravel developed project with Rsync.

example usage:
```
- name: Deploy with Laravel Rsync Deploy
  uses: SHSharkar/Laravel-Rsync-Deploy@v1.1

  env:
    DEPLOY_KEY: ${{ secrets.SERVER_SSH_KEY }}
    ARGS: "--ignore-times --compress --verbose --exclude=.git --filter=':- .gitignore' --no-perms --no-owner --no-group --recursive"
    SERVER_PORT: ${{ secrets.SERVER_PORT }}
    SERVER_IP: ${{ secrets.SERVER_IP }}
    USERNAME: ${{ secrets.USERNAME }}
    SERVER_DESTINATION: ${{ secrets.SERVER_DESTINATION }}
```
