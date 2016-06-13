package com.clilystudio.netbook.ui.home;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;

import com.clilystudio.netbook.download.e;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

final class a
        implements Runnable {
    private /* synthetic */ HomeActivity a;

    a(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value = 11)
    @Override
    public final void run() {
        com.clilystudio.netbook.download.a a2;
        boolean bl = true;
        long l2 = com.clilystudio.netbook.hpay100.a.a.c((Context) this.a, "PREF_FIRST_LAUNCH_TIME", 0);
        if (Calendar.getInstance().getTimeInMillis() - l2 < 604800000) {
            return;
        }
        boolean bl2 = bl;
        if (bl2 && (a2 = com.clilystudio.netbook.hpay100.a.a.I(this.a)) != null) {
            a2.a();
            String string = a2.b();
            SharedPreferences sharedPreferences = this.a.getSharedPreferences("downloadInfo", 0);
            Set<String> set = sharedPreferences.getStringSet("uninstallShortcut", new HashSet<String>());
            boolean bl3 = set != null && set.contains(string) ? bl : false;
            Set<String> set2 = sharedPreferences.getStringSet("downloadedPackage", null);
            if (set2 == null) return;
            if (!set2.contains(string)) {
                return;
            }
            if (bl && !bl3) {
                String string2 = sharedPreferences.getString("apkName", "");
                String string3 = sharedPreferences.getString("apkSavePath", "");
                e.b(this.a, string3, string2);
                SharedPreferences.Editor editor = this.a.getSharedPreferences("downloadInfo", 0).edit();
                set.add(string);
                editor.putStringSet("uninstallShortcut", set);
                editor.apply();
            }
        }
    }
}
