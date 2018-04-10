title: 项目介绍
description: 项目介绍
hero: Metadata enables hero teaser texts

# 步入四轴飞行器世界
Author：[myyerrol](https://github.com/myyerrol)(Developer & Co-founder)

## 引入
我记得自己第一次接触四轴飞行器是在大一，有一次我在[TED](https://www.ted.com)上看了由瑞士苏黎世联邦理工大学的 **Raffaello D'Andrea** 教授所做的关于四轴飞行器的演讲，题目是 **The astounding athletic power of quadcopters**，教授边用四轴飞行器进行演示边对其中所用到的数学理论进行讲解，对于当时什么理论都不懂的我来说，最让我感到震撼的是在演示环节，那些四轴飞行器能够在高速移动的时候保证放在其顶部的细棍和酒杯不失去平衡，飞行器可以在桨叶受损的情况下依旧可控，可以通过协作接住由人所抛出的小球并将其击回，可以判断人的手势来做不同的动作等。当时看完这段视频之后我的内心难以平静，脑海里萌生了自制四轴飞行器的想法，但由于后来我加入了舞蹈机器人基地并忙于组内的开发任务，所以这个想法就暂时被搁置了。

![ted_quadcopter_1](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/ted/ted_quadcopter_1.jpg)

![ted_quadcopter_2](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/ted/ted_quadcopter_2.jpg)

一转眼到了大三下学期，我从舞蹈机器人机基地退役。一个偶然的机会，我从[maksyuki](https://github.com/maksyuki)那里得知有一个叫做[Crazyflie](https://www.bitcraze.io)的微型四轴飞行器，这一次我算是打从心底里被震撼到了，以下是几点原因：

- **硬件**

  首先Crazyflie微型四轴飞行器的硬件设计得非常优秀，不管是PCB机械层的轮廓设计、信号层上元器件的布局还是整个电路板的走线都非常合理，而且最重要的是Bitcraze团队将模块化的理念带入到Crazyflie产品的设计之中，这使得Crazyflie微型四轴除了具有基本的飞行功能之外，还可以通过堆叠扩展坞的方式来实现不同功能的扩展。

- **软件**

  Crazyflie微型四轴飞行器的软件开发环境全部基于Linux，并使用开源且强大的软件工具链（比如ARM-GCC，Make、PyQt等）。除此之外，Crazyflie微型四轴飞行器的软件源码还被托管在GitHub上，这使得世界各地的爱好者、研究者对其进行二次开发变得更加容易。

- **文档**

  除了以上两点有关技术层面的优势，Crazyflie微型四轴飞行器项目还有一个最令我无法抗拒的因素——丰富的文档。说实话，我从来没有看到过一家不以盈利为主要目的团队可以将自己的开源项目文档写得如此详细，但是Bitcraze团队做到了，他们这种乐于分享的精神实在是值得我们学习。

  ![crazyflie](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/crazyflie/crazyflie.jpg)

总之，这次在看过Crazyflie微型四轴项目之后，我脑海中有关自制四轴飞行器的想法又被重新唤醒了，于是我和[maksyuki](https://github.com/maksyuki)创建了[MicroDynamics](https://github.com/microdynamics)团队，而Breeze系列微型四轴项目也就因此顺利地诞生了。

## 简介

有人曾经说过：**当你有好的想法时，就要立即去实现它**，特别是如果你从心底里热爱某种事物，你一定会迫不及待地想尽一切办法来完成它，尽管在实现的过程中会遇到很多困难，也会牺牲一些其它的东西，但是当你有朝一日能够看到自己的成果让更多的人受益时，我想没有什么比这更令人快乐的了。我们在组建团队之前也只是两个喜欢在大学里进行DIY的机器人爱好者，但我们希望可以通过自己的双手来为机器人社区做出自己的贡献，哪怕只要很少的一些。

MicroDynamics团队在组建过程中曾在一定程度上受到基地马文科等学长所创建Hands Free项目的影响，有关其项目更详细的介绍，请访问[Hands Free项目官方Wiki](https://github.com/HANDS-FREE/HANDS-FREE.github.io/wiki)。MicroDynamics，顾名思义微型动力，它的名字分别取自Microsoft和BostonDynamics这两家伟大的公司。我们想做的就如同名字所体现的那样——搭建一个小型或微型的开源机器人平台，它要足够的便宜、易于开发并且拥有较强的动力学特性，可以让更多的大学生等机器人爱好者真正地参与到实体机器人的开发过程中来，并从中学到一些有价值的知识。

MicroDynamics团队目前从四轴飞行器平台开始，从底层到顶层搭建一套完整的、面向未来的开源机器人开发框架，以便降低模块之间的耦合性，提高机器人整体开发效率。关于MicroDynamics更多详细的开发资料，请访问[MicroDynamics团队GitHub](https://github.com/microdynamics)（包含开发规范、日志、工程模板）和[MicroDynamics Quadcopter项目GitHub](https://github.com/microdynamics-quadcopter)（包含硬件设计、软件代码）。

## 项目概述

- **内容**

  MicroDynamics Quadcopter项目是一个面向微型四轴飞行器开发和研究的开源软硬件系统。它以硬件电路和嵌入式框架为核心，丰富的软件算法为支撑，可以完成不同的实验任务。除此之外，在硬件上它还预留有一些接口，可以与第三方定制模块进行连接，便于飞行器功能的扩展。未来在软件上它还将支持目前流行的ROS，使得更多的算法可以被应用其中。

- **Breeze四轴飞行器系列**

  Breeze系列四轴飞行器是MicroDynamics Quadcopter项目推出的系列化四轴飞行器，一共有三种系列，主要是面向具有不同需求的开发者和爱好者。这三个系列分别为Breeze Mini、Breeze Air和Breeze Pro。

  - Breeze Mini

    Breeze Mini是低成本、开源的微型四轴飞行器，其硬件设计最开始基于[Openedv](http://www.openedv.com/)上 **tuyafei** 的开源项目[myCrazyflie](http://www.openedv.com/posts/list/40686.htm)。但是在经过我们对原先四轴飞行器打板测试后，在上自行设计了电机座和电池座，将原先的主控STM32F103T6U6换成STM32F103TBU6，实现了原项目没有实现的控制算法和nRF51822蓝牙驱动，并将所有的资料进行开源。这样Breeze Mini也可以看作是对myCrazyfile项目的一次继承，发展。Breeze Mini主要面向于初学者和

  - Breeze Air

  - Breeze Pro

- **理念**

  我们团队的理念是：**开源、探索、创新**。

- **宗旨**

  我们团队的宗旨是：以开源共享为基本准则，做到 **取之开源，回馈开源**；其次要拥有探索未知技术领域的勇气和决心，遇到困难绝不退缩；最后强调技术至上，鼓励在掌握已有知识的基础之上，不断开拓创新，做出属于自己的成果。

## 开源协议

目前MicroDynamics团队的项目文档、开发模板以及Breeze系列微型四轴飞行器的硬件电路设计、嵌入式代码和上层调试软件均遵循 **GPL-3.0许可协议**，使用者可以免费使用和修改代码，但修改和衍生后的代码不允许做为闭源商业软件进行发布和销售。
