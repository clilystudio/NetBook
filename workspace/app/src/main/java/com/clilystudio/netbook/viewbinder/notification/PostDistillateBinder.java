package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;

public class PostDistillateBinder extends OfficialNotifBinder {

    public static final String LABEL = "post_distillate";
    public static final String MAIN_TEXT = "\u4F60\u7684\u5E16\u5B50\u88AB\u8BBE\u4E3A\u7CBE\u534E\u5566\uFF0C\u793E\u533A\u79BB\u5185\u6DB5\u9AD8\u5927\u4E0A\u53C8\u8FD1\u4E86\u4E00\u70B9~";
    public PostDistillateBinder(NotificationItem NotificationItem1) {
        super(NotificationItem1);
    }

    protected int getIconRes() {
        return getPostIcon();
    }

    public Intent getIntent(Context Context1) {
        return getPostIntent(Context1, getItem().getMyPost());
    }

    public String getLabel() {
        return "post_distillate";
    }

    public String getMainText() {
        return "\u4F60\u7684\u5E16\u5B50\u88AB\u8BBE\u4E3A\u7CBE\u534E\u5566\uFF0C\u793E\u533A\u79BB\u5185\u6DB5\u9AD8\u5927\u4E0A\u53C8\u8FD1\u4E86\u4E00\u70B9~";
    }

    public String getSubText() {
        return getItem().getMyPost().getTitle();
    }
}
