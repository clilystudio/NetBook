package com.clilystudio.netbook.event;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

import com.clilystudio.netbook.download.e;

import java.util.HashSet;
import java.util.Set;

public class AppInstalledReceiver
        extends BroadcastReceiver {
    @TargetApi(value = 11)
    @Override
    public void onReceive(Context context, Intent intent) {
        String string = intent.getDataString();
        SharedPreferences sharedPreferences = context.getSharedPreferences("downloadInfo", 0);
        String[] arrstring = string.split(":");
        if (string != null && arrstring.length == 2 && sharedPreferences.getString("packageName", "").equals(arrstring[1])) {
            String string2 = sharedPreferences.getString("apkName", "");
            e.b(context, sharedPreferences.getString("apkSavePath", ""), string2);
            Set<String> set = sharedPreferences.getStringSet("uninstallShortcut", new HashSet<String>());
            SharedPreferences.Editor editor = context.getSharedPreferences("downloadInfo", 0).edit();
            set.add(sharedPreferences.getString("packageName", ""));
            editor.apply();
            return;
        }
        context.sendBroadcast(new Intent("update_game_item_status"));
    }
}
