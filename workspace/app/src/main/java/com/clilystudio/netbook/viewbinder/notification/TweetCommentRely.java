package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;

public class TweetCommentRely extends TweetBinder {
    public static final String LABEL = "reply_comment";

    public TweetCommentRely(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return R.drawable.ic_notif_comment;
    }

    @Override
    public String getLabel() {
        return "reply_comment";
    }
}
