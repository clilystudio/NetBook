
package com.clilystudio.netbook.hpay100.config;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.telephony.SmsManager;
import java.util.ArrayList;
import java.util.Iterator;

public final class c {

    private static f a;
    private static Runnable b = null;
    private static Handler c = null;
    private static BroadcastReceiver d = new d();

    static void a()
    {
        c();
    }

    static void a(Context Context1)
    {
        c( Context1 );
    }

    public static void a(Context Context1, String String2, String String3, f f4)
    {
        SmsManager SmsManager10;
        PendingIntent PendingIntent13;
        PendingIntent PendingIntent14;

        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "sendSMS:" );
        a = f4;
        c();
        try
        {
            IntentFilter IntentFilter5 = new IntentFilter();

            IntentFilter5.addAction( "com.happy.pay100.smssend" );
            IntentFilter5.addAction( "com.happy.pay100.smsresult" );
            Context1.registerReceiver( d, IntentFilter5 );
        }
        catch( Exception Exception6 )
        {
            Exception6.printStackTrace();
        }
label_116:
        {
            Iterator Iterator15;
            boolean boolean16;

label_57:
            {
                Handler Handler8;

                try
                {
                    Intent Intent11;
                    Intent Intent12;

                    SmsManager10 = SmsManager.getDefault();
                    Intent11 = new Intent( "com.happy.pay100.smssend" );
                    Intent12 = new Intent( "com.happy.pay100.smsresult" );
                    PendingIntent13 = PendingIntent.getBroadcast( Context1, 0, Intent11, 0 );
                    PendingIntent14 = PendingIntent.getBroadcast( Context1, 0, Intent12, 0 );
                    if( String3.length() <= 70 )
                        break label_116;
                    Iterator15 = SmsManager10.divideMessage( String3 ).iterator();
                    for( ;; )
                    {
                        boolean16 = Iterator15.hasNext();
                        break label_57;
                    }
                }
                catch( Exception Exception7 )
                {
                    Exception7.printStackTrace();
                }
                b = (Runnable) new e( Context1 );
                Handler8 = new Handler( Context1.getMainLooper() );
                c = Handler8;
                Handler8.postDelayed( b, 20000L );
                return;
            }
            if( boolean16 )
            {
                try
                {
                    String String17 = (String) Iterator15.next();

                    SmsManager10.sendTextMessage( String2, null, String17, PendingIntent13, PendingIntent14 );
                    com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "sms address:" ).append( String2 ).toString() );
label_54:
                    com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "sms content:" ).append( String17 ).toString() );
                    break label_54;
                }
                catch( Exception Exception18 )
                {
                    Exception18.printStackTrace();
                }
            }
        }
        try
        {
            SmsManager10.sendTextMessage( String2, null, String3, PendingIntent13, PendingIntent14 );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "sms address--:" ).append( String2 ).toString() );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "sms content--:" ).append( String3 ).toString() );
        }
        catch( Exception Exception19 )
        {
            Exception19.printStackTrace();
        }
    }

    static void a(f f1)
    {
        a = null;
    }

    static f b()
    {
        return a;
    }

    static void b(Context Context1)
    {
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "onSmsTimeout:" );
        c( Context1 );
        c();
        if( a != null )
        {
            a.a( 2 );
            a = null;
        }
    }

    private static void c()
    {
        try
        {
            if( c != null )
            {
                c.removeCallbacks( b );
                c = null;
                b = null;
            }
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }

    private static void c(Context Context1)
    {
        try
        {
            Context1.unregisterReceiver( d );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }
}
