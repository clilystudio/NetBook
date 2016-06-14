package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostHotBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_hot";
    public static final String MAIN_TEXT = "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u70ed\u95e8\u5566\uff0c\u793e\u533a\u79bb\u7a7a\u865a\u5bc2\u5bde\u51b7\u66f4\u8fdc\u4e86\u4e00\u70b9~";

    public PostHotBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return this.getPostIcon();
    }

    @Override
    public Intent getIntent(Context context) {
        return this.getPostIntent(context, this.getItem().getMyPost());
    }

    @Override
    public String getLabel() {
        return "post_hot";
    }

    @Override
    public String getMainText() {
        return "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u70ed\u95e8\u5566\uff0c\u793e\u533a\u79bb\u7a7a\u865a\u5bc2\u5bde\u51b7\u66f4\u8fdc\u4e86\u4e00\u70b9~";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
