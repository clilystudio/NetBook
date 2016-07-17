package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class OfficialNotifBinder extends NotifBinder {
    public OfficialNotifBinder(NotificationItem notificationItem) {
        super(notificationItem);
    }

    @Override
    public void fillImageView(SmartImageView smartImageView) {
        smartImageView.setImageBitmap(CommonUtil.getCircleBitmap(BitmapFactory.decodeResource(smartImageView.getResources(), R.drawable.official_avatar)));
    }

    @Override
    public Intent getIntent(Context context) {
        return null;
    }
}
