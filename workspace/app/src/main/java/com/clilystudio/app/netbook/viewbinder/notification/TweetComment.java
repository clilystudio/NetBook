package com.clilystudio.app.netbook.viewbinder.notification;

import com.clilystudio.app.netbook.model.NotificationItem;

public class TweetComment extends TweetBinder {
    public static final String LABEL = "comment_tweet";

    public TweetComment(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837916;
    }

    public String getLabel() {
        return "comment_tweet";
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.TweetComment
 * JD-Core Version:    0.6.2
 */