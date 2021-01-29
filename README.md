# neovim-server

```bash
docker run -d \
  --name nvim-cloud \
  -p 3000:3000 \
  -e TZ=Asia/Shanghai \
  -e USER=<USER> \
  -e USER=_GROUP=<USER_GROUP> \
  -e SECRET=<PASSWORD> \
  hikariai/neovim-server:latest
```
