package com.clilystudio.netbook.api;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

import com.clilystudio.netbook.MyApplication;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Locale;

public class f {
    private static f b = null;
    private String a = null;
    private String c = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2";
    private String d = "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";
    private String e = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30";

    public static f a() {
        if (b == null)
            b = new f();
        return b;
    }

    private static String a(String paramString) {
        if (paramString == null) {
            paramString = "not-found";
            return paramString;
        }
        switch (paramString.length()) {
            case 0:
            default:
                return Character.toUpperCase(paramString.charAt(0)) + paramString.substring(1);
            case 1:
        }
        return paramString.toUpperCase();
    }

    public final String a(int paramInt) {
        switch (paramInt) {
            case 4:
            case 5:
            default:
                return null;
            case 6:
                return "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3";
            case 7:
                return this.c;
            case 8:
                return this.d;
            case 3:
        }
        return this.e;
    }

    public final String b() {
        if (a == null) {
            MyApplication application = MyApplication.a();
            PackageInfo packageInfo = null;
            try {
                packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e1) {
                e1.printStackTrace();
            }
            String v4 = "not-found";
            if (packageInfo != null) {
                v4 = packageInfo.versionName;
            }
            TelephonyManager v0 = (TelephonyManager) application.getSystemService(Context.TELEPHONY_SERVICE);
            String v01 = v0.getSimOperatorName();
            Object[] v7 = new Object[8];
            v7[0] = "ZhuiShuShenQi";
            v7[1] = v4;
            v7[2] = Build.VERSION.RELEASE;
            v7[3] = a(Build.MANUFACTURER);
            v7[4] = a(Build.DEVICE);
            v7[5] = a(Build.BRAND);
            v7[6] = a(Build.MODEL);
            v7[7] = a(v01);
            this.a = String.format("%s/%s (Android %s; %s %s / %s %s; %s)", v7);
            ArrayList v3 = new ArrayList();
            StringBuilder v4 = new StringBuilder("preload=");
            v4 = v4.append((application.getApplicationInfo().flags & 0x1) == 1);
            v3.add(v4.toString());
            StringBuilder v02 = new StringBuilder("locale=");
            v02 = v02.append(Locale.getDefault());
            v3.add(v02.toString());
            Class<?> loadClass = null;
            try {
                loadClass = application.getClassLoader().loadClass("android.os.SystemProperties");
                Class[] v2 = new Class[1];
                v2[0] = String.class;
                Method method = loadClass.getMethod("get", v2);
                StringBuilder v21 = new StringBuilder("clientidbase=");
                Object[] v41 = new Object[1];
                v41[0] = "ro.com.google.clientidbase";
                v21 = v21.append(method.invoke(loadClass, v41));
                v3.add(v21.toString());

                if (v3.size() > 0) {
                    StringBuilder v0 = new StringBuilder();
                    v0 = v0.append(this.a);
                    v0 = v0.append("[");
                    v0 = v0.append(TextUtils.join(";", v3));
                    v0 = v0.append("]");
                    this.a = v0.toString();
                }
            } catch (ClassNotFoundException | InvocationTargetException | IllegalAccessException | NoSuchMethodException e1) {
                e1.printStackTrace();
            }
        }
        return this.a;
    }
}
