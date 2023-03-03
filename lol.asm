push 1
push 2
add
push 14
push 4
add
jb :0
push 0
jmp :1
0:
push 1
1:
out
hlt