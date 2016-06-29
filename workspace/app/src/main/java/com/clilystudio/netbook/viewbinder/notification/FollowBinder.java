package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;

public class FollowBinder extends NotifBinder {
    public static final String LABEL = "follow";

    public FollowBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return R.drawable.ic_notif_comment;
    }

    @Override
    public Intent getIntent(Context context) {
         return null;
    }

    @Override
    public String getLabel() {
        return "follow";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTrigger().getNickname() + " " + this.getItem().getHeader();
    }

    @Override
    public String getSubText() {
        return "";
    }
}
