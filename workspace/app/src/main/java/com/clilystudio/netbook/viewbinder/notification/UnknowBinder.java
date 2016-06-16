package com.clilystudio.netbook.viewbinder.notification;

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
        return "\u4f60\u6709\u4e00\u6761\u65b0\u6d88\u606f\uff0c\u5f53\u524d\u7248\u672c\u65e0\u529b\u6253\u5f00\uff0c\u8bf7\u5b89\u88c5\u6700\u65b0\u7248\u672c";
    }

    @Override
    public String getSubText() {
        return "\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u67e5\u770b\u8be5\u6d88\u606f";
    }
}
