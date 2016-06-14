package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class OfficialNotifBinder extends NotifBinder {
    public OfficialNotifBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    public void fillImageView(SmartImageView smartImageView) {
        smartImageView.setImageBitmap(a.a(BitmapFactory.decodeResource(smartImageView.getResources(), 2130838027)));
    }

    @Override
    public Intent getIntent(Context context) {
        return null;
    }
}
