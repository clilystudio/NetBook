
package com.clilystudio.netbook.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.util.Date;

public class AudioBookNotification$SwitchButtonListener extends BroadcastReceiver {

    private Handler a = new Handler();

    public void onReceive(Context Context1, Intent Intent2)
    {
        long long3 = new Date().getTime();

        if( long3 - e.d() >= 1000L )
        {
            as.a();
            if( as.c() )
                a.post( (Runnable) new i( this ) );
            else
                a.post( (Runnable) new j( this ) );
        }
    }
}
