package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class TweetComment extends TweetBinder {
    public static final String LABEL = "comment_tweet";

    public TweetComment(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return 2130837916;
    }

    @Override
    public String getLabel() {
        return "comment_tweet";
    }
}
