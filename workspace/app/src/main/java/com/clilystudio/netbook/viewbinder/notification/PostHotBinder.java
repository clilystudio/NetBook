package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostHotBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_hot";
    public static final String MAIN_TEXT = "你的帖子被设为热门啦，社区离空虚寂寞冷更远了一点~";

    public PostHotBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context paramContext) {
        return getPostIntent(paramContext, getItem().getMyPost());
    }

    public String getLabel() {
        return "post_hot";
    }

    public String getMainText() {
        return "你的帖子被设为热门啦，社区离空虚寂寞冷更远了一点~";
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}

