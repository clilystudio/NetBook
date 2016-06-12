
package com.clilystudio.netbook.reader;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.clilystudio.netbook.util.I;

public class TtsSpeakingService extends Service {

    private int a = 3;

    public IBinder onBind(Intent Intent1)
    {
        return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public int onStartCommand(Intent Intent1, int int2, int int3)
    {
    }
}
