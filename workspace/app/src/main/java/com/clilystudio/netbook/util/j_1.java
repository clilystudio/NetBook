
package com.clilystudio.netbook.util;

import android.app.Notification;
import android.app.NotificationManager;
import android.widget.RemoteViews;

final class j implements Runnable {

    j(AudioBookNotification$SwitchButtonListener SwitchButtonListener1)
    {
    }

    public final void run()
    {
        as.a().d();
        e.e().setImageViewResource( 2131493607, 2130837584 );
        e.g().notify( 1001, e.f() );
    }
}
