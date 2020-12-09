1 编译
AOT编译，JIT编译
2 热重载
允许你像更新网页一样去实时的更新你的项目
3 热更新
Flutter 热更新方案来了：https://jishuin.proginn.com/p/763bfbd24459

4 动态化
MXFlutter：https://gitee.com/mirrors/MXFlutter
做了2个多月的设计和编码，我梳理了Flutter动态化的方案对比及最佳实现: https://www.cnblogs.com/yunqishequ/p/10069973.html

5 缺点
(1) 与RN相比，在性能上和局限性上，可以胜之有余，但是对于在线热更新这个点,目前没有可行的预兆，除非把dart的编译
AOT编译放在客户端中，显然是不现实的；虽然，苹果爸爸一直禁用app热更新代码的态度坚决而明确
(2)代码上:括号太多了，各种嵌套,代码看起来非常不友好;但是了解其之用法之后，将整个页面分块区分成一个小模块独立

6 相关App
(1)实战：使用 Flutter 仿开眼视频App：https://juejin.cn/post/6844903640390434830
