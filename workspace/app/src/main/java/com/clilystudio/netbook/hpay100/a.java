
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.clilystudio.netbook.hpay100.c.h;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.k;
import com.clilystudio.netbook.hpay100.config.l;
import com.migu.sdk.api.MiguSdk;

public final class a {

    private static boolean a = false;
    private static Dialog b = null;

    static Dialog a()
    {
        return b;
    }

    static void a(Activity Activity1)
    {
        Activity1.runOnUiThread( (Runnable) new c() );
    }

    public static void a(Activity Activity1, int int2, String String3, String String4, int int5, String String6, y y7)
    {
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "startHPaySdk-------" );
        if( !a )
        {
            com.clilystudio.netbook.hpay100.c.c.a( Activity1, "\u8BF7\u521D\u59CB\u5316\u652F\u4ED8sdk", 1 );
            com.clilystudio.netbook.hpay100.config.a.a( Activity1.getApplicationContext(), String3, String4, int5, -1, "2", "2001", 0 );
        }
        else if( TextUtils.isEmpty( (CharSequence) String4 ) )
        {
            com.clilystudio.netbook.hpay100.c.c.a( Activity1, "\u8BA1\u8D39\u70B9\u7F16\u53F7\u4E0D\u80FD\u4E3A\u7A7A", 1 );
            com.clilystudio.netbook.hpay100.config.a.a( Activity1.getApplicationContext(), String3, String4, int5, -1, "2", "2003", 0 );
        }
        else if( int5 <= 0 )
        {
            com.clilystudio.netbook.hpay100.c.c.a( Activity1, "\u8BA1\u8D39\u91D1\u989D\u4F20\u5165\u9519\u8BEF", 1 );
            com.clilystudio.netbook.hpay100.config.a.a( Activity1.getApplicationContext(), String3, String4, int5, -1, "2", "2004", 0 );
        }
        else if( TextUtils.isEmpty( (CharSequence) String6 ) )
        {
            com.clilystudio.netbook.hpay100.c.c.a( Activity1, "\u8BA1\u8D39\u70B9\u540D\u79F0\u4E0D\u80FD\u4E3A\u7A7A", 1 );
            com.clilystudio.netbook.hpay100.config.a.a( Activity1.getApplicationContext(), String3, String4, int5, -1, "2", "2005", 0 );
        }
        else if( !com.clilystudio.netbook.hpay100.a.a.j( (Context) Activity1 ) )
            com.clilystudio.netbook.hpay100.c.c.a( Activity1, "\u8BF7\u68C0\u67E5\u60A8\u7684\u7F51\u7EDC\u8FDE\u63A5", 1 );
        else
        {
            Activity1.runOnUiThread( (Runnable) new b( Activity1, "\u6570\u636E\u52A0\u8F7D\u4E2D\uFF0C\u8BF7\u7A0D\u540E" ) );
            l.a( Activity1, String3, String4, int5, String6, l.e( Activity1.getApplicationContext() ), 0, (k) new f( Activity1, String3, String4, String6, 0, int5, y7 ) );
        }
    }

    static void a(Activity Activity1, HPaySMS HPaySMS2, y y3, int int4)
    {
        HPaySMS2.requestPay$1361a8a9( (Context) Activity1, 0, (y) new d( Activity1, y3 ) );
    }

    public static void a(Activity Activity1, String String2, String String3, String String4, String String5, String String6)
    {
        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "initHPaySdk ----" );
        if( TextUtils.isEmpty( (CharSequence) String2 ) )
            Toast.makeText( (Context) Activity1, (CharSequence) "\u5546\u6237ID\u4E0D\u80FD\u4E3A\u7A7A", 1 ).show();
        else if( TextUtils.isEmpty( (CharSequence) String3 ) )
        {
            Toast.makeText( (Context) Activity1, (CharSequence) "\u4EA7\u54C1ID\u4E0D\u80FD\u4E3A\u7A7A", 1 ).show();
            return;
        }
        else if( TextUtils.isEmpty( (CharSequence) String4 ) )
        {
            Toast.makeText( (Context) Activity1, (CharSequence) "\u6E20\u9053ID\u4E0D\u80FD\u4E3A\u7A7A", 1 ).show();
            return;
        }
        else if( TextUtils.isEmpty( (CharSequence) String5 ) )
        {
            Toast.makeText( (Context) Activity1, (CharSequence) "\u4EA7\u54C1\u540D\u79F0\u4E0D\u80FD\u4E3A\u7A7A", 1 ).show();
            return;
        }
        else if( TextUtils.isEmpty( (CharSequence) String6 ) )
        {
            Toast.makeText( (Context) Activity1, (CharSequence) "\u5BA2\u670D\u7535\u8BDD\u4E0D\u80FD\u4E3A\u7A7A", 1 ).show();
            return;
        }
        else if( !a )
        {
            long long7;
            long long9;

            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "initHPaySdk activity start-----" );
            a = true;
            long7 = System.currentTimeMillis();
            l.a = String2;
            l.b = String3;
            l.c = String4;
            l.e = String5;
            l.d = String6;
            l.a();
            l.b();
            l.c();
            l.a( Activity1.getApplicationContext() );
            h.a( Activity1.getApplicationContext() );
            com.clilystudio.netbook.hpay100.c.b.d( Activity1.getApplicationContext() );
            MiguSdk.initializeApp( Activity1 );
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", "initMgdmSdk" );
            com.clilystudio.netbook.hpay100.config.a.a( Activity1.getApplicationContext(), "1", "", 0 );
            long9 = System.currentTimeMillis();
            com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "time2-time1:" ).append( long9 - long7 ).toString() );
            return;
        }
    }

    static void a(Dialog Dialog1)
    {
        b = Dialog1;
    }

    public static void a(String String1, String String2, String String3)
    {
        Object Object4;
        Object Object5;
        Object Object6;

        if( TextUtils.isEmpty( (CharSequence) String1 ) )
            Object4 = "";
        if( TextUtils.isEmpty( (CharSequence) String2 ) )
            Object5 = "";
        if( TextUtils.isEmpty( (CharSequence) String3 ) )
            Object6 = "";
        l.m = (String) Object4;
        l.n = (String) Object5;
        l.o = (String) Object6;
    }
}
