package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.app.netbook.model.CommonReplyeeInfo;
import com.clilystudio.app.netbook.model.NotificationItem;

public class PostReplyBinder extends UnimportatntNotifBinder {
    public static final String LABEL = "post_reply";

    public PostReplyBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context paramContext) {
        Intent localIntent = getPostIntent(paramContext, getItem().getMyPost());
        CommonReplyeeInfo localCommonReplyeeInfo = new CommonReplyeeInfo();
        NotificationItem localNotificationItem = getItem();
        localCommonReplyeeInfo.setAuthor(localNotificationItem.getTrigger().toAuthor());
        localCommonReplyeeInfo.setFloor(localNotificationItem.getComment().getFloor());
        localCommonReplyeeInfo.setCommentId(localNotificationItem.getComment().get_id());
        localIntent.putExtra("KEY_POST_REPLIER_INFO", localCommonReplyeeInfo);
        return localIntent;
    }

    public String getLabel() {
        return "post_reply";
    }

    public String getMainText() {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = getItem().getTrigger().getNickname();
        arrayOfObject[1] = getItem().getComment().getContent();
        return String.format("%s：%s", arrayOfObject);
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.PostReplyBinder
 * JD-Core Version:    0.6.2
 */