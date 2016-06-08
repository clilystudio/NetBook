package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class CommentLikeBinder extends NotifBinder {
    public static final String LABEL = "comment_like";

    public CommentLikeBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public Intent getIntent(Context paramContext) {
        return getPostIntent(paramContext, getItem().getPost());
    }

    public String getLabel() {
        return "comment_like";
    }

    public String getMainText() {
        return getItem().getTrigger().getNickname() + " 同感了你的评论";
    }

    public String getSubText() {
        return getItem().getMyComment().getContent();
    }
}

