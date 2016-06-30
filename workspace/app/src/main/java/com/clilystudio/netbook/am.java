package com.clilystudio.netbook;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings;
import android.support.design.widget.TabLayout;
import android.telephony.TelephonyManager;
import android.text.ClipboardManager;
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
import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.H;
import com.clilystudio.netbook.util.e;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;

public class am {
    private CharSequence a;
    private int b = -1;
    private final TabLayout c;

    am(TabLayout tabLayout) {
        this.c = tabLayout;
    }

    private static String A(Context context) {
        String string = com.clilystudio.netbook.hpay100.a.a.a(context, "vkeyid_profiles_v3", "deviceid", "");
        if (am.a(string)) {
            return null;
        }
        return b.b(b.a(), string);
    }

    private static String B(Context context) {
        try {
            String string = context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName;
            return string;
        }
        catch (Exception var1_2) {
            return "0.0.0";
        }
    }

    private static PackageInfo C(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo;
        }
        catch (Exception var1_2) {
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
        Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), n);
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(bitmap, bitmap.getNinePatchChunk(), new Rect(), null);
        ninePatchDrawable.setBounds(0, 0, n2, n3);
        Bitmap bitmap2 = Bitmap.createBitmap(n2, n3, Bitmap.Config.ARGB_8888);
        ninePatchDrawable.draw(new Canvas(bitmap2));
        return bitmap2;
    }

    static /* synthetic */ TabLayout a(am am2) {
        return am2.c;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static d a(Context context) {
        synchronized (am.class) {
            String string = am.A(context);
            if (am.a(string)) {
                string = am.i();
            }
            boolean bl = am.a(string);
            d d2 = null;
            if (bl) return d2;
            try {
                JSONObject jSONObject = new JSONObject(string);
                d d3 = new d(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
                return d3;
            }
            catch (Exception var7_6) {
                com.alipay.security.mobile.module.a.a.a(var7_6);
                return null;
            }
        }
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
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(arrby);
        byte[] arrby2 = messageDigest.digest();
        int n = arrby2.length;
        char[] arrc2 = new char[n << 1];
        int n2 = 0;
        for (int j = 0; j < n; ++j) {
            byte by = arrby2[j];
            int n3 = n2 + 1;
            arrc2[n2] = arrc[15 & by >>> 4];
            n2 = n3 + 1;
            arrc2[n3] = arrc[by & 15];
        }
        try {
            String string = new String(arrc2);
            return string;
        }
        catch (Exception var3_11) {
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
            return;
        }
        catch (ActivityNotFoundException var4_4) {
            var4_4.printStackTrace();
            if (string2 == null) return;
            e.a(activity, string2);
            return;
        }
    }

    public static void a(Context context, long l2) {
        a.e(context, "pref_new_imp_notif_time", String.valueOf(l2));
    }

    public static void a(Context context, View view) {
        ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(Context context, d d2) {
        synchronized (am.class) {
            block10 : {
                boolean bl;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("apdid", d2.a());
                jSONObject.put("deviceInfoHash", d2.b());
                jSONObject.put("token", d2.c());
                jSONObject.put("timestamp", d2.d());
                String string = jSONObject.toString();
                String string2 = b.a(b.a(), string);
                if (!am.a(string2)) {
                    HashMap<String, String> hashMap = new HashMap<String, String>();
                    hashMap.put("deviceid", string2);
                    a.a(context, "vkeyid_profiles_v3", hashMap);
                }
                if (bl = am.a(string)) break block10;
                try {
                    String string3 = b.a(b.a(), string);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("wxcasxx", string3);
                    am.c("wxcasxx_v3", jSONObject2.toString());
                }
                catch (JSONException var4_9) {
                    com.alipay.security.mobile.module.a.a.a(var4_9);
                    return;
                }
                catch (Exception var14_11) {
                    return;
                }
                finally {
                }
            }
            do {
                return;
                break;
            } while (true);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, Game game) {
        Game game22;
        ArrayList<Game> arrayList;
        block2 : {
            ArrayList<Game> arrayList2 = (ArrayList<Game>)a.k(c.h, "played_game.txt");
            arrayList = arrayList2 == null ? new ArrayList<Game>() : arrayList2;
            for (Game game22 : arrayList) {
                if (!game22.get_id().equals(game.get_id())) continue;
                break block2;
            }
            game22 = null;
        }
        if (game22 != null) {
            arrayList.remove(game22);
        }
        arrayList.add(0, game);
        a.a(arrayList, c.h, "played_game.txt");
        am.b(context, game);
    }

    public static void a(Context context, String string) {
        if (context != null && string != null) {
            ((ClipboardManager)context.getSystemService("clipboard")).setText(string);
        }
    }

    public static void a(EditText editText, String string) {
        String string2 = MyApplication.a().a(string);
        if (!a.Q(string2)) {
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
            boolean bl2 = false;
            if (!bl) return bl2;
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
        block3 : {
            try {
                l2 = Long.parseLong(string);
                if (l2 > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (l2 >= 0) break block3;
                return 0;
            }
            catch (NumberFormatException var2_3) {
                return n;
            }
        }
        return (int)l2;
    }

    public static DisplayMetrics b(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static d b(Context context) {
        synchronized (am.class) {
            String string = am.A(context);
            boolean bl = am.a(string);
            d d2 = null;
            if (bl) return d2;
            try {
                JSONObject jSONObject = new JSONObject(string);
                d d3 = new d(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
                return d3;
            }
            catch (Exception var7_6) {
                com.alipay.security.mobile.module.a.a.a(var7_6);
                return null;
            }
        }
    }

    public static String b(Context context, String string) {
        if (string == null) {
            return null;
        }
        H h = H.a(context);
        char[] arrc = new char[string.length()];
        int n = 0;
        do {
            if (n >= string.length()) break;
            arrc[n] = h.a(string.charAt(n)).charValue();
            ++n;
            continue;
            break;
        } while (true);
        try {
            String string2 = new String(arrc);
            return string2;
        }
        catch (IOException var2_6) {
            var2_6.printStackTrace();
            return string;
        }
    }

    public static String b(String string) {
        StringBuilder stringBuilder;
        block5 : {
            if (!am.a(string)) break block5;
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(string.getBytes("UTF-8"));
            byte[] arrby = messageDigest.digest();
            stringBuilder = new StringBuilder();
            for (int j = 0; j < arrby.length; ++j) {
                Object[] arrobject = new Object[]{Byte.valueOf(arrby[j])};
                stringBuilder.append(String.format("%02x", arrobject));
            }
        }
        catch (Exception var2_7) {
            return null;
        }
        {
            continue;
        }
        String string2 = stringBuilder.toString();
        return string2;
    }

    /*
     * Exception decompiling
     */
    public static String b(String p1, String p2) {
        File v3 = new File(p1, p2);
        if (v3.exists()) {
            char[] buff = new char[(int)v3.length()];
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
        a.e(context, "pref_new_unimp_notif_time", String.valueOf(l2));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static <T> T c(Context context, String string) {
        Object object;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) return null;
            object = applicationInfo.metaData.get(string);
        }
        catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return (T)object;
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
            String string2 = Base64.encodeToString(arrby2, 8);
            return string2;
        }
        catch (Exception var1_6) {
            return "";
        }
    }

    public static Map<String, String> c(Context context) {
        synchronized (am.class) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("AA1", context.getPackageName());
            hashMap.put("AA2", am.B(context));
            hashMap.put("AA3", "security-sdk-token");
            hashMap.put("AA4", "3.0.2.20150525");
            return hashMap;
        }
    }

    public static void c(String string, int n) {
        BookReadRecord bookReadRecord = BookReadRecord.get(string);
        if (bookReadRecord != null) {
            bookReadRecord.setReadMode(n);
            bookReadRecord.save();
            return;
        }
        MyApplication.a().a(n);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static void c(String var0, String var1_1) {
        block24 : {
            try {
                if (a.c(var1_1)) break block24;
                System.setProperty(var0, var1_1);
            }
            catch (Throwable var2_16) {
                ** continue;
            }
        }
        lbl5: // 2 sources:
        do {
            if (!f.c()) ** GOTO lbl22
            var3_2 = ".SystemConfig" + File.separator + var0;
            if (!f.c()) ** GOTO lbl22
            var5_3 = new File(Environment.getExternalStorageDirectory(), var3_2);
            if (!var5_3.exists()) {
                var5_3.getParentFile().mkdirs();
            }
            var6_4 = new File(var5_3.getAbsolutePath());
            var7_5 = null;
            var8_6 = new FileWriter(var6_4, false);
            var8_6.write(var1_1);
            try {
                var8_6.close();
                lbl22: // 4 sources:
                do {
                    return;
                    break;
                } while (true);
                catch (Exception var15_7) {
                    var8_6 = null;
                    lbl26: // 2 sources:
                    do {
                        if (var8_6 == null) ** continue;
                        try {
                            var8_6.close();
                            return;
                        }
                        catch (IOException var10_8) {
                            return;
                        }
                        break;
                    } while (true);
                }
                catch (Throwable var12_9) lbl-1000: // 2 sources:
                {
                    if (var7_5 != null) {
                        var7_5.close();
                    }
                    lbl37: // 4 sources:
                    do {
                        throw var12_10;
                        break;
                    } while (true);
                }
            }
            catch (Exception var4_11) {
                return;
            }
            {
                catch (IOException var14_12) {
                return;
            }
                {
                    catch (IOException var13_13) {
                    ** continue;
                }
                }
            }
            catch (Throwable var11_14) {
                var7_5 = var8_6;
                var12_10 = var11_14;
                ** GOTO lbl-1000
            }
            catch (Exception var9_15) {
                ** continue;
            }
            break;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static d d() {
        synchronized (am.class) {
            String string = am.i();
            boolean bl = am.a(string);
            d d2 = null;
            if (bl) return d2;
            try {
                JSONObject jSONObject = new JSONObject(string);
                d d3 = new d(jSONObject.optString("apdid"), jSONObject.optString("deviceInfoHash"), jSONObject.optString("token"), jSONObject.optString("timestamp"));
                return d3;
            }
            catch (Exception var6_5) {
                com.alipay.security.mobile.module.a.a.a(var6_5);
                return null;
            }
        }
    }

    public static String d(Context context) {
        SharedPreferences.Editor editor;
        String string = a.a(context, "alipay_vkey_random", "random", "");
        if (am.a(string) && (string = a.b(UUID.randomUUID().toString())) != null && (editor = context.getSharedPreferences("alipay_vkey_random", 0).edit()) != null) {
            editor.clear();
            editor.putString("random", string);
            editor.commit();
        }
        return string;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String d(String string) {
        String string2;
        string2 = "";
        try {
            String string3;
            string2 = string3 = System.getProperty(string);
        }
        catch (Throwable var2_3) {}
        if (!a.c(string2)) return string2;
        return f.b(".SystemConfig" + File.separator + string);
    }

    public static void d(Context context, String string) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(string);
        try {
            context.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var3_3) {
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Account e() {
        MyApplication myApplication = MyApplication.a();
        String string = myApplication.a("user.id");
        String string2 = myApplication.a("account.token");
        if (string == null || string2 == null) return null;
        Account account = new Account();
        User user = new User();
        user.setId(string);
        user.setNickname(myApplication.a("user.name"));
        user.setAvatar(myApplication.a("user.avatar"));
        user.setLv(a.b(myApplication.a("user.lv"), 0));
        user.setGender(myApplication.a("user.gender"));
        account.setOk(true);
        account.setToken(string2);
        account.setUser(user);
        if (account == null || account.getToken() == null) return null;
        return account;
    }

    public static String e(String string) {
        if (string == null) {
            return null;
        }
        try {
            String string2 = URLEncoder.encode(string, "UTF-8");
            return string2;
        }
        catch (Exception var1_2) {
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
            Iterator<ActivityManager.RunningAppProcessInfo> iterator = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses().iterator();
            String string2 = null;
            do {
                boolean bl;
                String string3;
                if (!(bl = iterator.hasNext())) {
                    string = string2;
                    break;
                }
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = iterator.next();
                if (runningAppProcessInfo.pid != n) continue;
                string2 = string3 = runningAppProcessInfo.processName.trim();
            } while (true);
        }
        catch (Exception var1_8) {
            string = null;
        }
        if (TextUtils.isEmpty(string)) return true;
        return context.getPackageName().equals(string);
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
            String string2 = URLDecoder.decode(string, "UTF-8");
            return string2;
        }
        catch (Exception var1_2) {
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
        return Settings.Secure.getString(MyApplication.a().getContentResolver(), "android_id");
    }

    public static String h(Context context) {
        String string = a.d(context, "pref_new_imp_notif_time", null);
        if (string == null) {
            string = "0";
            a.e(context, "pref_new_imp_notif_time", string);
        }
        return string;
    }

    public static boolean h(String string) {
        List<String> list = MyApplication.a().f();
        return list != null && list.contains(string);
    }

    private static String i() {
        String string = am.d("wxcasxx_v3");
        try {
            String string2 = new JSONObject(string).getString("wxcasxx");
            String string3 = b.b(b.a(), string2);
            return string3;
        }
        catch (Exception var1_3) {
            return null;
        }
    }

    public static String i(Context context) {
        String string = a.d(context, "pref_new_unimp_notif_time", null);
        if (string == null) {
            string = "0";
            a.e(context, "pref_new_unimp_notif_time", string);
        }
        return string;
    }

    public static boolean i(String string) {
        try {
            Class.forName(string);
            return true;
        }
        catch (ClassNotFoundException var1_1) {
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
            int n2 = context.getResources().getDimensionPixelSize(n);
            return n2;
        }
        catch (Exception var1_5) {
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
        return a.a(context, "save_bandwidth", false);
    }

    public static String n(Context context) {
        String string = am.c(context, "UMENG_CHANNEL");
        if (string != null) {
            return string;
        }
        return "";
    }

    public static boolean o(Context context) {
        long l2 = a.c(context, "PREF_FIRST_LAUNCH_TIME", 0);
        return Calendar.getInstance().getTimeInMillis() - l2 >= 259200000;
    }

    public static boolean p(Context context) {
        boolean bl = a.a(context, "is_first_launch_app", true);
        if (bl) {
            a.b(context, "is_first_launch_app", false);
        }
        return bl;
    }

    public static boolean q(Context context) {
        return am.o(context) && am.r(context);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean r(Context context) {
        if (a.a(context, "remove_ad_duration", 0) > 0) return false;
        String string = am.n(context);
        String string2 = com.umeng.a.b.b(context, "hide_all_ads_channel");
        if (string2 == null || string2.length() <= 0) return true;
        String[] arrstring = string2.split(",");
        int n = arrstring.length;
        int n2 = 0;
        while (n2 < n) {
            if (arrstring[n2].equals(string)) {
                return false;
            }
            ++n2;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void s(Context context) {
        String string;
        String string2;
        block2 : {
            string = am.C(context).packageName;
            int n = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid != n) continue;
                string2 = runningAppProcessInfo.processName;
                break block2;
            }
            string2 = null;
        }
        if (!string.equals(string2) || a.a(context, "key_short_cut", false)) {
            return;
        }
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent.putExtra("duplicate", false);
        intent.putExtra("android.intent.extra.shortcut.NAME", context.getString(R.string.app_name));
        intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, R.drawable.ic_launcher));
        intent.putExtra("android.intent.extra.shortcut.INTENT", new Intent(context, SplashActivity.class));
        context.sendBroadcast(intent);
        a.b(context, "key_short_cut", true);
    }

    public static String t(Context context) {
        return ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
    }

    public static int u(Context context) {
        return u.a.c.a(context).a("umeng_common_progress_text");
    }

    public static int v(Context context) {
        return u.a.c.a(context).a("umeng_common_icon_view");
    }

    public static int w(Context context) {
        return u.a.c.a(context).a("umeng_common_progress_bar");
    }

    public static int x(Context context) {
        return u.a.c.a(context).a("umeng_common_title");
    }

    public static int y(Context context) {
        return u.a.c.a(context).a("umeng_common_rich_notification_continue");
    }

    public static int z(Context context) {
        return u.a.c.a(context).a("umeng_common_rich_notification_cancel");
    }

    public final int a() {
        return this.b;
    }

    public final am a(CharSequence charSequence) {
        this.a = charSequence;
        if (this.b >= 0) {
            TabLayout.a(this.c, this.b);
        }
        return this;
    }

    final void a(int n) {
        this.b = n;
    }

    public final CharSequence b() {
        return this.a;
    }

    public final void c() {
        this.c.a(this);
    }
}
