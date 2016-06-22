package com.clilystudio.netbook.download;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;

import java.util.Set;

public class ConnectionChangeReceiver extends BroadcastReceiver {
    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    @Override
    public void onReceive(Context context, Intent intent) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager != null && (networkInfo = connectivityManager.getNetworkInfo(1)) != null && networkInfo.isConnected()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("downloadInfo", 0);
            String string = sharedPreferences.getString("apkName", "");
            String string2 = sharedPreferences.getString("apkUrl", "");
            String string3 = sharedPreferences.getString("iconUrl", "");
            String string4 = sharedPreferences.getString("packageName", "");
            Set<String> set = sharedPreferences.getStringSet("downloadedPackage", null);
            boolean bl = set != null && set.contains(string4);
            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !bl) {
                new a(context, string, string2, string3, string4).a();
            }
        }
    }
}
