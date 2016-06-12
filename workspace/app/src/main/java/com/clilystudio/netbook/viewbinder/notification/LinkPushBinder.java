package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class LinkPushBinder extends OfficialNotifBinder {

    public static final String LABEL = "link_push";

    public LinkPushBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return 2130837915;
    }

    public Intent getIntent(Context Context1) {
        return getWebIntent(getItem().getLink());
    }

    public String getLabel() {
        return "link_push";
    }

    public String getMainText() {
        return getItem().getTitle();
    }

    public String getSubText() {
        return getItem().getLinkTitle();
    }
}
