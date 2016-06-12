
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class OfficialNotifBinder extends NotifBinder {

    public OfficialNotifBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public void fillImageView(SmartImageView SmartImageView1)
    {
        SmartImageView1.setImageBitmap( com.clilystudio.netbook.hpay100.a.a.a( BitmapFactory.decodeResource( SmartImageView1.getResources(), 2130838027 ) ) );
    }

    public Intent getIntent(Context Context1)
    {
        return null;
    }
}
