Cập nhật hệ thống

```sh
sudo apt update
sudo apt upgrade
```

Tải gói Node.js

```sh
wget https://nodejs.org/dist/v20.16.0/node-v20.16.0-linux-x64.tar.xz
```

Giải nén và cài đặt

```sh
tar -xf node-v20.16.0-linux-x64.tar.xz
sudo mv node-v20.16.0-linux-x64 /usr/local/node-v20.16.0
```

Thêm Node.js vào PATH
Mở file `~/.bashrc` hoặc `~/.zshrc` và thêm dòng sau:

```sh
export PATH=/usr/local/node-v20.16.0/bin:$PATH
```

Sau đó, chạy lệnh sau để áp dụng thay đổi:

```sh
source ~/.bashrc
```

### 3. Kiểm tra phiên bản Node.js và npm

Sau khi cài đặt, bạn có thể kiểm tra phiên bản Node.js và npm bằng cách chạy:

```sh
node -v
npm -v
```

<!-- nest -->

npm i -g @nestjs/cli

<!--  -->
<!-- nest new      tct-demo	 -->
<!-- nest new   api-gateway -->

nest new invoice-service  
nest new report-service  
nest new user-service
