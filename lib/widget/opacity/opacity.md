1 增加黑色透明度蒙层,不是直接改变图片透明度
Visibility(
                          visible: activityFinish,
                          child: Opacity(
                            opacity: activityItemOpacity,
                            child: Container(
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(
                                      color: Color(0xff000000),
                                      width: 1.0 / MediaQuery.of(context).devicePixelRatio),
                                    color: Color(0xFF000000)
                                ),
                            ),
                          ),
                        ),