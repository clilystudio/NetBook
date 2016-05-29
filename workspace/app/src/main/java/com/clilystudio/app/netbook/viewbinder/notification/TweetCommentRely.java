package com.clilystudio.app.netbook.viewbinder.notification;

import com.clilystudio.app.netbook.model.NotificationItem;

public class TweetCommentRely extends TweetBinder {
    public static final String LABEL = "reply_comment";

    public TweetCommentRely(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public String getLabel() {
        return "reply_comment";
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.TweetCommentRely
 * JD-Core Version:    0.6.2
 */