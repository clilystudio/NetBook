package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class LinkPushBinder extends OfficialNotifBinder {
    public static final String LABEL = "link_push";

    public LinkPushBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return R.drawable.ic_notif_link;
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getWebIntent(this.getItem().getLink());
    }

    @Override
    public String getLabel() {
        return "link_push";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTitle();
    }

    @Override
    public String getSubText() {
        return this.getItem().getLinkTitle();
    }
}
