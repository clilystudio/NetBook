package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.post.OtherUserActivity;

public class FollowBinder
        extends NotifBinder {
    public static final String LABEL = "follow";

    public FollowBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    protected int getIconRes() {
        return 2130837914;
    }

    @Override
    public Intent getIntent(Context context) {
        User user = new User();
        user.setId(this.getItem().getJumpTo());
        user.setNickname(this.getItem().getTrigger().getNickname());
        Intent intent = OtherUserActivity.a(context);
        intent.putExtra("USER_ID", user.getId());
        intent.putExtra("USER_NAME", user.getNickname());
        context.startActivity(intent);
        return null;
    }

    @Override
    public String getLabel() {
        return "follow";
    }

    @Override
    public String getMainText() {
        return this.getItem().getTrigger().getNickname() + " " + this.getItem().getHeader();
    }

    @Override
    public String getSubText() {
        return "";
    }
}
