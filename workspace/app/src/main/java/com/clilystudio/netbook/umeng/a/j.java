
package com.clilystudio.netbook.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import java.util.Map;
import u.aly.ac;
import u.aly.bt;
import u.aly.cB;
import u.aly.cC;
import u.aly.cF;
import u.aly.ch;
import u.aly.cu;
import u.aly.cv;
import u.aly.cx;

public final class j implements cB {

    j()
    {
        c.a( this );
    }

    private cv f;
    private ch g;
    private final com.clilystudio.netbook.umeng.a.a.b a = new com.clilystudio.netbook.umeng.a.a.b();
    private Context b = null;
    private cu c = new cu();
    private cF d = new cF();
    private cC e = new cC();
    private boolean h = false;

    static void a(j j1, Context Context2)
    {
        j1.e.a( Context2 );
    }

    static void b(j j1, Context Context2)
    {
        j1.e( Context2 );
    }

    private void d(Context Context1)
    {
        if( !h )
        {
            b = Context1.getApplicationContext();
            f = new cv( b );
            g = ch.a( b );
            h = true;
        }
    }

    private void e(Context Context1)
    {
        SharedPreferences SharedPreferences2 = com.clilystudio.netbook.hpay100.a.a.M( Context1 );

        if( SharedPreferences2 != null )
        {
            if( SharedPreferences2.getLong( "a_start_time", 0L ) == 0L && a.e )
                bt.b( "MobclickAgent", "onPause called before onResume" );
            else
            {
                long long3 = System.currentTimeMillis();
                SharedPreferences$Editor Editor5 = SharedPreferences2.edit();

                Editor5.putLong( "a_start_time", 0L );
                Editor5.putLong( "a_end_time", long3 );
                Editor5.putLong( "session_end_time", long3 );
                Editor5.commit();
            }
        }
        d.a( Context1 );
        g.a();
    }

    final void a(Context Context1)
    {
        if( Context1 == null )
            bt.b( "MobclickAgent", "unexpected null context in onResume" );
        else
        {
            a.a( Context1 );
            try
            {
                ch.a( Context1 ).a( a );
            }
            catch( Exception Exception2 )
            {
                return;
            }
        }
    }

    public final void a(Context Context1, String String2, String String3, long long4, int int6)
    {
        try
        {
            if( !h )
                d( Context1 );
            f.a( String2, String3, -1L, int6 );
        }
        catch( Exception Exception7 )
        {
            bt.b( "MobclickAgent", "", Exception7 );
            return;
        }
    }

    final void a(Context Context1, String String2, Map Map3, long long4)
    {
        try
        {
            if( !h )
                d( Context1 );
            f.a( String2, Map3, -1L );
        }
        catch( Exception Exception6 )
        {
            bt.b( "MobclickAgent", "", Exception6 );
            return;
        }
    }

    final void a(com.clilystudio.netbook.umeng.a.a.a a1)
    {
        a.a( a1 );
    }

    final void a(String String1)
    {
        if( !com.clilystudio.netbook.umeng.a.a.e )
        {
            try
            {
                d.a( String1 );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                return;
            }
        }
    }

    public final void a(Throwable Throwable1)
    {
label_28:
        {
            try
            {
                d.a();
                if( b == null )
                    break label_28;
            }
            catch( Exception Exception2 )
            {
                bt.a( "MobclickAgent", "Exception in onAppCrash", Exception2 );
                return;
            }
            if( Throwable1 != null && g != null )
                g.b( (cx) new ac( Throwable1 ) );
            e( b );
            com.clilystudio.netbook.hpay100.a.a.M( b ).edit().commit();
        }
        m.a();
    }

    final void b(Context Context1)
    {
        if( Context1 == null )
            bt.b( "MobclickAgent", "unexpected null context in onResume" );
        else
        {
            if( a.e )
                d.a( Context1.getClass().getName() );
            try
            {
                if( !h )
                    d( Context1 );
                m.a( (Runnable) new k( this, Context1 ) );
            }
            catch( Exception Exception2 )
            {
                bt.b( "MobclickAgent", "Exception occurred in Mobclick.onResume(). ", Exception2 );
                return;
            }
        }
    }

    final void b(String String1)
    {
        if( !com.clilystudio.netbook.umeng.a.a.e )
        {
            try
            {
                d.b( String1 );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                return;
            }
        }
    }

    final void c(Context Context1)
    {
        if( Context1 == null )
            bt.b( "MobclickAgent", "unexpected null context in onPause" );
        else
        {
            if( a.e )
                d.b( Context1.getClass().getName() );
            try
            {
                if( !h )
                    d( Context1 );
                m.a( (Runnable) new l( this, Context1 ) );
            }
            catch( Exception Exception2 )
            {
                bt.b( "MobclickAgent", "Exception occurred in Mobclick.onRause(). ", Exception2 );
                return;
            }
        }
    }
}
