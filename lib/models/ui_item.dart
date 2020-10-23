class UIItem {
  String icnName;
  String name;
  String desc;

  UIItem(this.icnName, this.name, this.desc);
  static List<UIItem> datas = [
    new UIItem(
        "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
        "层叠布局",
        "层叠布局和Web中的绝对定位、Android中的Frame布局是相似的，子组件可以根据距父容器四个角的位置来确定自身的位置。绝对定位允许子组件堆叠起来（按照代码中声明的顺序）。Flutter中使用Stack和Positioned这两个组件来配合实现绝对定位。Stack允许子组件堆叠，而Positioned用于根据Stack的四个角来确定子组件的位置。"),
    new UIItem(
        "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
        "线性布局",
        "所谓线性布局，即指沿水平或垂直方向排布子组件。Flutter中通过Row和Column来实现线性布局，类似于Android中的LinearLayout控件。Row和Column都继承自Flex，我们将在弹性布局一节中详细介绍Flex。"),
  ];
}
