1 滑动组件
flutter listview 滚动到指定位置_Flutter(五)之Flutter滚动Widget: https://blog.csdn.net/weixin_35891724/article/details/113072337?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-3&spm=1001.2101.3001.4242
(1) ListView
(2) GridView
和ListView对比有一个特殊的参数：gridDelegate
gridDelegate用于控制交叉轴的item数量或者宽度，需要传入的类型是SliverGridDelegate，但是它是一个抽象类，所以我们需要传入它的子类：SliverGridDelegateWithFixedCrossAxisCount
(3) Slivers/CustomScrollView
我们考虑一个这样的布局：一个滑动的视图中包括一个标题视图(HeaderView)，一个列表视图(ListView)，一个网格视图(GridView)。
我们怎么可以让它们做到统一的滑动效果呢？使用前面的滚动是很难做到的。
Flutter中有一个可以完成这样滚动效果的Widget：CustomScrollView，可以统一管理多个滚动视图。
在CustomScrollView中，每一个独立的，可滚动的Widget被称之为Sliver。
补充：Sliver可以翻译成裂片、薄片，你可以将每一个独立的滚动视图当做一个小裂片。
ps:之前fql首页flutter化使用的即是CustomScrollView

2 监听滚动事件
在Flutter中监听滚动相关的内容由两部分组成：ScrollController和ScrollNotification。
应用：
比如视图滚动到底部时，我们可能希望做上拉加载更多；
比如滚动到一定位置时显示一个回到顶部的按钮，点击回到顶部的按钮，回到顶部；
比如监听滚动什么时候开始，什么时候结束；
(1)ScrollController
在Flutter中，Widget并不是最终渲染到屏幕上的元素(真正渲染的是RenderObject)，因此通常这种监听事件以及相关的信息并不能直接从Widget中获取，而是必须通过对应的Widget的Controller来实现。
ListView、GridView的组件控制器是ScrollController，我们可以通过它来获取视图的滚动信息，并且可以调用里面的方法来更新视图的滚动位置。
(2)NotificationListener
如果我们希望监听什么时候开始滚动，什么时候结束滚动，这个时候我们可以通过NotificationListener。