
package com.clilystudio.netbook.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

final class f extends Thread {

    public f(DownloadingService DownloadingService1, Context Context2, k k3, int int4, int int5, e e6)
    {
        boolean[] boolean_1darray8;
        long long9;
        String String11;
        String String12;

        k = DownloadingService1;
        d = 0;
        e = -1L;
        f = -1L;
        g = -1;
label_52:
        {
            long[] long_1darray13;

            try
            {
                a = Context2;
                j = k3;
                d = int5;
                if( DownloadingService.b().indexOfKey( int4 ) < 0 )
                    break label_52;
                long_1darray13 = ((s) DownloadingService.b().get( int4 )).e;
            }
            catch( Exception Exception7 )
            {
                u.a.b.c( DownloadingService.a(), Exception7.getMessage(), Exception7 );
                i.b( h );
                return;
            }
            if( long_1darray13 != null && long_1darray13.length > 1 )
            {
                e = long_1darray13[0];
                f = long_1darray13[1];
            }
        }
        i = e6;
        h = int4;
        boolean_1darray8 = new boolean[1];
        c = w.a( "/apk", Context2, boolean_1darray8 );
        b = boolean_1darray8[0];
        if( b )
            long9 = 104857600L;
        else
            long9 = 10485760L;
label_117:
        {
            try
            {
                w.a( c, long9, 259200000L );
                if( j.e == null )
                    break label_117;
                String12 = new StringBuilder( String.valueOf( j.e ) ).append( ".apk.tmp" ).toString();
                if( j.a.equalsIgnoreCase( "delta_update" ) )
                    String12 = String12.replace( (CharSequence) ".apk", (CharSequence) ".patch" );
                c = new File( c, String12 );
                return;
            }
            catch( Exception Exception14 )
            {
                u.a.b.c( DownloadingService.a(), Exception14.getMessage(), Exception14 );
                i.b( h );
                return;
            }
        }
        try
        {
            String11 = new StringBuilder( String.valueOf( u.a.g.a( j.c ) ) ).append( ".apk.tmp" ).toString();
        }
        catch( Exception Exception15 )
        {
            u.a.b.c( DownloadingService.a(), Exception15.getMessage(), Exception15 );
            i.b( h );
            return;
        }
        String12 = String11;
    }

    private Context a;
    private boolean b;
    private File c;
    private int d;
    private long e;
    private long f;
    private int g;
    private int h;
    private e i;
    private k j;
    private DownloadingService k;

    static Context a(f f1)
    {
        return f1.a;
    }

    private void a(Exception Exception1)
    {
        u.a.b.b( DownloadingService.a(), new StringBuilder( "can not install. " ).append( Exception1.getMessage() ).toString() );
        if( i != null )
            i.b( h );
        DownloadingService.a( k ).a( j, e, f, (long) d );
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void a(boolean boolean1)
    {
    }

    static DownloadingService b(f f1)
    {
        return f1.k;
    }

    public final void a(int int1)
    {
        g = int1;
    }

    public final void run()
    {
        int int2;
        boolean boolean3;

        d = 0;
        try
        {
            if( i != null )
                i.a( h );
            int2 = e == 0L;
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
        boolean3 = false;
        if( int2 > 0 )
            boolean3 = true;
        try
        {
            a( boolean3 );
            if( DownloadingService.c().size() <= 0 )
                k.stopSelf();
        }
        catch( Exception Exception4 )
        {
            Exception4.printStackTrace();
            return;
        }
    }
}
