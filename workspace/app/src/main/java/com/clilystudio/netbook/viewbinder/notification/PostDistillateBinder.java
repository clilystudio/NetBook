package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostDistillateBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_distillate";
    public static final String MAIN_TEXT = "你的帖子被设为精华啦，社区离内涵高大上又近了一点~";

    public PostDistillateBinder(NotificationItem notificationItem) {
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
        return "post_distillate";
    }

    @Override
    public String getMainText() {
        return "你的帖子被设为精华啦，社区离内涵高大上又近了一点~";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
