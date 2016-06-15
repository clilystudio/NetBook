package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;

public abstract class NotifBinder {
    protected NotificationItem mItem;

    public NotifBinder(NotificationItem notificationItem) {
        this.mItem = notificationItem;
    }

    public void fillIcon(TextView textView) {
        textView.setCompoundDrawablesWithIntrinsicBounds(this.getIconRes(), 0, 0, 0);
    }

    public void fillImageView(SmartImageView smartImageView) {
        smartImageView.setApiImageUrl(this.mItem.getTrigger().getAvatar(), 2130837614);
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
        NotificationItem$NotifPost notificationItem$NotifPost = this.getItem().getPost() != null ? this.getItem().getPost() : this.getItem().getMyPost();
        if ("vote".equals(notificationItem$NotifPost.getType())) {
            return 2130837917;
        }
        return 2130837916;
    }

    protected Intent getPostIntent(Context context, NotificationItem$NotifPost notificationItem$NotifPost) {
        String string = notificationItem$NotifPost.getType();
        if (string.equals("review")) {
            Intent intent = new Intent(context, ReviewActivity.class);
            intent.putExtra("extraReviewId", notificationItem$NotifPost.get_id());
            return intent;
        }
        if (string.equals("help")) {
            Intent intent = new Intent(context, BookHelpActivity.class);
            intent.putExtra("extraBookHelpId", notificationItem$NotifPost.get_id());
            return intent;
        }
        Intent intent = new Intent(context, PostDetailActivity.class);
        intent.putExtra("PostBookId", notificationItem$NotifPost.get_id());
        return intent;
    }

    public abstract String getSubText();

    protected Intent getWebIntent(String string) {
        return new Intent("android.intent.action.VIEW", Uri.parse(string));
    }
}
