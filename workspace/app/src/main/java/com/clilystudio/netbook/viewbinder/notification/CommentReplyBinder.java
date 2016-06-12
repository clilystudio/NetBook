package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

import java.io.Serializable;

public class CommentReplyBinder extends NotifBinder {

    public static final String LABEL = "comment_reply";

    public CommentReplyBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return 2130837914;
    }

    public Intent getIntent(Context Context1) {
        Intent Intent2 = getPostIntent(Context1, getItem().getPost());

        Intent2.putExtra("KEY_POST_REPLIER_INFO", (Serializable) getItem().buildRepliedInfoForCommentReply());
        return Intent2;
    }

    public String getLabel() {
        return "comment_reply";
    }

    public String getMainText() {
        NotificationItem NotificationItem1 = getItem();

        return new StringBuilder().append(NotificationItem1.getTrigger().getNickname()).append("\uFF1A").append(NotificationItem1.getComment().getContent()).toString();
    }

    public String getSubText() {
        return getItem().getMyComment().getContent();
    }
}
