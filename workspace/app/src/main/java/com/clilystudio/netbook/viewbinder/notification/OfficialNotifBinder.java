package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class OfficialNotifBinder extends NotifBinder {
    public OfficialNotifBinder(NotificationItem paramNotificationItem) {
        super(paramNotificationItem);
    }

    public void fillImageView(SmartImageView paramSmartImageView) {
        paramSmartImageView.setImageBitmap(a.a(BitmapFactory.decodeResource(paramSmartImageView.getResources(), 2130838027)));
    }

    public Intent getIntent(Context paramContext) {
        return null;
    }
}

