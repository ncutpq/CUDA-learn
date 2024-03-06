// 学习运行时参数的设置：分配1个线程块，3个线程执行核函数，打印3次“hello world from GPU”

#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void fun(void)
{
    printf("hello world from GPU\n");
}

int main()
{
    printf("hello world\n");

    fun << <1, 3 >> > ();
    cudaDeviceSynchronize();
}
