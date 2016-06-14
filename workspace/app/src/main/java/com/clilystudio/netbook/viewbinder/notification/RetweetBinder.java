package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class RetweetBinder extends TweetBinder {
    public static final String LABEL = "retweet";

    public RetweetBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return 2130837914;
    }

    @Override
    public String getLabel() {
        return "retweet";
    }
}
