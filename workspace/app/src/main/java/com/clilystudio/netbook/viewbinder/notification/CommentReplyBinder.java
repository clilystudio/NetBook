package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class CommentReplyBinder extends NotifBinder {
    public static final String LABEL = "comment_reply";

    public CommentReplyBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public Intent getIntent(Context paramContext) {
        Intent localIntent = getPostIntent(paramContext, getItem().getPost());
        localIntent.putExtra("KEY_POST_REPLIER_INFO", getItem().buildRepliedInfoForCommentReply());
        return localIntent;
    }

    public String getLabel() {
        return "comment_reply";
    }

    public String getMainText() {
        NotificationItem localNotificationItem = getItem();
        return localNotificationItem.getTrigger().getNickname() + "：" + localNotificationItem.getComment().getContent();
    }

    public String getSubText() {
        return getItem().getMyComment().getContent();
    }
}

