package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class UnknowBinder extends OfficialNotifBinder {
    public UnknowBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837916;
    }

    public String getLabel() {
        return "unknown";
    }

    public String getMainText() {
        return "你有一条新消息，当前版本无力打开，请安装最新版本";
    }

    public String getSubText() {
        return "当前版本不支持查看该消息";
    }
}

