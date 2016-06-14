package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;

public abstract class TweetBinder extends NotifBinder {
    public TweetBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    public Intent getIntent(Context context) {
        return TweetDetailActivity.a(context, this.getItem().getJumpTo());
    }

    @Override
    public String getMainText() {
        return this.getItem().getTrigger().getNickname() + ": " + this.getItem().getHeader();
    }

    @Override
    public String getSubText() {
        return this.getItem().getSubTitle();
    }
}
