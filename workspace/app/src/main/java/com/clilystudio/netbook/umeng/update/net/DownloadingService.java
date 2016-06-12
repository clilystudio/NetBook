
package com.clilystudio.netbook.umeng.update.net;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
import android.os.SystemClock;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DownloadingService extends Service {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public static boolean b;
    private static final String c = null;
    private static Map h;
    private static SparseArray i;
    private static Boolean m;
    e a;
    private NotificationManager d;
    private p e;
    private Context f;
    private Handler g;
    private v k;
    private Messenger j = new Messenger( (Handler) new h( this ) );
    private boolean l = true;

    static p a(DownloadingService DownloadingService1)
    {
        return DownloadingService1.e;
    }

    static String a()
    {
        return c;
    }

    static void a(DownloadingService DownloadingService1, NotificationManager NotificationManager2)
    {
        DownloadingService1.d = NotificationManager2;
    }

    static void a(DownloadingService DownloadingService1, k k2)
    {
        int int3;
        f f4;
        Object Object5;

        u.a.b.c( c, new StringBuilder( "startDownload([mComponentName:" ).append( k2.a ).append( " mTitle:" ).append( k2.b ).append( " mUrl:" ).append( k2.c ).append( "])" ).toString() );
        int3 = p.a( k2 );
        f4 = new f( DownloadingService1, DownloadingService1.getApplicationContext(), k2, int3, 0, DownloadingService1.a );
        Object5 = new s( k2, int3 );
        DownloadingService1.k.a( int3 );
        i.put( ((s) Object5).c, Object5 );
        ((s) Object5).a = f4;
        f4.start();
    }

    static void a(DownloadingService DownloadingService1, String String2)
    {
        Boolean Boolean3 = m;

        synchronized( Boolean3 )
        {
            if( !m.booleanValue() )
            {
                u.a.b.c( c, new StringBuilder( "show single toast.[" ).append( String2 ).append( "]" ).toString() );
                m = Boolean.valueOf( true );
                DownloadingService1.g.post( (Runnable) new c( DownloadingService1, String2 ) );
                DownloadingService1.g.postDelayed( (Runnable) new d( DownloadingService1 ), 1200L );
            }
        }
    }

    static void a(Boolean Boolean1)
    {
        m = Boolean1;
    }

    static Context b(DownloadingService DownloadingService1)
    {
        return DownloadingService1.f;
    }

    static SparseArray b()
    {
        return i;
    }

    static NotificationManager c(DownloadingService DownloadingService1)
    {
        return DownloadingService1.d;
    }

    static Map c()
    {
        return h;
    }

    static Handler d(DownloadingService DownloadingService1)
    {
        return DownloadingService1.g;
    }

    private void d()
    {
        Iterator Iterator1 = k.a().iterator();

        while( Iterator1.hasNext() )
        {
            Integer Integer2 = (Integer) Iterator1.next();

            d.cancel( Integer2.intValue() );
        }
    }

    public IBinder onBind(Intent Intent1)
    {
        u.a.b.c( c, "onBind " );
        return j.getBinder();
    }

    public void onCreate()
    {
        super.onCreate();
        u.a.b.c( c, "onCreate " );
        d = (NotificationManager) getSystemService( "notification" );
        f = (Context) this;
        k = new v( f );
        e = new p( i, h, k );
        g = (Handler) new a( this );
        a = (e) new b( this );
    }

    public void onDestroy()
    {
        try
        {
            m.a( getApplicationContext() ).a( 259200 );
            m.a( getApplicationContext() ).finalize();
        }
        catch( Exception Exception1 )
        {
            u.a.b.b( c, Exception1.getMessage() );
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent Intent1, int int2, int int3)
    {
        if( Intent1 != null && Intent1.getExtras() != null )
            e.a( this, Intent1 );
        if( Build$VERSION.SDK_INT >= 19 && (k.b() || l) )
        {
            try
            {
                Intent Intent4 = new Intent( getApplicationContext(), getClass() );
                PendingIntent PendingIntent7;

                Intent4.setPackage( getPackageName() );
                PendingIntent7 = PendingIntent.getService( getApplicationContext(), 1, Intent4, 1073741824 );
                ((AlarmManager) getApplicationContext().getSystemService( "alarm" )).set( 3, 5000L + SystemClock.elapsedRealtime(), PendingIntent7 );
            }
            catch( Exception Exception5 )
            {
            }
        }
        if( l )
        {
            d();
            l = false;
        }
        return 1;
    }
}
