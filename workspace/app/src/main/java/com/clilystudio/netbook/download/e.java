
package com.clilystudio.netbook.download;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcelable;
import java.io.File;

public final class e {

    public static final String a = new StringBuilder().append( Environment.getExternalStorageDirectory().getAbsolutePath() ).append( File.separator ).append( "Android/data/com.manhuadao.download/file/" ).toString();
    public static final String b = new StringBuilder().append( Environment.getExternalStorageDirectory() ).append( File.separator ).append( "Android/data/com.manhuadao.download/shortcut.png" ).toString();

    public static Boolean a(String String1, String String2)
    {
        Boolean Boolean4;

        try
        {
            if( new File( String1, String2 ).exists() )
                return Boolean4;
            Boolean4 = Boolean.valueOf( false );
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return Boolean.valueOf( false );
        }
        return Boolean4;
    }

    public static void a(Context Context1, String String2, String String3)
    {
        File File4 = new File( String2, String3 );

        if( File4.exists() )
        {
            Intent Intent5 = new Intent( "com.android.launcher.action.INSTALL_SHORTCUT" );
            Object Object9;

            Intent5.putExtra( "duplicate", false );
            Intent5.putExtra( "android.intent.extra.shortcut.NAME", String3 );
            Intent5.putExtra( "android.intent.extra.shortcut.ICON", (Parcelable) BitmapFactory.decodeFile( b ) );
            Object9 = new Intent( "android.intent.action.VIEW" );
            ((Intent) Object9).setDataAndType( Uri.parse( new StringBuilder( "file://" ).append( File4.toString() ).toString() ), "application/vnd.android.package-archive" );
            Intent5.putExtra( "android.intent.extra.shortcut.INTENT", (Parcelable) Object9 );
            Context1.sendBroadcast( Intent5 );
        }
    }

    public static boolean a(Context Context1)
    {
        ConnectivityManager ConnectivityManager2 = (ConnectivityManager) Context1.getSystemService( "connectivity" );

        if( ConnectivityManager2 == null )
            return false;
        else
        {
            int int4;

            try
            {
                int4 = ConnectivityManager2.getActiveNetworkInfo().getType();
            }
            catch( Exception Exception3 )
            {
                Exception3.printStackTrace();
                return false;
            }
            if( int4 == 1 )
                return true;
            else
                return false;
        }
    }

    public static boolean a(Context Context1, String String2)
    {
        PackageManager PackageManager3 = Context1.getPackageManager();
        PackageInfo PackageInfo5;
        boolean boolean6;

        try
        {
            PackageInfo5 = PackageManager3.getPackageInfo( String2, 0 );
        }
        catch( PackageManager$NameNotFoundException NameNotFoundException4 )
        {
            NameNotFoundException4.printStackTrace();
            return false;
        }
        boolean6 = false;
        if( PackageInfo5 != null )
            boolean6 = true;
        return boolean6;
    }

    public static void b(Context Context1, String String2, String String3)
    {
        File File4 = new File( String2, String3 );

        if( File4.exists() )
        {
            Intent Intent5 = new Intent( "com.android.launcher.action.UNINSTALL_SHORTCUT" );
            Object Object9;

            Intent5.putExtra( "duplicate", false );
            Intent5.putExtra( "android.intent.extra.shortcut.NAME", String3 );
            Intent5.putExtra( "android.intent.extra.shortcut.ICON", (Parcelable) BitmapFactory.decodeFile( b ) );
            Object9 = new Intent( "android.intent.action.VIEW" );
            ((Intent) Object9).setDataAndType( Uri.parse( new StringBuilder( "file://" ).append( File4.toString() ).toString() ), "application/vnd.android.package-archive" );
            Intent5.putExtra( "android.intent.extra.shortcut.INTENT", (Parcelable) Object9 );
            Context1.sendBroadcast( Intent5 );
        }
    }
}
