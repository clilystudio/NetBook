package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostPushBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_push";

    public PostPushBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context paramContext) {
        return getPostIntent(paramContext, getItem().getPost());
    }

    public String getLabel() {
        return "post_push";
    }

    public String getMainText() {
        return getItem().getTitle();
    }

    public String getSubText() {
        return getItem().getPost().getTitle();
    }
}

