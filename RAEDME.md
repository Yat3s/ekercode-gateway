# ekercode-gateway

部署 ekercode 的多个服务到远程主机上，并且通过 nginx 来做为多个服务的网关。

## 依赖和准备

部署到远程主机的操作是通过 [ansible][ansible-docs] 来完成的。如果使用的是 Mac 可以通过 Homebrew 来安装：

```bash
brew install ansible
```

[ansible-docs]: https://docs.ansible.com/ansible/latest/index.html

为了确保能够通过连上远程主机，请确保 `~/.ssh/id_rsa_ekercode` 存在，如果已经使用了其他的私钥文件 `~/.ssh/id_rsa_xxx`，可以创建一个 Symbolic Link 来指向它：

```
ln -s ~/.ssh/id_rsa_xxx ~/.ssh/id_rsa_ekercode
```

## 部署

在仓库根目录下运行以下命令：

```bash
chmod +x ./ansible.sh
./ansible.sh
```
