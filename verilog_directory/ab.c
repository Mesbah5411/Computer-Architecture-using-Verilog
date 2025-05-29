#include<stdio.h>
#include<unistd.h>
int main()
{
    int a = 100;
    print("%d", a++);
    int id1 = fork();
    int id2 = fork();
    int id3 = fork();
    print("%d", a);
    return 0;
}