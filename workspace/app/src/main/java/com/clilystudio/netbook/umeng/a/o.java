
package com.clilystudio.netbook.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import u.aly.bs;
import u.aly.bt;
import u.aly.bx;

public final class o {

    private static Context b;
    private static String c;
    private static o a = new o();
    private static long d = 2097152L;

    public static o a(Context Context1)
    {
        if( b == null )
            b = Context1.getApplicationContext();
        if( c == null )
            c = Context1.getPackageName();
        return a;
    }

    public static void a(int int1, int int2)
    {
        SharedPreferences$Editor Editor4;

        a( b );
        Editor4 = g().edit();
        Editor4.putInt( "umeng_net_report_policy", int1 );
        Editor4.putLong( "umeng_net_report_interval", (long) int2 );
        Editor4.commit();
    }

    public static SharedPreferences g()
    {
        return b.getSharedPreferences( new StringBuilder( "mobclick_agent_online_setting_" ).append( c ).toString(), 0 );
    }

    private static String h()
    {
        return new StringBuilder( "mobclick_agent_cached_" ).append( c ).append( bs.a( b ) ).toString();
    }

    private static String i()
    {
        return new StringBuilder( "mobclick_agent_sealed_" ).append( c ).toString();
    }

    public final void a(byte[] byte_1darray1)
    {
        String String2 = h();

        try
        {
            bx.a( new File( b.getFilesDir(), String2 ), byte_1darray1 );
        }
        catch( Exception Exception3 )
        {
            bt.b( "MobclickAgent", Exception3.getMessage() );
            return;
        }
    }

    public final int[] a()
    {
        SharedPreferences SharedPreferences1 = g();
        int[] int_1darray2 = new int[2];

        if( SharedPreferences1.getInt( "umeng_net_report_policy", -1 ) != -1 )
        {
            int_1darray2[0] = SharedPreferences1.getInt( "umeng_net_report_policy", 1 );
            int_1darray2[1] = (int) SharedPreferences1.getLong( "umeng_net_report_interval", 0L );
        }
        else
        {
            int_1darray2[0] = SharedPreferences1.getInt( "umeng_local_report_policy", 1 );
            int_1darray2[1] = (int) SharedPreferences1.getLong( "umeng_local_report_interval", 0L );
        }
        return int_1darray2;
    }

    public final void b(byte[] byte_1darray1)
    {
        try
        {
            bx.a( new File( b.getFilesDir(), i() ), byte_1darray1 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }

    public final byte[] b()
    {
        String String1 = h();
        File File2 = new File( b.getFilesDir(), String1 );
        long long3 = File2.length();
        int int5;

        if( File2.exists() && long3 > d )
            int5 = 1;
        else
            int5 = 0;
        if( int5 != 0 )
            File2.delete();
        else if( File2.exists() )
        {
            Object Object7;
            Object Object8;
            Object Object10;
            byte[] byte_1darray11;

            try
            {
                Object10 = b.openFileInput( String1 );
            }
            catch( Exception Exception9 )
            {
                Object7 = null;
                try
                {
                    Exception9.printStackTrace();
                }
                finally
                {
                    bx.c( (InputStream) Object7 );
                    throw Object8;
                }
                bx.c( (InputStream) Object7 );
                return null;
            }
            finally
            {
                Object7 = null;
                Object8 = Object6;
                bx.c( (InputStream) Object7 );
                throw Object8;
            }
            Object7 = Object10;
            try
            {
                byte_1darray11 = bx.b( (InputStream) Object7 );
            }
            catch( Exception Exception12 )
            {
                Exception12.printStackTrace();
                bx.c( (InputStream) Object7 );
                return null;
            }
            finally
            {
                bx.c( (InputStream) Object7 );
                throw Object8;
            }
            bx.c( (InputStream) Object7 );
            return byte_1darray11;
        }
        return null;
    }

    public final void c()
    {
        b.deleteFile( new StringBuilder( "mobclick_agent_header_" ).append( c ).toString() );
        b.deleteFile( h() );
    }

    public final byte[] d()
    {
        String String1 = i();
        File File2 = new File( b.getFilesDir(), String1 );
        long long5;

        try
        {
            if( !File2.exists() )
                return null;
            long5 = File2.length();
        }
        catch( Exception Exception3 )
        {
            File2.delete();
            Exception3.printStackTrace();
            return null;
        }
        if( long5 <= 0L )
            return null;
        else
        {
            Object Object8;
            Object Object10;
            byte[] byte_1darray11;

            try
            {
                Object10 = b.openFileInput( String1 );
            }
            catch( Exception Exception9 )
            {
                Object8 = null;
                try
                {
                    Exception9.printStackTrace();
                }
                finally
                {
                    try
                    {
                        bx.c( (InputStream) Object8 );
                        throw Object7;
                    }
                    catch( Exception Exception12 )
                    {
                        File2.delete();
                        Exception12.printStackTrace();
                        return null;
                    }
                }
                try
                {
                    bx.c( (InputStream) Object8 );
                }
                catch( Exception Exception13 )
                {
                    File2.delete();
                    Exception13.printStackTrace();
                }
                return null;
            }
            finally
            {
                Object8 = null;
                bx.c( (InputStream) Object8 );
                throw Object7;
            }
            Object8 = Object10;
            try
            {
                byte_1darray11 = bx.b( (InputStream) Object8 );
            }
            catch( Exception Exception14 )
            {
                Exception14.printStackTrace();
                bx.c( (InputStream) Object8 );
                return null;
            }
            finally
            {
                bx.c( (InputStream) Object8 );
                throw Object7;
            }
            try
            {
                bx.c( (InputStream) Object8 );
            }
            catch( Exception Exception15 )
            {
                File2.delete();
                Exception15.printStackTrace();
                return null;
            }
            return byte_1darray11;
        }
    }

    public final void e()
    {
        String String1 = i();
        boolean boolean2 = b.deleteFile( String1 );

        bt.a( "--->", new StringBuilder( "delete envelope:" ).append( boolean2 ).toString() );
    }

    public final boolean f()
    {
        String String1 = i();
        File File2 = new File( b.getFilesDir(), String1 );

        if( !File2.exists() || File2.length() <= 0L )
            return false;
        else
            return true;
    }
}
