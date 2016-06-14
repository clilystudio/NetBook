package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostPushBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_push";

    public PostPushBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return this.getPostIcon();
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getPostIntent(context, this.getItem().getPost());
    }

    @Override
    public String getLabel() {
        return "post_push";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTitle();
    }

    @Override
    public String getSubText() {
        return this.getItem().getPost().getTitle();
    }
}
