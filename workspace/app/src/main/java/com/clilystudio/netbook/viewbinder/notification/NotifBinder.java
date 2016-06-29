package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class NotifBinder {
    protected NotificationItem mItem;

    public NotifBinder(NotificationItem notificationItem) {
        this.mItem = notificationItem;
    }

    public void fillIcon(TextView textView) {
        textView.setCompoundDrawablesWithIntrinsicBounds(this.getIconRes(), 0, 0, 0);
    }

    public void fillImageView(SmartImageView smartImageView) {
        smartImageView.setApiImageUrl(this.mItem.getTrigger().getAvatar(), R.drawable.avatar_default);
    }

    protected abstract int getIconRes();

    public abstract Intent getIntent(Context var1);

    public NotificationItem getItem() {
        return this.mItem;
    }

    public void setItem(NotificationItem notificationItem) {
        this.mItem = notificationItem;
    }

    public abstract String getLabel();

    public abstract String getMainText();

    /*
     * Enabled aggressive block sorting
     */
    protected int getPostIcon() {
        NotificationItem.NotifPost notificationItem$NotifPost = this.getItem().getPost() != null ? this.getItem().getPost() : this.getItem().getMyPost();
        if ("vote".equals(notificationItem$NotifPost.getType())) {
            return R.drawable.ic_notif_vote;
        }
        return R.drawable.ic_notif_post;
    }

    protected Intent getPostIntent(Context context, NotificationItem.NotifPost notificationItem$NotifPost) {
        return null;
    }

    public abstract String getSubText();

    protected Intent getWebIntent(String string) {
        return new Intent("android.intent.action.VIEW", Uri.parse(string));
    }
}
