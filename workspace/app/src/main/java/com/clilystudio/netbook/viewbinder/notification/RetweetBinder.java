package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class RetweetBinder extends TweetBinder {
    public static final String LABEL = "retweet";

    public RetweetBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public String getLabel() {
        return "retweet";
    }
}

