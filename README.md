# Security-and-Cryptography
本人学习[2020 年 missing-semester](https://missing.csail.mit.edu/2020/)所做的一些作业题目,

(**这里是第九章**)
参考链接:[Security and Cryptography](https://missing.csail.mit.edu/2020/security/)

也方便自己进行查阅,时刻温习学过的知识,并且逐渐修正自己在编程 shell,python 等程序时存在的思路优化和语法错误等等.


## Exercises 
1.Entropy.  熵。
Suppose a password is chosen as a concatenation of four lower-case dictionary words, where each word is selected uniformly at random from a dictionary of size 100,000. An example of such a password is correcthorsebatterystaple. How many bits of entropy does this have?
假设选择密码作为 4 个小写字母的串联 字典单词，其中每个单词都是从 大小为 100,000 的词典。此类密码的一个示例是 correcthorsebatterystaple.这有多少位熵？

- **EX1解决办法**:
首先,这道题目本身只是对***密码学位熵***这一概念进行的考察.本身难度不高.但是由于翻译问题其实并不知道是否需要考虑 **字母大写** 的问题.故暂时不考虑        
    数学办法比较直接:100000^4,
    下面说一种SH 程序,能够在终端交互式解答该问题:
    详情关注:[entropy.sh脚本](./entropy.sh)
- 编辑 entropy.sh 文件时遇到的一些问题:
参考:[qa_entropy.md 文件](qa_entropy.md)
        
2.Consider an alternative scheme where a password is chosen as a sequence of 8 random alphanumeric characters (including both lower-case and upper-case letters). An example is rg8Ql34g. How many bits of entropy does this have?
考虑另一种方案，其中密码被选为 8 个随机字母数字字符的序列（包括小写字母和大写字母）。一个例子是 rg8Ql34g。这有多少位熵

- **EX2解决办法**:

