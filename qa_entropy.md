 原始代码如下:
 
 ---
 
 #!/usr/bin/env zsh

read "word_number?请输入字典的总容量(总单词数目):"
read  "pass_bits?请输入选择的密码位数:"
#p=word_number
#t=pass_bits

#初始化
probility=1
entropy=0
#计算可能性
for ((i=1; i<= $pass_bits; i++)); do
    ((probility *= word_number))
done

#计算熵值(使用bc计算)(l()是一个对数函数)
log2(){
    echo "l($1)/l(2)"|bc -l 
}
entropy=$(log2 $probility)
printf "熵值为: %.2f 位\n" $entropy

 
 
 ------------------
 
 
 
 
 
 
 
 
 
  shell 中类似 python 的 input()函数一样的指令是 read 
```shell
read -p "请输入密码:" password
#这里的 p 表示  **指定提示信息**
# -s是**静默**输入(只适合输入密码)
#这里是bash的写法


#如果是zsh,请使用:
read "password?请输入密码:"
```
***shell中的 for循环***
```sh

首先需要先对 result 进行初始化
result =1
for((i=1; i<=n; i++));do
    ((rusult *= i ))
done
#比较通用的写法是:
for((i=1; i<=n; i++));do
     result=$((result * i))
done
#非常要注意这里右括号与 do 之间存在间隔.
```
bc**是一个数学库**
```sh
log2(){
    echo "l($1))/l(2)" |bc -l
}
#这里要注意:log2()虽然是一个函数,但是不是用的 return 返回值.
#另外,l($1)这里的意思是取括号内第一个值的 ln()对数函数值
#第三,bc -l 才表示你可以使用对数运算.
```

**赋值**符号之间不要**存在空格**
`entropy=$(log2 $probility)`
如果存在空格会导致:
`entropy command not found.`这样的异常报错,
这是因为 shell 会把该"entropy"视作一个命令取执行,而不是进行常规的赋值操作.