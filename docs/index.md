title: 项目介绍
description: 项目介绍
hero: Breeze系列四轴飞行器项目

## 概述

**MicroDynamics Quadcopter** 是一个面向微型四轴飞行器开发和研究的开源软硬件项目。它以硬件电路和嵌入式框架为核心，丰富的软件算法为支撑，可以完成不同的实验任务。除此之外，在硬件上它还预留有一些接口，可以与第三方定制模块进行连接，便于飞行器功能的扩展。未来在软件上它还将支持目前流行的ROS，使得其成为做控制算法研究和应用的最佳平台。

### Breeze系列四轴

Breeze系列四轴飞行器是 **MicroDynamics Quadcopter** 项目推出的系列化四轴飞行器，一共有三种系列，主要是面向具有不同需求的爱好者、开发者和研究者。这三个系列分别为Breeze Mini、Breeze Air和Breeze Pro。

* **Breeze Mini**

    **Breeze Mini** 是低成本、开源的微型四轴飞行器，其硬件设计最开始基于[Openedv](http://www.openedv.com/)上 **tuyafei** 的开源项目[myCrazyflie](http://www.openedv.com/posts/list/40686.htm)。但是在经过我们对原先四轴飞行器的打板测试后，发现了一些值得改进的地方，比如我们基于PCB自行设计了电机座和电池座的机械结构，由于原先主控STM32F103T6U6的FLASH只有32KB，不够实现完整的飞控算法，所以这里将其换成FLASH有128KB的STM32F103TBU6并重新进行PCB布线，实现了原项目没有实现的控制算法和nRF51822蓝牙驱动，最后将所有的资料进行开源。所以Breeze Mini也可以看作是对myCrazyfile项目的一次继承，发展。Breeze Mini主要面向于初次接触四轴飞行器开发的用户。现在Breeze Mini系列的最新产品型号是 **Breeze Mini 1**。之后的产品会在电源管理、电机和天线抗干扰部分进行改进。

* **Breeze Air**
    
    **Breeze Air** 是一款具备空间自主定位和导航功能的微型四轴飞行器，其主控具有浮点数运算等DSP功能，支持复杂，大运算量的飞控算法设置，其还支持GPS/BDS定位，搭载的两个CMOS摄像头可分别用于光流定位和视觉环境感知，其还支持GPRS/WIFI/BLE/USART等多种通信方式。

* **Breeze Pro**

    **Breeze Pro** 是一款具有实时图像处理功能的微型四轴飞行器。其除了具有 **Breeze Air** 所具有的全部功能外，还能室内的完全自主导航，是Breeze系列产品中功能最强大的一款，其主要面向于实验室进行多目标跟踪、视觉SLAM、自主视觉导航、计算成像、机器人未知环境探测、视觉感知、群体智能的研究。

### Breeze系列扩展模块


* **breezeduino**

    **breezeduino** 是一款基于Arduino进行二次开发的开源开发板，可用于简单机器人控制，实现DIY

* **breezeESC**

    **breezeESC** 是一款开源5A/6A无刷直流电机调速控制器，其相关硬件设计被用于 **Breeze Air** 的电机控制上。

* **breezeVOICE**
  
    **breezeVOICE** 是一款开源语音识别和交互的开发板，支持多种在线语音识别服务，其相关硬件设计将被用于实现 **Breeze Pro** 的人机交互。

* **breezeFLOW**

    **breezeFLOW** 是一款开源的光流传感器模块，其相关硬件设计将被用于 **Breeze Air** 的空间定位上。

* **breezeVO**

    **breezeVO** 是一款开源的双目视觉里程计，其相关硬件设计将被用于 **Breeze Pro** 的空间定位和视觉SLAM上。

## 项目发起简介

记得自己第一次接触四轴飞行器还是大一的时候，有一次我偶然间在[TED](https://www.ted.com)上看到了由瑞士苏黎世联邦理工大学的 **Raffaello D'Andrea** 教授所做的关于四轴飞行器的演讲，题目是 ***The astounding athletic power of quadcopters***，教授边用四轴飞行器进行演示边对其中所用到的数学理论进行讲解，教授在演示过程中一会儿让四轴飞行器保持平衡来稳定住放在其顶部的细棍和酒杯，一会儿又亲自剪短飞行器的桨叶，将受损的飞行器抛飞，一会儿又让四轴飞行器接住并击回由人抛出的小球，当时看完这段视频之后我的内心久久难以平静，像是看到了一场精彩绝伦的表演。于是脑海里便开始萌生设计并制作四轴飞行器的想法。

![ted_quadcopter_1](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/ted/ted_quadcopter_1.jpg)

![ted_quadcopter_2](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/ted/ted_quadcopter_2.jpg)

一转眼到了大三下学期，我从舞蹈机器人机基地正式退役。一个偶然的机会，我从[maksyuki](https://github.com/maksyuki)那里得知有一个叫做[Crazyflie](https://www.bitcraze.io)的微型四轴飞行器项目，这一次我算是打从心底被震撼到了，以下是几点原因：

* **硬件**

    首先Crazyflie微型四轴飞行器的硬件设计得非常优秀，不管是PCB机械层的轮廓设计、信号层上元器件的布局还是整个电路板的走线都非常合理，而且最重要的是Bitcraze团队将模块化的理念带入到Crazyflie的产品设计之中，这使得Crazyflie微型四轴除了具有基本的飞行功能之外，还可以通过堆叠扩展坞的方式来实现功能的扩展。

* **软件**

    Crazyflie微型四轴飞行器的软件开发环境全部基于Linux，并使用开源且强大的软件工具链(ARM-GCC，Make、PyQt等)。除此之外，Crazyflie微型四轴飞行器的软件源码还被托管在GitHub上，这使得全世界的爱好者、研究者可以更加容易地对其进行二次开发。

* **文档**

    除了以上两点有关技术层面的优势，Crazyflie微型四轴飞行器项目还有一个最令我无法抗拒的因素——丰富的文档。说实话，我以前从没有看到过一个开源团队可以向Bitcraze团队这样将自己的开源项目文档写得如此详细，他们这种乐于分享的精神实在是值得我们学习。

    ![crazyflie](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/crazyflie/crazyflie.jpg)

总之，这次在看过Crazyflie微型四轴项目之后，我脑海中有关设计四轴飞行器的想法又被重新唤醒了，于是我和[maksyuki](https://github.com/maksyuki)创建了[MicroDynamics](https://github.com/microdynamics)团队，而Breeze系列微型四轴飞行器项目也就因此顺利地诞生了。

在具体进行四轴飞行器开发过程中，我们经过多次讨论最终决定设计3款具有不同功能的四轴飞行器，做出这个决定是考虑到Breeze系列四轴飞行器 **并不是消费级产品，而是面向开发者和实验室的一款偏小众，可二次开发的产品**，为了能够满足开发者的不同需求，需要做到功能分层设计。

## 团队成立简介

有人曾经说过：**当你有好的想法时，就要立即去实现它**，特别如果你是从心底里热爱某个事物，那么你一定会想尽一切办法来完成它，尽管在实现的过程中会遇到各种各样的问题和困难，会牺牲掉一些东西，但是有朝一日当看到自己的项目能够让更多的人受益时，我想没有什么比这更令人快乐和自豪的了。其实我们在组建团队之前也只是两个在大学里喜欢DIY的机器人爱好者，但我们希望能够通过自己的双手来为机器人社区做出一些自己的贡献，哪怕只是很少的一点。

MicroDynamics团队的组建也是受到了基地马文科等学长所创建的 **Hands Free** 项目的影响，有关 **Hands Free** 更详细的介绍，请访问[Hands Free项目官方Wiki](https://github.com/HANDS-FREE/HANDS-FREE.github.io/wiki)。MicroDynamics，顾名思义微型动力，它的名字分别取自 **Microsoft** 和 **BostonDynamics** 这两家伟大的公司。我们想做的就如同名字所体现的那样——搭建一个小型或微型的开源机器人平台，它要足够的便宜、易于开发并且拥有较强的动力学特性，可以让更多的大学生等机器人爱好者真正地参与到实体机器人的开发过程中来，并能够从中学习到一些有价值的知识。

MicroDynamics团队目前从四轴飞行器平台开始，从底层到顶层搭建一套完整的、面向未来的开源机器人开发框架，以便降低模块之间的耦合性，提高机器人整体开发效率。关于MicroDynamics更多、更详细的资料，请访问[MicroDynamics团队GitHub](https://github.com/microdynamics)（包含开发规范、日志、工程模板）和[MicroDynamics Quadcopter项目GitHub](https://github.com/microdynamics-quadcopter)（包含硬件设计、软件代码）。

## 团队理念

我们团队的理念是：**开源、探索、创新**。

## 团队宗旨

我们团队的宗旨是：以开源共享为基本准则，做到 **取之开源，回馈开源**；其次要拥有探索未知技术领域的勇气和决心，遇到困难绝不退缩；最后强调技术至上，鼓励在掌握已有知识的基础之上，不断开拓创新，做出属于自己的成果。

## 开源协议

目前MicroDynamics团队的项目文档、开发模板以及Breeze系列微型四轴飞行器的硬件电路设计、嵌入式代码和上层调试软件均遵循 **GNU GPLv3.0许可协议**，使用者可以免费使用和修改代码，但修改和衍生后的代码必须以同样的许可协议进行再发布。
