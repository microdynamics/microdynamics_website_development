title: "About"
layout: "page"
---

sdflasdjflasdjfa;lsdjf;l
$\varphi$
$A_3^4$

 行内公式1：数学公式为：$\Gamma(n) = (n-1)!\quad\forall n\in\mathbb N$
- 行内公式2：$F(x,y) = F_{X}(x)F_{Y}(y)$ 
- 块级公式：$$	x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a} $$
- 极限公式1：$\lim\limits_{n \rightarrow +\infty} P\lbrace\frac{\sum\limits_{i=1}{n}Xi - n\cdot EX}{ \sqrt{n \cdot DX} }  \leqslant x\rbrace = \Phi(x)$
- 极限公式2：$\lim\limits_{x \to 2}{\frac{x-2}{x-2}}$


  ```c
void MPU6050_RawDataOutput(void)
{
    u8 i;
    s16 main_acc_adc[3];
    s16 main_gyr_adc[3];
    float main_acc_raw[3];
    float main_gyr_raw[3];
    
     while (1) // Software Calc
    {
        MPU6050_ReadAcc(main_acc_adc);
        MPU6050_ReadGyr(main_gyr_adc);
        for (i = 0; i < 3; i++)
        {
            main_acc_raw[i] = (float) main_acc_adc[i] * IMU_ACC_SCALE *
                IMU_CONSTANTS_ONE_G;
            main_gyr_raw[i] = (float) main_gyr_adc[i] * IMU_GYR_SCALE *
                M_PI / 180.0F;
//            printf("acc_adc: %.8f gyro_adc: %.8f\r\n",
//            main_acc_adc[i], main_gyro_adc[i]);
//            printf("acc_raw: %.8f gyro_raw: %.8f\r\n",
//            main_acc_raw[i], main_gyr_raw[i]);
        }

        printf("%.8f %.8f %.8f %.8f\r\n", Delay_GetRuntimeMs() / 1000.0F,
                      main_gyr_raw[0], main_gyr_raw[1], main_gyr_raw[2]);
    }
}
  ```

  考虑到MPU6050的ADC建立稳定的采样需要时间，所以这里只截取使用3.86s~7.79s共616组数据，最后调用Matlab绘图得到原始姿态角数据随时间变化的曲线。源代码和测试数据可以从[breeze_experimental_research](https://github.com/microdynamics-quadcopter/breeze_experimental_research)中获得，文件名为`MPU6050_RawDataOutput.m`和`MPU6050_RawGyroData.txt`，以下是Matlab绘图程序：

  ```matlab
clear all;
clc;

data2=load('./MPU6050_RawGyroData.txt'); 
x=data2(:,1);
y1=data2(:,2);
y2=data2(:,3);
y3=data2(:,4);

subplot(3, 1, 1);
plot(x,y1);
xlabel('t/s');
ylabel('Amplitude/LSB');
title('GYRO X Axis');

subplot(3, 1, 2);
plot(x,y2);

xlabel('t/s');
ylabel('Amplitude/LSB');
title('GYRO Y Axis');

subplot(3, 1, 3);
plot(x,y3);

xlabel('t/s');
ylabel('Amplitude/LSB');
title('GYRO Z Axis');
  ```