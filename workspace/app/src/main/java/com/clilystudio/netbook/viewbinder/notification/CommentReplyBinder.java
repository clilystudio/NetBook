package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class CommentReplyBinder extends NotifBinder {
    public static final String LABEL = "comment_reply";

    public CommentReplyBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return 2130837914;
    }

    @Override
    public Intent getIntent(Context context) {
        Intent intent = this.getPostIntent(context, this.getItem().getPost());
        intent.putExtra("KEY_POST_REPLIER_INFO", this.getItem().buildRepliedInfoForCommentReply());
        return intent;
    }

    @Override
    public String getLabel() {
        return "comment_reply";
    }

    @Override
    public String getMainText() {
        NotificationItem notificationItem = this.getItem();
        return notificationItem.getTrigger().getNickname() + "\uff1a" + notificationItem.getComment().getContent();
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyComment().getContent();
    }
}
