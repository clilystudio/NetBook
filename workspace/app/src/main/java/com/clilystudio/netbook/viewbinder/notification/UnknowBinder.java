package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class UnknowBinder extends OfficialNotifBinder {

    public UnknowBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return 2130837916;
    }

    public String getLabel() {
        return "unknown";
    }

    public String getMainText() {
        return "\u4F60\u6709\u4E00\u6761\u65B0\u6D88\u606F\uFF0C\u5F53\u524D\u7248\u672C\u65E0\u529B\u6253\u5F00\uFF0C\u8BF7\u5B89\u88C5\u6700\u65B0\u7248\u672C";
    }

    public String getSubText() {
        return "\u5F53\u524D\u7248\u672C\u4E0D\u652F\u6301\u67E5\u770B\u8BE5\u6D88\u606F";
    }
}
