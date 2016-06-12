package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class CommentLikeBinder extends NotifBinder {

    public static final String LABEL = "comment_like";

    public CommentLikeBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public Intent getIntent(Context Context1) {
        return getPostIntent(Context1, getItem().getPost());
    }

    public String getLabel() {
        return "comment_like";
    }

    public String getMainText() {
        return new StringBuilder().append(getItem().getTrigger().getNickname()).append(" \u540C\u611F\u4E86\u4F60\u7684\u8BC4\u8BBA").toString();
    }

    public String getSubText() {
        return getItem().getMyComment().getContent();
    }
}
