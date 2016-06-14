package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostVoteBinder extends NotifBinder {
    public static final String LABEL = "post_vote";

    public PostVoteBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return 2130837917;
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getPostIntent(context, this.getItem().getMyPost());
    }

    @Override
    public String getLabel() {
        return "post_vote";
    }

    @Override
    public String getMainText() {
        Object[] arrobject = new Object[]{this.getItem().getTrigger().getNickname()};
        return String.format("%s \u53c2\u4e0e\u4e86\u6295\u7968", arrobject);
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
