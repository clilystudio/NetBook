package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostDistillateBinder extends OfficialNotifBinder {
    public static final String LABEL = "post_distillate";
    public static final String MAIN_TEXT = "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u7cbe\u534e\u5566\uff0c\u793e\u533a\u79bb\u5185\u6db5\u9ad8\u5927\u4e0a\u53c8\u8fd1\u4e86\u4e00\u70b9~";

    public PostDistillateBinder(NotificationItem notificationItem) {
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
        return "post_distillate";
    }

    @Override
    public String getMainText() {
        return "\u4f60\u7684\u5e16\u5b50\u88ab\u8bbe\u4e3a\u7cbe\u534e\u5566\uff0c\u793e\u533a\u79bb\u5185\u6db5\u9ad8\u5927\u4e0a\u53c8\u8fd1\u4e86\u4e00\u70b9~";
    }

    @Override
    public String getSubText() {
        return this.getItem().getMyPost().getTitle();
    }
}
