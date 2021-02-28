1 每隔多久做一次
Timer timer;

@override
void initState() {
  super.initState();
  //每隔15s做一次：doSomeThing
  timer = Timer.periodic(Duration(seconds: 15), (Timer t) => doSomeThing());
}
@override
void dispose() {
  timer?.cancel();
  super.dispose();
}

2 1s内多两次点击返回顶部
  void _multipleClickToTop() {
    if(_lastClickTime == null || DateTime.now().difference(_lastClickTime) > Duration(seconds: 1)){
      _lastClickTime = DateTime.now();
    }else{
      _lastClickTime = DateTime.now();
      this._scrollController.animateTo(0.0, duration: new Duration(milliseconds: 300) , curve: Curves.bounceIn);
    }
  }