# SXFiveScoreShow
实现类似于实况足球里球员五项能力值展示的五边形。



这个程序是关于绘制图表的。传入五个参数值0~5.0，会根据比例计算并绘制出五边形的效果图，并且可以提供一个比较值绘制出另一个效果图（绿色图）与自己的分数比较，也设置了动画扩张效果，视觉效果更好。用户可以自定义的地方很多，现已提供三种维度，根据你想传几个值来判断画三角形，四边形还是五边形。

![image](https://github.com/dsxNiubility/SXFiveScoreShow/raw/master/screenshots/five1.png)

首页的demo示例程序，自己搭建了一个较为完整的示例，一般引用了本第三方库最终大致可以弄成这样。
三种维度

![image](https://github.com/dsxNiubility/SXFiveScoreShow/raw/master/screenshots/five2.png)

示例程序中是，第一个页面给五个维度的分数，和五个维度的对比分数都传了值，维度五就是用这传进来的值绘制的（传入的是一个数组）。然后维度三和维度四都是取了前面的三个值和四个值绘制出图。

使用方法：
