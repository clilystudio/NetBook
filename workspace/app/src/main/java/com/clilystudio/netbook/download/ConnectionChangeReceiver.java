package com.clilystudio.netbook.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import java.util.Set;

public class ConnectionChangeReceiver extends BroadcastReceiver {

    public void onReceive(Context Context1, Intent Intent2) {
        ConnectivityManager ConnectivityManager3 = (ConnectivityManager) Context1.getSystemService("connectivity");

        if (ConnectivityManager3 != null) {
            NetworkInfo NetworkInfo4 = ConnectivityManager3.getNetworkInfo(1);

            if (NetworkInfo4 != null && NetworkInfo4.isConnected()) {
                SharedPreferences SharedPreferences5 = Context1.getSharedPreferences("downloadInfo", 0);
                Object Object6 = SharedPreferences5.getString("apkName", "");
                Object Object7 = SharedPreferences5.getString("apkUrl", "");
                String String8 = SharedPreferences5.getString("iconUrl", "");
                String String9 = SharedPreferences5.getString("packageName", "");
                Set Set10 = SharedPreferences5.getStringSet("downloadedPackage", null);
                int int11;

                if (Set10 != null && Set10.contains(String9))
                    int11 = 1;
                else
                    int11 = 0;
                if (!android.text.TextUtils.isEmpty((CharSequence) Object6) && !android.text.TextUtils.isEmpty((CharSequence) Object7) && int11 == 0)
                    new a(Context1, (String) Object6, (String) Object7, String8, String9).a();
            }
        }
    }
}
