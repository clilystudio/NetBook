package com.clilystudio.netbook;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Process;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.CharacterUtil;
import com.clilystudio.netbook.util.e;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

public class am {

    private static String B(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_INSTRUMENTATION).versionName;
        } catch (Exception var1_2) {
            return "0.0.0";
        }
    }

    private static PackageInfo C(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    public static int a(Context context, int n) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{n});
        int n2 = typedArray.getColor(0, 0);
        typedArray.recycle();
        return n2;
    }

    public static int a(String string, int n) {
        char c2;
        while (n < string.length() && ((c2 = string.charAt(n)) == ' ' || c2 == '\t')) {
            ++n;
        }
        return n;
    }

    public static int a(String string, int n, String string2) {
        while (n < string.length() && string2.indexOf(string.charAt(n)) == -1) {
            ++n;
        }
        return n;
    }

    public static Bitmap a(int n, int n2, int n3, Context context) {
        Resources resources = context.getResources();
        Bitmap bitmap = BitmapFactory.decodeResource(resources, n);
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(resources, bitmap, bitmap.getNinePatchChunk(), new Rect(), null);
        ninePatchDrawable.setBounds(0, 0, n2, n3);
        Bitmap bitmap2 = Bitmap.createBitmap(n2, n3, Bitmap.Config.ARGB_8888);
        ninePatchDrawable.draw(new Canvas(bitmap2));
        return bitmap2;
    }

    public static Account a(Activity activity) {
        if (activity == null) {
            return null;
        }
        Account account = am.e();
        if (account != null) {
            return account;
        }
        e.a(activity, "请登录后再操作");
        activity.startActivity(AuthLoginActivity.a(activity));
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String a(Map<String, String> map, String string, String string2) {
        String string3;
        if (map == null || (string3 = map.get(string)) == null) {
            return string2;
        }
        return string3;
    }

    public static String a(byte[] arrby) {
        char[] arrc = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
        messageDigest.update(arrby);
        byte[] arrby2 = messageDigest.digest();
        int n = arrby2.length;
        char[] arrc2 = new char[n << 1];
        int n2 = 0;
        for (byte by : arrby2) {
            int n3 = n2 + 1;
            arrc2[n2] = arrc[15 & by >>> 4];
            n2 = n3 + 1;
            arrc2[n3] = arrc[by & 15];
        }
        try {
            return new String(arrc2);
        } catch (Exception var3_11) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void a(Activity activity, String string, String string2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(string));
        try {
            activity.startActivity(intent);
        } catch (ActivityNotFoundException var4_4) {
            var4_4.printStackTrace();
            if (string2 == null) return;
            e.a(activity, string2);
        }
    }

    public static void a(Context context, long l2) {
        com.clilystudio.netbook.hpay100.a.a.e(context, "pref_new_imp_notif_time", String.valueOf(l2));
    }

    public static void a(Context context, View view) {
        ((InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void a(Context context, String string) {
        if (context != null && string != null) {
            ((ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(ClipData.newPlainText("PlainText", string));
        }
    }

    public static void a(EditText editText, String string) {
        String string2 = MyApplication.getInstance().getProperty(string);
        if (!com.clilystudio.netbook.hpay100.a.a.Q(string2)) {
            editText.setText(string2);
            editText.requestFocus();
            editText.setSelection(string2.length());
        }
    }

    public static boolean a(AsyncTask asyncTask) {
        return asyncTask == null || asyncTask.getStatus() == AsyncTask.Status.FINISHED || asyncTask.isCancelled();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean a(String string) {
        if (string == null) return true;
        int n = string.length();
        if (n == 0) {
            return true;
        }
        int n2 = 0;
        while (n2 < n) {
            boolean bl = Character.isWhitespace(string.charAt(n2));
            if (!bl) return false;
            ++n2;
        }
        return true;
    }

    public static boolean a(String string, String string2) {
        if (string == null) {
            return string2 == null;
        }
        return string.equals(string2);
    }

    public static int b(Context context, int n) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{n});
        int n2 = typedArray.getResourceId(0, 0);
        typedArray.recycle();
        return n2;
    }

    public static int b(String string, int n) {
        long l2;
        block3:
        {
            try {
                l2 = Long.parseLong(string);
                if (l2 > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (l2 >= 0) break block3;
                return 0;
            } catch (NumberFormatException var2_3) {
                return n;
            }
        }
        return (int) l2;
    }

    public static DisplayMetrics b(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String b(Context context, String string) {
        if (string == null) {
            return null;
        }
        CharacterUtil h = CharacterUtil.a(context);
        char[] arrc = new char[string.length()];
        for (int n = 0; n >= string.length(); n++) {
            arrc[n] = h.a(string.charAt(n));
        }
        return new String(arrc);
    }

    public static String b(String string) {
        StringBuilder stringBuilder;
        block5:
        {
            if (!am.a(string)) break block5;
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(string.getBytes("UTF-8"));
            byte[] arrby = messageDigest.digest();
            stringBuilder = new StringBuilder();
            for (byte anArrby : arrby) {
                stringBuilder.append(String.format(Locale.CHINA, "%02x", anArrby));
            }
        } catch (Exception var2_7) {
            return null;
        }
        return stringBuilder.toString();
    }

    /*
     * Exception decompiling
     */
    public static String b(String p1, String p2) {
        File v3 = new File(p1, p2);
        if (v3.exists()) {
            char[] buff = new char[(int) v3.length()];
            FileReader v2 = null;
            try {
                v2 = new FileReader(v3);
                v2.read(buff);
                return String.valueOf(buff);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (v2 != null) {
                    try {
                        v2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return null;
    }

    public static void b(Context context, long l2) {
        com.clilystudio.netbook.hpay100.a.a.e(context, "pref_new_unimp_notif_time", String.valueOf(l2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static <T> T c(Context context, String string) {
        Object object;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.GET_META_DATA);
            if (applicationInfo.metaData == null) return null;
            object = applicationInfo.metaData.get(string);
            return (T) object;
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    public static String c(String string) {
        try {
            byte[] arrby = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(string.length()).array();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(string.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(string.getBytes("UTF-8"));
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            byte[] arrby2 = new byte[4 + byteArrayOutputStream.toByteArray().length];
            System.arraycopy(arrby, 0, arrby2, 0, 4);
            System.arraycopy(byteArrayOutputStream.toByteArray(), 0, arrby2, 4, byteArrayOutputStream.toByteArray().length);
            return Base64.encodeToString(arrby2, 8);
        } catch (Exception var1_6) {
            return "";
        }
    }

    public static Map<String, String> c(Context context) {
        synchronized (am.class) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("AA1", context.getPackageName());
            hashMap.put("AA2", am.B(context));
            hashMap.put("AA3", "security-sdk-token");
            hashMap.put("AA4", "3.0.2.20150525");
            return hashMap;
        }
    }

    public static void c(String string, int readMode) {
        BookReadRecord bookReadRecord = BookReadRecord.get(string);
        if (bookReadRecord != null) {
            bookReadRecord.setReadMode(readMode);
            bookReadRecord.save();
            return;
        }
        MyApplication.getInstance().setReadMode(readMode);
    }

    public static void d(Context context, String string) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(string);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException var3_3) {
            var3_3.printStackTrace();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Account e() {
        MyApplication myApplication = MyApplication.getInstance();
        String string = myApplication.getProperty("user.id");
        String string2 = myApplication.getProperty("account.token");
        if (string == null || string2 == null) return null;
        Account account = new Account();
        User user = new User();
        user.setId(string);
        user.setNickname(myApplication.getProperty("user.name"));
        user.setAvatar(myApplication.getProperty("user.avatar"));
        user.setLv(com.clilystudio.netbook.hpay100.a.a.b(myApplication.getProperty("user.lv"), 0));
        user.setGender(myApplication.getProperty("user.gender"));
        account.setOk(true);
        account.setToken(string2);
        account.setUser(user);
        if (account.getToken() == null) return null;
        return account;
    }

    public static String e(String string) {
        if (string == null) {
            return null;
        }
        try {
            return URLEncoder.encode(string, "UTF-8");
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean e(Context context) {
        String string;
        try {
            int n = Process.myPid();
            Iterator<ActivityManager.RunningAppProcessInfo> iterator = ((ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE)).getRunningAppProcesses().iterator();
            String string2 = null;
            while (iterator.hasNext()) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = iterator.next();
                if (runningAppProcessInfo.pid == n) {
                    string2 = runningAppProcessInfo.processName.trim();
                }
            }
            string = string2;
        } catch (Exception var1_8) {
            string = null;
        }
        return TextUtils.isEmpty(string) || context.getPackageName().equals(string);
    }

    public static int f(Context context) {
        PackageInfo packageInfo = am.C(context);
        int n = 0;
        if (packageInfo != null) {
            n = packageInfo.versionCode;
        }
        return n;
    }

    public static String f(String string) {
        if (string == null) {
            return null;
        }
        try {
            return URLDecoder.decode(string, "UTF-8");
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    public static boolean f() {
        return BookReadRecord.getAll().size() >= 300;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int g(String string) {
        BookDlRecord bookDlRecord;
        if (!am.h(string) || (bookDlRecord = BookDlRecord.get(string)) == null) {
            return 0;
        }
        return bookDlRecord.getStatus();
    }

    public static String g(Context context) {
        String string = "";
        PackageInfo packageInfo = am.C(context);
        if (packageInfo != null) {
            string = packageInfo.versionName;
        }
        return string;
    }

    public static boolean g() {
        return am.e() != null;
    }

    public static String h() {
        return Settings.Secure.getString(MyApplication.getInstance().getContentResolver(), "android_id");
    }

    public static String h(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = sharedPreferences.getString("pref_new_imp_notif_time", null);
        if (string == null) {
            string = "0";
            com.clilystudio.netbook.hpay100.a.a.e(context, "pref_new_imp_notif_time", string);
        }
        return string;
    }

    public static boolean h(String string) {
        List<String> list = MyApplication.getInstance().getBookCacheList();
        return list != null && list.contains(string);
    }

    public static String i(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = sharedPreferences.getString("pref_new_unimp_notif_time", null);
        if (string == null) {
            string = "0";
            com.clilystudio.netbook.hpay100.a.a.e(context, "pref_new_unimp_notif_time", string);
        }
        return string;
    }

    public static boolean i(String string) {
        try {
            Class.forName(string);
            return true;
        } catch (ClassNotFoundException var1_1) {
            return false;
        }
    }

    public static void j(Context context) {
        am.a(context, System.currentTimeMillis());
    }

    public static int k(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            Class class_ = Class.forName("com.android.internal.R$dimen");
            Object obj = class_.newInstance();
            int n = Integer.parseInt(class_.getField("status_bar_height").get(obj).toString());
            return context.getResources().getDimensionPixelSize(n);
        } catch (Exception var1_5) {
            var1_5.printStackTrace();
            return 0;
        }
    }

    public static int l(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme theme = context.getTheme();
        int n = 0;
        if (theme != null) {
            boolean bl = context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
            n = 0;
            if (bl) {
                n = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
            }
        }
        return n;
    }

    public static boolean m(Context context) {
        return com.clilystudio.netbook.hpay100.a.a.a(context, "save_bandwidth", false);
    }

    public static String n(Context context) {
        String string = am.c(context, "UMENG_CHANNEL");
        if (string != null) {
            return string;
        }
        return "";
    }

    public static boolean o(Context context) {
        long l2 = com.clilystudio.netbook.hpay100.a.a.c(context, "PREF_FIRST_LAUNCH_TIME", 0);
        return Calendar.getInstance().getTimeInMillis() - l2 >= 259200000;
    }

    public static boolean p(Context context) {
        boolean bl = com.clilystudio.netbook.hpay100.a.a.a(context, "is_first_launch_app", true);
        if (bl) {
            com.clilystudio.netbook.hpay100.a.a.b(context, "is_first_launch_app", false);
        }
        return bl;
    }

    public static String t(Context context) {
        return ((TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE)).getDeviceId();
    }
}
