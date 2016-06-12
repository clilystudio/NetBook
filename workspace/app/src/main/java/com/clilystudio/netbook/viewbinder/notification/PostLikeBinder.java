package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostLikeBinder extends NotifBinder {

    public static final String LABEL = "post_like";

    public PostLikeBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context Context1) {
        return getPostIntent(Context1, getItem().getMyPost());
    }

    public String getLabel() {
        return "post_like";
    }

    public String getMainText() {
        return new StringBuilder().append(getItem().getTrigger().getNickname()).append(" \u540C\u611F\u4E86\u4F60\u7684\u8BDD\u9898").toString();
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}
