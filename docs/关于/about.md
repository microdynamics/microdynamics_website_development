title: 2. 功能测试
description: 功能测试
hero: Metadata enables hero teaser texts
path: path/to/file
source: file.js


# Welcome to Mk

For full documentation visit [mkdocs.org](http://mkdocs.org).

## 标题

### 第三级

#### 第四级

##### 第五级

###### 第六级

## 小标题 <small>with secondary text</small>

### The 3rd level <small>with secondary text</small>

#### The 4th level <small>with secondary text</small>

##### The 5th level <small>with secondary text</small>

###### The 6th level <small>with secondary text</small>


## 引入
> 我记得自己第一次接触四轴飞行器是在大一，有一次我在[TED](https://www.ted.com)上看了由瑞士苏黎世联邦理工大学的Raffaello D'Andrea教授所做的关于四轴飞行器的演讲，题目是**"The astounding athletic power of quadcopters"**，教授边用四轴飞行器进行演示并对其中所用到的数学理论进行讲解，对于当时什么理论都不懂的我来说，最令我惊讶的是在演示环节，那些四轴飞行器能够在高速移动的时候保证放在其顶部的细棍和酒杯不失去平衡，可以在桨叶受损的情况下依然可控，可以通过协作接住由人所抛出的小球并将其击回，可以判断人的手势来做不同的动作等。当时看完这段视频之后我的内心难以平静，脑海里萌生了自制四轴飞行器的想法，但由于后来我加入了舞蹈机器人基地并忙于组内的开发任务，所以这个想法就暂时被搁置了。


## 代码

###行内代码
Morbi eget `test`. Vivamus *`venenatis porttitor`* tortor sit amet
rutrum. Class aptent taciti sociosqu ad litora torquent per conubia nostra,
per inceptos himenaeos. [`Pellentesque aliquet quam enim`](/), eu volutpat urna
rutrum a.

Nam vehicula nunc `:::js return target` mauris, a ultricies libero efficitur
sed. Sed molestie imperdiet consectetur. Vivamus a pharetra leo. Pellentesque
eget ornare tellus, ut gravida mi. Fusce vel lacinia lacus.

``` python
import tensorflow as tf
```

``` python hl_lines="3 4"
""" Bubble sort """
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```

## Latex公式
$\phi$，Lorem ipsum dolor sit amet: $p(x|y) = \frac{p(y|x)p(x)}{p(y)}$
$$
\frac{n!}{k!(n-k)!} = \binom{n}{k}
$$

## 文字标注优化
^^inserted text^^
==test==
~~test~~

## 脚注
Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2]

[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

## 插入链接和图片
[maksyuki](http://maksyuki.com)

<!-- ![matlab](/images/MPU6050_RawAccData.png)
 -->
![matlab](https://microdynamics-1256406063.cos.ap-shanghai.myqcloud.com/MPU6050_RawAccData.png)
![matlab](http://p6lr5abit.bkt.clouddn.com/MPU6050_RawAccData.png)

![GitHub Logo](https://images2015.cnblogs.com/blog/1049916/201702/1049916-20170204184600558-1931830660.jpg "Octocat.jpg")  

![GitHub Logo](https://images2015.cnblogs.com/blog/1049916/201702/1049916-20170204185413058-441308453.gif "Octocat.gif")  

## 垂直线
***

## 表格
| Sollicitudo / Pellentesi | consectetur | adipiscing | elit    | arcu | sed |
| ------------------------ | ----------- | ---------- | ------- | ---- | --- |
| Vivamus a pharetra       | yes         | yes        | yes     | yes  | yes |
| Ornare viverra ex        | yes         | yes        | yes     | yes  | yes |
| Mauris a ullamcorper     | yes         | yes        | partial | yes  | yes |
| Nullam urna elit         | yes         | yes        | yes     | yes  | yes |
| Malesuada eget finibus   | yes         | yes        | yes     | yes  | yes |
| Ullamcorper              | yes         | yes        | yes     | yes  | yes |
| Vestibulum sodales       | yes         | -          | yes     | -    | yes |
| Pulvinar nisl            | yes         | yes        | yes     | -    | -   |
| Pharetra aliquet est     | yes         | yes        | yes     | yes  | yes |
| Sed suscipit             | yes         | yes        | yes     | yes  | yes |
| Orci non pretium         | yes         | partial    | -       | -    | -   |

## 列表
### 无序列表
* 测试a

    * 测试a
    * 测试b
    * 测试c

* 测试a

* Nulla et rhoncus turpis. Mauris ultricies elementum leo. Duis efficitur
  accumsan nibh eu mattis. Vivamus tempus velit eros, porttitor placerat nibh
  lacinia sed. Aenean in finibus diam.


### 有序列表
1. 测试a

2. 测试b

    1. 测试a

        1. 测试a
        2. 测试b
        3. 测试c

    2. Morbi eget dapibus felis. Vivamus venenatis porttitor tortor sit amet
      rutrum. Pellentesque aliquet quam enim, eu volutpat urna rutrum a. Sed
      aliquet, neque at rutrum mollis, neque nisi tincidunt nibh.


### 定义列表

Lorem ipsum dolor sit amet

:   Sed sagittis eleifend rutrum. Donec vitae suscipit est. Nullam tempus
    tellus non sem sollicitudin, quis rutrum leo facilisis. Nulla tempor
    lobortis orci, at elementum urna sodales vitae. In in vehicula nulla.

    Duis mollis est eget nibh volutpat, fermentum aliquet dui mollis.
    Nam vulputate tincidunt fringilla.
    Nullam dignissim ultrices urna non auctor.

Cras arcu libero

:   Aliquam metus eros, pretium sed nulla venenatis, faucibus auctor ex. Proin
    ut eros sed sapien ullamcorper consequat. Nunc ligula ante, fringilla at
    aliquam ac, aliquet sed mauris.

### 任务列表
* [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
* [x] Nulla lobortis egestas semper
* [x] Curabitur elit nibh, euismod et ullamcorper at, iaculis feugiat est
* [ ] Vestibulum convallis sit amet nisi a tincidunt
    * [x] In hac habitasse platea dictumst
    * [x] In scelerisque nibh non dolor mollis congue sed et metus
    * [x] Sed egestas felis quis elit dapibus, ac aliquet turpis mattis
    * [ ] Praesent sed risus massa
* [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque
* [ ] Nulla vel eros venenatis, imperdiet enim id, faucibus nisi


## 引入+代码块

> Vestibulum vitae orci quis ante viverra ultricies ut eget turpis. Sed eu
  lectus dapibus, eleifend nulla varius, lobortis turpis. In ac hendrerit nisl,
  sit amet laoreet nibh.
  ``` js hl_lines="8"
  var _extends = function(target) {
    for (var i = 1; i < arguments.length; i++) {
      var source = arguments[i];
      for (var key in source) {
        target[key] = source[key];
      }
    }
    return target;
  };
  ```

  > > Praesent at `:::js return target`, sodales nibh vel, tempor felis. Fusce
      vel lacinia lacus. Suspendisse rhoncus nunc non nisi iaculis ultrices.
      Donec consectetur mauris non neque imperdiet, eget volutpat libero.


## 提示块

!!! note
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! note "Phasellus posuere in sem ut cursus"
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! note ""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

??? note "Phasellus posuere in sem ut cursus"
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! abstract
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! info
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! tip
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! success
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! question
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! warning
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! failure
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! danger
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! bug
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! example
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! quote
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
                                                
## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs help` - Print this help message.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
