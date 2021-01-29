# neovim-server

```bash
docker run -d \
  --name nvim-server \
  -p 3000:3000 \
  -e TZ=Asia/Shanghai \
  -e USER=<USER> \
  -e SECRET=<PASSWORD> \
  hikariai/neovim-server:latest
```
