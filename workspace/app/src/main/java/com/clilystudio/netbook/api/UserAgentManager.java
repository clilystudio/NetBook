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

public class UserAgentManager {
    private static UserAgentManager mInstance = null;
    private String mXUserAgent = null;

    private UserAgentManager() {
    }

    public static UserAgentManager getInstance() {
        if (mInstance == null) {
            mInstance = new UserAgentManager();
        }
        return mInstance;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String getBuildInfo(String item) {
        if (item == null) {
            return "not-found";
        }
        switch (item.length()) {
            case 0:
                return item;
            case 1:
                return item.toUpperCase();
            default:
                return "" + Character.toUpperCase(item.charAt(0)) + item.substring(1);
        }
    }

    public final String getUserAgent(int deviceType) {
        switch (deviceType) {
            case 3:
                return "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30";
            case 6:
                return "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3";
            case 7:
                return "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2";
            case 8:
                return "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";
            default:
                return null;
        }
    }

    public final String getXUserAgent() {
        if (this.mXUserAgent == null) {
            synchronized (UserAgentManager.class) {
                ArrayList<String> arrayList;
                PackageInfo packageInfo;
                String string;
                MyApplication myApplication = MyApplication.getInstance();
                try {
                    packageInfo = myApplication.getPackageManager().getPackageInfo(myApplication.getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException var3_14) {
                    packageInfo = null;
                }
                String versionName = packageInfo != null ? packageInfo.versionName : "not-found";
                TelephonyManager telephonyManager = (TelephonyManager) myApplication.getSystemService(Context.TELEPHONY_SERVICE);
                try {
                    string = telephonyManager.getSimOperatorName();
                } catch (Exception var7_15) {
                    string = "not-found";
                }
                Object[] arrobject = new Object[]{"ZhuiShuShenQi", versionName, Build.VERSION.RELEASE, UserAgentManager.getBuildInfo(Build.MANUFACTURER), UserAgentManager.getBuildInfo(Build.DEVICE), UserAgentManager.getBuildInfo(Build.BRAND), UserAgentManager.getBuildInfo(Build.MODEL), UserAgentManager.getBuildInfo(string)};
                this.mXUserAgent = String.format("%s/%s (Android %s; %s %s / %s %s; %s)", arrobject);
                arrayList = new ArrayList<>();
                StringBuilder stringBuilder = new StringBuilder("preload=");
                boolean bl = (1 & myApplication.getApplicationInfo().flags) == 1;
                arrayList.add(stringBuilder.append(bl).toString());
                arrayList.add("locale=" + Locale.getDefault());
                try {
                    Class class_ = myApplication.getClassLoader().loadClass("android.os.SystemProperties");
                    Method method = class_.getMethod("get", String.class);
                    arrayList.add("clientidbase=" + method.invoke(class_, "ro.com.google.clientidbase"));
                } catch (ClassNotFoundException | NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                if (arrayList.size() > 0) {
                    this.mXUserAgent = this.mXUserAgent + "[" + TextUtils.join(";", arrayList) + "]";
                }
            }
        }
        return this.mXUserAgent;
    }
}
