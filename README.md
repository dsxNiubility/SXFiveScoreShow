# SXFiveScoreShow
实现类似于实况足球里球员五项能力值展示的五边形。

---

>这个程序是关于绘制图表的。传入五个参数值0~5.0，会根据比例计算并绘制出五边形的效果图，并且可以提供一个比较值绘制出另一个效果图（绿色图）与自己的分数比较，也设置了动画扩张效果，视觉效果更好。用户可以自定义的地方很多，现已提供三种维度，根据你想传几个值来判断画三角形，四边形还是五边形。

![image](https://github.com/dsxNiubility/SXFiveScoreShow/raw/master/screenshots/five1.png)

首页的demo示例程序，自己搭建了一个较为完整的示例，一般引用了本第三方库最终大致可以弄成这样。
####两种样式
内部提供了可设置的属性，通过控制showType为1或是2可以使五边形显示成实色或边框。

####三种维度

![image](https://github.com/dsxNiubility/SXFiveScoreShow/raw/master/screenshots/five2.png)

示例程序中是，第一个页面给五个维度的分数，和五个维度的对比分数都传了值，维度五就是用这传进来的值绘制的（传入的是一个数组）。然后维度三和维度四都是取了前面的三个值和四个值绘制出图。

####使用方法：
	1.将代码中resource文件夹中的SXFiveScore拖入项目中
	2.引入主头文件#import "SXFiveScoreCell.h"
	3.有两种使用方法，一种是用SXFiveScoreCell加在tableView中来展示，一种是直接将	SXAnimateView加在ViewController中显示。但暂时第二种方法封装的还不是很完善，暂时建议第一种。
	4.在tableView的数据源方法中 使用SXFiveScoreCell类来创建cell。
	5.获得数据，可以是这个页面发请求得到的，也可以是前一个页面传得，总之要得到3~5个0~5.0之间数值，并整合成一个数组。（如果想要设置对比view那就要写两个数组）
	6.然后为cell的两个成员变量传值 
        cell.scores = mScoreArray;
        cell.compareScores = mCompareArray;
        （现在就默认了主要分数是桔色，对比分数是绿色，后续会把颜色的接口开放到前面可以自行设置）
	7.如果想要设置进入页面后自动产生动画，可参见demo中使用成员变量并在viewdidappear中控制的方法。