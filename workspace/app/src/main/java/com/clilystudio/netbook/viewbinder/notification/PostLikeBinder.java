package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostLikeBinder extends NotifBinder {
    public static final String LABEL = "post_like";

    public PostLikeBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context paramContext) {
        return getPostIntent(paramContext, getItem().getMyPost());
    }

    public String getLabel() {
        return "post_like";
    }

    public String getMainText() {
        return getItem().getTrigger().getNickname() + " 同感了你的话题";
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}

