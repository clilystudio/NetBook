package com.clilystudio.netbook.download;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Environment;

import java.io.File;

public final class e {
    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "Android/data/com.manhuadao.download/file/";
    public static final String b = Environment.getExternalStorageDirectory() + File.separator + "Android/data/com.manhuadao.download/shortcut.png";

    public static Boolean a(String string, String string2) {
        try {
            if (!new File(string, string2).exists()) {
                return false;
            }
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return false;
        }
        return true;
    }

    public static void a(Context context, String string, String string2) {
        File file = new File(string, string2);
        if (!file.exists()) {
            return;
        }
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent.putExtra("duplicate", false);
        intent.putExtra("android.intent.extra.shortcut.NAME", string2);
        intent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeFile(b));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setDataAndType(Uri.parse("file://" + file.toString()), "application/vnd.android.package-archive");
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        context.sendBroadcast(intent);
    }

    public static boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager == null) {
            return false;
        }
        try {
            int n = connectivityManager.getActiveNetworkInfo().getType();
            return n == 1;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, String string) {
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(string, 0);
            boolean bl = false;
            if (packageInfo != null) {
                bl = true;
            }
            return bl;
        } catch (PackageManager.NameNotFoundException var3_5) {
            var3_5.printStackTrace();
            return false;
        }
    }

    public static void b(Context context, String string, String string2) {
        File file = new File(string, string2);
        if (!file.exists()) {
            return;
        }
        Intent intent = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
        intent.putExtra("duplicate", false);
        intent.putExtra("android.intent.extra.shortcut.NAME", string2);
        intent.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeFile(b));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setDataAndType(Uri.parse("file://" + file.toString()), "application/vnd.android.package-archive");
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        context.sendBroadcast(intent);
    }
}
