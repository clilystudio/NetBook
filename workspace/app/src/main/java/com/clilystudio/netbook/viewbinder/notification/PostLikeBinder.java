package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostLikeBinder extends NotifBinder {
    public static final String LABEL = "post_like";

    public PostLikeBinder(NotificationItem notificationItem) {
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
        return "post_like";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTrigger().getNickname() + " 同感了你的话题";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
