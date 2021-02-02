Timer timer;

@override
void initState() {
  super.initState();
  timer = Timer.periodic(Duration(seconds: 15), (Timer t) => doSomeThing());
}
@override
void dispose() {
  timer?.cancel();
  super.dispose();
}