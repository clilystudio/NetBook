package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostHotBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_hot";
    public static final String MAIN_TEXT = "你的帖子被设为热门啦，社区离空虚寂寞冷更远了一点~";

    public PostHotBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return this.getPostIcon();
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getPostIntent(context, this.getItem().getMyPost());
    }

    @Override
    public String getLabel() {
        return "post_hot";
    }

    @Override
    public String getMainText() {
        return "你的帖子被设为热门啦，社区离空虚寂寞冷更远了一点~";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
