package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;

public class UnknowBinder extends OfficialNotifBinder {
    public UnknowBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return R.drawable.ic_notif_post;
    }

    @Override
    public String getLabel() {
        return "unknown";
    }

    @Override
    public String getMainText() {
        return "你有一条新消息，当前版本无力打开，请安装最新版本";
    }

    @Override
    public String getSubText() {
        return "当前版本不支持查看该消息";
    }
}
