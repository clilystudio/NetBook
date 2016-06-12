
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import com.clilystudio.netbook.download.e;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

final class a implements Runnable {

    a(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    public final void run()
    {
        int int1 = 1;
        long long2 = com.clilystudio.netbook.hpay100.a.a.c( (Context) a, "PREF_FIRST_LAUNCH_TIME", 0L );
        int int4;

        if( Calendar.getInstance().getTimeInMillis() - long2 >= 604800000L )
            int4 = int1;
        else
            int4 = 0;
        if( int4 != 0 )
        {
            com.clilystudio.netbook.download.a a5 = com.clilystudio.netbook.hpay100.a.a.I( (Context) a );

            if( a5 != null )
            {
                String String6;
                SharedPreferences SharedPreferences7;
                Set Set8;
                int int9;
                Set Set10;

                a5.a();
                String6 = a5.b();
                SharedPreferences7 = a.getSharedPreferences( "downloadInfo", 0 );
                Set8 = SharedPreferences7.getStringSet( "uninstallShortcut", (Set) new HashSet() );
                if( Set8 != null && Set8.contains( String6 ) )
                    int9 = int1;
                else
                    int9 = 0;
                Set10 = SharedPreferences7.getStringSet( "downloadedPackage", null );
                if( Set10 == null || !Set10.contains( String6 ) )
                    int1 = 0;
                if( int1 != 0 && int9 == 0 )
                {
                    String String11 = SharedPreferences7.getString( "apkName", "" );
                    String String12 = SharedPreferences7.getString( "apkSavePath", "" );
                    SharedPreferences$Editor Editor13;

                    e.b( (Context) a, String12, String11 );
                    Editor13 = a.getSharedPreferences( "downloadInfo", 0 ).edit();
                    Set8.add( String6 );
                    Editor13.putStringSet( "uninstallShortcut", Set8 );
                    Editor13.apply();
                }
            }
        }
    }
}
