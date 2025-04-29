*这里仅仅使用 shell 指令来完成,是使用终端语言*

```shell

openssl aes-256-cbc -salt -in test.aes.md -out encrypted.md

#-salt 是为了增加一点复杂度.
#这里可能会提示一个警示:
#Verifying - enter AES-256-CBC encryption password:
#*** WARNING : deprecated key derivation used.
#Using -iter or -pbkdf2 would be better.

#此时可以在里面添加-ite 100 表示迭代次数
#pdkdf2(Password-Based Key Derivation Function 2)
#这是一个密钥派生函数算法.作用是多次 hash 迭代以及加盐,使得暴力破解难以完成.

之后会生成一个 encrypt.md 文件.使用 cat 会发现文件内容是杂乱的显示.

openssl aes-256-cbc -d -in encrypted.md -out decrypted.md

#加 d 是表示解密的意思.
**这里还要用到之前相同的密钥.**

之后使用:`cmp test_aes.md decrypted.md'会发先两者是一样的.














```