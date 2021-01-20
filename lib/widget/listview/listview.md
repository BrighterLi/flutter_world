1 滚动事件监听
Flutter内建了Notification机制，Widget可以通过Notification将一个事件冒泡到Widget Tree的上层节点。用NotificationListener包裹需要监听事件的子视图，即可监听Notification事件。
我们可以通过监听滚动事件来实现列表视图的“上拉加载”等功能。
NotificationListener类
当给 ListView 外包裹一个 NotificationListener 的时候，就可以在 NotificationListener 的 onNotification 事件里监听滚动条的信息。
在 onNotification 的回调函数里会有一个 ScrollNotification 的对象，此对象只有两个属性：metrics 和 context。
metrics 记录着滚动条的信息，它有以下只读属性：
atEdge → bool - 是否能够正好匹配 min/maxScrollExtent。
axis → Axis - 视图滚动的轴。
axisDirection → AxisDirection - 滚动的方向。
extentAfter → double - 位于可滚动视口的“下方”的数量。
extentBefore → double - 位于可滚动视口的“上方”的数量。
extentInside → double - 可见内容的数量。
maxScrollExtent → double - 滚动最大的范围。
minScrollExtent → double - 滚动最小的范围。
outOfRange → bool - 是否在范围内。
pixels → double - 当前滚动位置。
viewportDimension → double - 沿着 axisDirection 的视口范围。


2 ScrollController
可滚动的widget都有一个controller属性，用于控制滚动条的行为。controller属性是一个ScrollController对象。可以使用它来实现指定滚动到某个位置，实现回到顶部等功能。

3 上拉加载下拉刷新
Flutter中ListView滚动的监听以及上拉加载、下拉刷新的源码实现：https://blog.csdn.net/u011578734/article/details/108759874