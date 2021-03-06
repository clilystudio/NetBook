package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;

public class CommentLikeBinder extends NotifBinder {
    public static final String LABEL = "comment_like";

    public CommentLikeBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return R.drawable.ic_notif_comment;
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getPostIntent(context, this.getItem().getPost());
    }

    @Override
    public String getLabel() {
        return "comment_like";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTrigger().getNickname() + " 同感了你的评论";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyComment().getContent();
    }
}
