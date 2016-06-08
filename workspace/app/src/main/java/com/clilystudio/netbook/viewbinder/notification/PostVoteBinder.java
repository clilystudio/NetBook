package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostVoteBinder extends NotifBinder {
    public static final String LABEL = "post_vote";

    public PostVoteBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837917;
    }

    public Intent getIntent(Context paramContext) {
        return getPostIntent(paramContext, getItem().getMyPost());
    }

    public String getLabel() {
        return "post_vote";
    }

    public String getMainText() {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = getItem().getTrigger().getNickname();
        return String.format("%s 参与了投票", arrayOfObject);
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}

