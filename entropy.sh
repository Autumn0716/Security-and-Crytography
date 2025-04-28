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
