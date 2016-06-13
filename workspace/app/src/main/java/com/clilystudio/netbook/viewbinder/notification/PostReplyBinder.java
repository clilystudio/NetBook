package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.CommonReplyeeInfo;
import com.clilystudio.netbook.model.NotificationItem;

public class PostReplyBinder
        extends UnimportatntNotifBinder {
    public static final String LABEL = "post_reply";

    public PostReplyBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return this.getPostIcon();
    }

    @Override
    public Intent getIntent(Context context) {
        Intent intent = this.getPostIntent(context, this.getItem().getMyPost());
        CommonReplyeeInfo commonReplyeeInfo = new CommonReplyeeInfo();
        NotificationItem notificationItem = this.getItem();
        commonReplyeeInfo.setAuthor(notificationItem.getTrigger().toAuthor());
        commonReplyeeInfo.setFloor(notificationItem.getComment().getFloor());
        commonReplyeeInfo.setCommentId(notificationItem.getComment().get_id());
        intent.putExtra("KEY_POST_REPLIER_INFO", commonReplyeeInfo);
        return intent;
    }

    @Override
    public String getLabel() {
        return "post_reply";
    }

    @Override
    public String getMainText() {
        Object[] arrobject = new Object[]{this.getItem().getTrigger().getNickname(), this.getItem().getComment().getContent()};
        return String.format("%s\uff1a%s", arrobject);
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
