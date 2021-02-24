Widgets
1 TextInput + 自定义
(1) 输入下横线隐藏
(2) 可输入多行，自动换行:maxLines: 100,
(3) dialog弹出的具体位置控制
(4) dialog弹出的动画，如从底部弹出
2 选择列表
3 dialog + 自定义
(1) 里面添加Text+TextInput/+Image
4 banner控件
  (1) swiper_banner Demo
  资料：https://blog.csdn.net/yechaoa/article/details/90643476
  需要使用第三方控件
  (2) custom_banner Demo
    https://www.jb51.net/article/166205.htm
    不需要使用第三方控件
    无法自定义banner页面的具体内容，只能显示图片页面和圆形页面指示器

5 自定义Dialog
  https://www.cnblogs.com/tangs/articles/10671573.html
  
6 ListView
(1)分页请求
Flutter使用ListView分页请求数据：https://blog.csdn.net/kfeng632/article/details/81072635

7 加载更多

8 Widget分类
布局Widget
(1) Row(1\2\4\4个子Widget);Column
Flutter控件--Row、Column和Stack:https://www.codercto.com/a/80529.html
因为 Row 和 Column 都是继承于 Flex，所以他们两个的属性也都是 Flex 的属性
Row 是 Flutter 中常用的控件。一个让 children 在水平方向依次排列 。如果 Row 空间 不足的话。 自身不带滚动的。
Column 也是 Flutter 中常用的控件。 一个 children 在垂直方向依次排列 。如果 Column 空间 不足的话。 自身不带滚动的。
MainAxisSize.min : 主轴方向，包裹住 childre 即可。相当于 android 中的 wrap_content
MainAxisSize.max(默认值) : 主轴方向，铺满 ( Row 或者 Column )的父 Widget 的大小。 相当于 android 中的 match_parent


本文来源：码农网
本文链接：https://www.codercto.com/a/80529.html

属性Widget
(1) 填充
* Flexible组件可以使Row、Column、Flex等子组件在主轴方向有填充可用空间的能力，但是不强制子组件填充可用空间。
* Expanded组件可以使Row、Column、Flex等子组件在其主轴方向上展开并填充可用空间，是强制子组件填充可用空间。
，两控件是对Row、Column、Flex 布局的处理。子控件占多少地方