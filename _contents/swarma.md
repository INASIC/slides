---
title: 机器学习和物理学
author: Roger Luo
...


# 从经典到量子


# 经典位移

---

数据：无噪声的理想经典数据
规律：牛顿力学

---

高一物理课本上的实验：打点计时器加速运动／匀速运动

> - 匀速运动：观察到的数据（小孔间距）：0.1，0.2，0.3 ...

---

得知位移满足如下规律：

$$
x = 0.1 * t
$$

---

观测了一系列（匀速运动）纸带实验：

- 0.10001, 0.19999, 0.30100 ...
- 0.20049, 0.30027, 0.39935 ...
- 0.10164, 0.30049, 0.49964 ...
- ...

---

在保证前两位小数正确的情况下得到规律：

$$
x = v * t + c
$$

---

这应该是最简单的物理学模型了


# 房价预测

---

如果你上了吴恩达在Coursera上的机器学习课程，那么也许这是你遇到的第一个例子

| 月份 | 价格（每平方米） |
|------|------------------|
|    1 |           125025 |
|    2 |           126010 |
|    3 |           127084 |
|    4 |           128100 |
|    5 |           129092 |

某地房价（参考了下徐汇的）

---

那么这门课教你的第一个方法也许就是线性回归了

$$
\text{price} = \theta_1\cdot \text{month} + \theta_2
$$

---

对于我们这个地方的房价拟合结果其实还不错

$$
\text{price} = 1000 \cdot \text{month} + 124000
$$

之前月份的前三个数字基本上都是对的

---

这应该是最简单的机器学习模型之一了，在被称为线性回归


# 统计位移（概率分布）

---

但是真实的世界其实是有很多噪声的，使用牛顿的方法可以很好的描述那些体型巨大的物体，可是如果用来描述稍微小一些的颗粒，就不那么容易了。

---

比如这样一个其实你站远了看起来不动的颗粒，但是仔细地去测量一下，其实它有在动

| time (ms) | position (mm) |
|-----------|---------------|
| 1         | -1.32         |
| 2         | -0.19         |
| 3         | 2.54          |
| ...       | ...           |
| 1000      | 0.28          |

可是这种运动看起来毫无规律

---

但是我们将这些数据统计在以0.1mm为间隔的区间里，就会发现是这样一张图

![](../img/brownian.png)

---

也就是说虽然具体的位移看起来杂乱无章，但是每次位移的分布是有规律的，这就是最简单的布朗运动。我们使用所谓的高斯分布或者说正态分布来描述它。

---

这是最简单的统计物理方法


