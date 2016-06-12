
package com.clilystudio.netbook.umeng.update;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.K;
import com.clilystudio.netbook.umeng.update.net.w;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;

public final class b {

    private static Context d;
    private static Handler f;
    private static K a = null;
    private static a b = null;
    private static K c = null;
    private static o e = new o();

    static Context a()
    {
        return d;
    }

    private static File a(Context Context1, UpdateResponse UpdateResponse2)
    {
        String String3 = new StringBuilder( String.valueOf( UpdateResponse2.new_md5 ) ).append( ".apk" ).toString();
        File File4;
        boolean boolean6;

        try
        {
            File4 = new File( w.a( "/apk", Context1, new boolean[1] ), String3 );
            if( !File4.exists() )
                return null;
            boolean6 = UpdateResponse2.new_md5.equalsIgnoreCase( u.a.g.a( File4 ) );
        }
        catch( IOException IOException5 )
        {
            IOException5.printStackTrace();
            return null;
        }
        if( boolean6 )
            return File4;
        else
            return null;
    }

    static void a(int int1, Context Context2, UpdateResponse UpdateResponse3, File File4)
    {
        switch( int1 )
        {
            case 5:
                if( File4 == null )
                    b( Context2, UpdateResponse3 );
                else
                {
                    Intent Intent5 = new Intent( "android.intent.action.VIEW" );

                    Intent5.addFlags( 268435456 );
                    Intent5.setDataAndType( Uri.fromFile( File4 ), "application/vnd.android.package-archive" );
                    Context2.startActivity( Intent5 );
                }
                break;
            case 7:
                k.a( Context2, UpdateResponse3.new_md5 );
                break;
            case 6:
            default:
                break;
        }
        if( b != null )
            b.a( int1 );
    }

    static void a(int int1, UpdateResponse UpdateResponse2)
    {
        b( int1, UpdateResponse2 );
    }

    public static void a(Context Context1)
    {
        Context Context2;

        k.a( false );
        k.b( false );
        Context2 = Context1.getApplicationContext();
label_45:
        {
label_37:
            {
                if( Context2 == null )
                {
                    try
                    {
                        u.a.b.b( "update", "unexpected null context in update" );
                    }
                    catch( Exception Exception3 )
                    {
                        u.a.b.b( "update", "Exception occurred in Mobclick.update(). ", Exception3 );
                        return;
                    }
                }
                else
                {
                    try
                    {
                        f = (Handler) new c( Context2.getMainLooper() );
                        c( Context2 );
                        if( u.a.a.c( Context2 ) )
                            break label_45;
                        if( !com.clilystudio.netbook.umeng.update.k.e() )
                            break label_37;
                        b( 2, null );
                    }
                    catch( Exception Exception4 )
                    {
                        u.a.b.b( "update", "Exception occurred in Mobclick.update(). ", Exception4 );
                        return;
                    }
                }
                return;
            }
            try
            {
                if( !com.clilystudio.netbook.umeng.update.k.a() || k.c() )
                    break label_45;
                b( 2, null );
            }
            catch( Exception Exception5 )
            {
                u.a.b.b( "update", "Exception occurred in Mobclick.update(). ", Exception5 );
                return;
            }
            return;
        }
label_62:
        {
            try
            {
                if( !e.a() )
                    break label_62;
                b( 4, null );
                u.a.b.a( "update", "Is updating now." );
                f.post( (Runnable) new d( Context2 ) );
            }
            catch( Exception Exception6 )
            {
                u.a.b.b( "update", "Exception occurred in Mobclick.update(). ", Exception6 );
                return;
            }
            return;
        }
        try
        {
            d = Context2;
            new Thread( (Runnable) new j( Context2.getApplicationContext() ) ).start();
        }
        catch( Exception Exception7 )
        {
            u.a.b.b( "update", "Exception occurred in Mobclick.update(). ", Exception7 );
            return;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(Context Context1, UpdateResponse UpdateResponse2, int int3)
    {
    }

    public static void a(a a1)
    {
        b = a1;
    }

    static K b()
    {
        return null;
    }

    private static void b(int int1, UpdateResponse UpdateResponse2)
    {
        Message Message3 = new Message();

        Message3.what = int1;
        Message3.obj = UpdateResponse2;
        f.sendMessage( Message3 );
    }

    static void b(Context Context1)
    {
        d = null;
    }

    private static void b(Context Context1, UpdateResponse UpdateResponse2)
    {
        if( UpdateResponse2.delta && k.d() )
        {
            e.a( Context1, UpdateResponse2.origin, UpdateResponse2.new_md5, UpdateResponse2.path, UpdateResponse2.patch_md5, null );
            e.b();
        }
        else
        {
            e.a( Context1, UpdateResponse2.path, UpdateResponse2.new_md5, null, null, null );
            e.c();
        }
    }

    private static boolean c(Context Context1)
    {
        boolean boolean5;

label_33:
        {
            if( k.g() )
            {
                boolean boolean3;

                try
                {
                    boolean3 = Class.forName( new StringBuilder( String.valueOf( Context1.getPackageName() ) ).append( ".BuildConfig" ).toString() ).getField( "DEBUG" ).getBoolean( null );
                }
                catch( Exception Exception2 )
                {
                    return true;
                }
                if( boolean3 )
                {
                    try
                    {
                        if( k.a( Context1 ) != null )
                            break label_33;
                        f.post( (Runnable) new e( Context1 ) );
                    }
                    catch( Exception Exception4 )
                    {
                        boolean5 = false;
                    }
                    return boolean5;
                }
            }
            return true;
        }
        try
        {
            PackageInfo PackageInfo6 = Context1.getPackageManager().getPackageInfo( Context1.getPackageName(), 4101 );
            ActivityInfo[] ActivityInfo_1darray7 = PackageInfo6.activities;
        }
        catch( Exception Exception26 )
        {
            boolean5 = false;
        }
    }
}
