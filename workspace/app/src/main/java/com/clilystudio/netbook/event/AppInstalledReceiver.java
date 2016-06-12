
package com.clilystudio.netbook.event;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import com.clilystudio.netbook.download.e;
import java.util.HashSet;
import java.util.Set;

public class AppInstalledReceiver extends BroadcastReceiver {

    public void onReceive(Context Context1, Intent Intent2)
    {
        String String3 = Intent2.getDataString();
        SharedPreferences SharedPreferences4 = Context1.getSharedPreferences( "downloadInfo", 0 );
        String[] String_1darray5 = String3.split( ":" );

        if( String3 != null && String_1darray5.length == 2 && SharedPreferences4.getString( "packageName", "" ).equals( String_1darray5[1] ) )
        {
            String String6 = SharedPreferences4.getString( "apkName", "" );
            Set Set7;
            SharedPreferences$Editor Editor8;

            e.b( Context1, SharedPreferences4.getString( "apkSavePath", "" ), String6 );
            Set7 = SharedPreferences4.getStringSet( "uninstallShortcut", (Set) new HashSet() );
            Editor8 = Context1.getSharedPreferences( "downloadInfo", 0 ).edit();
            Set7.add( SharedPreferences4.getString( "packageName", "" ) );
            Editor8.apply();
        }
        else
            Context1.sendBroadcast( new Intent( "update_game_item_status" ) );
    }
}
