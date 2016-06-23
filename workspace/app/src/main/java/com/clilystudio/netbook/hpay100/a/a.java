package com.clilystudio.netbook.hpay100.a;

import android.app.Activity;
import android.app.DownloadManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.design.widget.K;
import com.clilystudio.netbook.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase$Action;
import android.support.v4.view.ViewPager;
import android.support.v7.appcompat.R$dimen;
import android.support.v7.appcompat.R$id;
import android.support.v7.appcompat.R$integer;
import android.support.v7.appcompat.R$layout;
import android.support.v7.appcompat.R$string;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.RemoteViews;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.w;
import com.clilystudio.netbook.hpay100.y;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.reader.ReaderActivity;
import com.clilystudio.netbook.reader.ReaderTocDialog;
import com.clilystudio.netbook.util.CipherUtil;
import com.clilystudio.netbook.util.GenderIntroDialog;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.X;
import com.clilystudio.netbook.util.t;
import com.integralblue.httpresponsecache.compat.java.lang.ArrayIndexOutOfBoundsException;
import com.integralblue.httpresponsecache.compat.libcore.net.http.C;
import com.migu.sdk.api.MiguSdk;
import com.mob.tools.a.i;
import com.mob.tools.a.l;
import com.mob.tools.a.p;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import org.apache.thrift.d;
import org.apache.thrift.e;
import org.apache.thrift.g;
import org.apache.thrift.protocol.a$a;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.exceptions.DataSupportException;
import org.litepal.exceptions.DatabaseGenerateException;
import org.mozilla.universalchardet.UniversalDetector;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteOrder;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.Deflater;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import okio.ByteString;
import u.aly.be;
import u.aly.bt;

public class a {
    public static int a;
    private static float c;
    private static String d;
    private static String e;
    private static String f;
    private final ViewPager b;

    public a(ViewPager viewPager) {
        this.b = viewPager;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String A(String string) {
        if (d == null || e == null || f == null) {
            return null;
        }
        boolean bl = false;
        if (bl) {
            return null;
        }
        String string2 = CipherUtil.b(e, CipherUtil.b(d, f)).substring(0, 20);
        if (!I.h) {
            return CipherUtil.getNewAdvert(string2, string, MyApplication.a());
        }
        I.h = false;
        long l = a.Y("http://www.taobao.com");
        if (l <= 7200) {
            l = a.Y("http://www.163.com");
        }
        if (l <= 7200) {
            l = a.Y("http://www.baidu.com/");
        }
        if (l <= 7200) {
            l = 7200 + new Date().getTime() / 1000;
        }
        return CipherUtil.getNewAdvertWork(string2, l, string, MyApplication.a());
    }

    public static boolean A(Context context) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, "shelf_ad_third_enable"));
    }

    public static void B(Context context) {
        a.b(context, "start_night_theme", new Date().getTime());
    }

    public static boolean B(String string) {
        return string.replaceAll("/", "").equals(ReaderActivity.a.replaceAll("/", ""));
    }

    public static void C(Context context) {
        long l2 = a.a(context, "start_night_theme", 0);
        long l3 = new Date().getTime();
        if (l2 > 0 && l3 > l2) {
            MiStatInterface.recordCalculateEvent("night_theme_period", null, (int) ((l3 - l2) / 1000 / 60));
        }
        a.b(context, "start_night_theme", 0);
    }

    public static byte[] C(String p0) {
        MessageDigest v0 = null;
        try {
            v0 = MessageDigest.getInstance("MD5");
            byte[] v1 = p0.getBytes("UTF-8");
            v1 = v0.digest(v1);

            StringBuilder v2 = new StringBuilder(v1.length * 2);
            for (int v01 = 0; v01 < v1.length; v01++) {
                byte v4 = v1[v01];
                if ((v4 & 0xff) < 0x10) {
                    v2.append("0");
                }
                v2.append(Integer.toHexString(v4 & 0xff));
            }
            return v2.toString().getBytes();
        } catch (NoSuchAlgorithmException | UnsupportedEncodingException e1) {
            e1.printStackTrace();
            return p0.getBytes();
        }
    }

    public static ArrayList<String> D(String string) {
        String string2 = "/ZhuiShuShenQi/Chapter" + File.separator + string;
        return a.c(new File(c.a, string2));
    }

    public static void D(Context context) {
        a.b(context, "start_auto_read_time", new Date().getTime());
    }

    public static void E(Context context) {
        long l2 = a.a(context, "start_auto_read_time", 0);
        long l3 = new Date().getTime();
        if (l2 > 0 && l3 > l2) {
            MiStatInterface.recordCalculateEvent("auto_read_period", null, (int) ((l3 - l2) / 1000 / 60));
        }
        a.b(context, "start_auto_read_time", 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean E(String string) {
        File file;
        if (!string.endsWith(File.separator)) {
            string = string + File.separator;
        }
        if (!(file = new File(string)).exists() || !file.isDirectory()) {
            return false;
        }
        boolean bl = true;
        File[] arrfile = file.listFiles();
        if (arrfile == null) {
            return false;
        }
        int n2 = arrfile.length;
        int n3 = 0;
        do {
            File file2;
            if (n3 >= n2 || ((file2 = arrfile[n3]).isFile() ? !(bl = a.F(file2.getAbsolutePath())) : !(bl = a.E(file2.getAbsolutePath())))) {
                if (bl) break;
                return false;
            }
            ++n3;
        } while (true);
        return file.delete();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean F(Context context) {
        if (!a.r(context, "show_new_ads")) return false;
        String string = am.n((Context) context);
        String string2 = OnlineConfigAgent.getInstance().getConfigParams(context, "show_new_ads_disabled_channel");
        if (string2 == null || string2.length() <= 0) return true;
        String[] arrstring = string2.split(",");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            if (arrstring[n3].equals(string)) {
                return false;
            }
            ++n3;
        }
        return true;
    }

    public static boolean F(String string) {
        File file = new File(string);
        boolean bl = file.isFile();
        boolean bl2 = false;
        if (bl) {
            boolean bl3 = file.exists();
            bl2 = false;
            if (bl3) {
                bl2 = file.delete();
            }
        }
        return bl2;
    }

    public static BufferedReader G(String string) {
        return new BufferedReader(new InputStreamReader((InputStream) new FileInputStream(new File(string)), a.H(string)));
    }

    public static void G(Context context) {
        MiStatInterface.recordCountEvent("HOT_KEY_WORD_CHANGE_CLICK", "CHANGE");
    }

    public static float H(Context context) {
        String string = OnlineConfigAgent.getInstance().getConfigParams(context, "rate_bfd_recommend");
        try {
            float f2 = Float.parseFloat(string);
            return f2;
        } catch (Exception var2_3) {
            return 0.0f;
        }
    }

    public static String H(String string) {
        int n2;
        byte[] arrby = new byte[4096];
        FileInputStream fileInputStream = new FileInputStream(string);
        UniversalDetector universalDetector = new UniversalDetector(null);
        while ((n2 = fileInputStream.read(arrby)) > 0 && !universalDetector.a()) {
            universalDetector.a(arrby, 0, n2);
        }
        universalDetector.c();
        String string2 = universalDetector.b();
        universalDetector.d();
        if (string2 == null) {
            string2 = "utf-8";
        }
        return string2;
    }

    public static com.clilystudio.netbook.download.a I(Context context) {
        String string = OnlineConfigAgent.getInstance().getConfigParams(context, "app_name");
        String string2 = OnlineConfigAgent.getInstance().getConfigParams(context, "app_apk_url");
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, "app_icon_url");
        String string4 = OnlineConfigAgent.getInstance().getConfigParams(context, "app_package_name");
        if (!(a.Z(string) || a.Z(string2) || a.Z(string3) || a.Z(string4))) {
            return new com.clilystudio.netbook.download.a(context, string, string2, string3, string4);
        }
        return null;
    }

    public static File I(String string) {
        File file = a.J(c.g);
        if (file == null) {
            return null;
        }
        return new File(file, string);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static File J(String string) {
        if (!a.d()) {
            return null;
        }
        File file = new File(string);
        if (file.exists()) return file;
        file.mkdirs();
        return file;
    }

    public static void J(Context context) {
        a.b(context, "tts_start_time", new Date().getTime());
    }

    public static String K(String string) {
        if (a.Q(string)) {
            return "";
        }
        return string.substring(1 + string.lastIndexOf(File.separator));
    }

    public static int L(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static Bitmap L(String string) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            Bitmap bitmap = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            return bitmap;
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
    }

    public static SharedPreferences M(Context context) {
        return context.getSharedPreferences("umeng_general_config", 0);
    }

    public static HashMap<String, String> M(String string) {
        return (HashMap) a.k(c.c, string);
    }

    public static String N(String string) {
        if (string == null) {
            return "";
        }
        return com.integralblue.httpresponsecache.compat.libcore.a.a.b(a.C(string)) + ".apk";
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static be N(Context context) {
        try {
            long[] arrl;
            be be2 = new be();
            Class class_ = Class.forName("android.net.TrafficStats");
            Class[] arrclass = new Class[]{Integer.TYPE};
            Method method = class_.getMethod("getUidRxBytes", arrclass);
            Class[] arrclass2 = new Class[]{Integer.TYPE};
            Method method2 = class_.getMethod("getUidTxBytes", arrclass2);
            int n2 = context.getApplicationInfo().uid;
            if (n2 == -1) {
                arrl = null;
            } else {
                long[] arrl2 = new long[2];
                Object[] arrobject = new Object[]{n2};
                arrl2[0] = (Long) method.invoke(null, arrobject);
                Object[] arrobject2 = new Object[]{n2};
                arrl2[1] = (Long) method2.invoke(null, arrobject2);
                arrl = arrl2;
            }
            if (arrl[0] <= 0) return null;
            if (arrl[1] <= 0) {
                return null;
            }
            SharedPreferences sharedPreferences = a.M(context);
            long l2 = sharedPreferences.getLong("uptr", -1);
            long l3 = sharedPreferences.getLong("dntr", -1);
            sharedPreferences.edit().putLong("uptr", (long) arrl[1]).putLong("dntr", (long) arrl[0]).commit();
            if (l2 <= 0) return null;
            if (l3 <= 0) {
                return null;
            }
            arrl[0] = arrl[0] - l3;
            arrl[1] = arrl[1] - l2;
            if (arrl[0] <= 0) return null;
            if (arrl[1] <= 0) {
                return null;
            }
            be2.c((int) arrl[0]);
            be2.a((int) arrl[1]);
            return be2;
        } catch (Exception var2_15) {
            bt.d((String) "MobclickAgent", (String) "sdk less than 2.2 has get no traffic");
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static File O(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists()) return file;
        if (!file.mkdirs()) {
            com.nostra13.universalimageloader.b.d.c("Unable to create external cache directory", new Object[0]);
            return null;
        }
        try {
            new File(file, ".nomedia").createNewFile();
            return file;
        } catch (IOException var2_2) {
            com.nostra13.universalimageloader.b.d.b("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
            return file;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String[] O(String string) {
        String[] arrstring;
        if (string == null || (arrstring = string.split(":")).length < 2) {
            return null;
        }
        return arrstring;
    }

    private static SharedPreferences.Editor P(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).edit();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String P(String string) {
        if ("soso".equals(string)) {
            return "http://book.soso.com/ajax?m=show_bookdetail&resourceid=...";
        }
        if ("sogou".equals(string)) {
            return "http://novel.mse.sogou.com/content.php/&page=1&md=...";
        }
        if ("leidian".equals(string)) {
            return "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=...";
        }
        boolean bl = "easou".equals(string);
        String string2 = null;
        if (!bl) return string2;
        return "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=...";
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean Q(String string) {
        if (string == null) return true;
        if (string.length() == 0) {
            return true;
        }
        int n2 = 0;
        while (n2 < string.length()) {
            char c2 = string.charAt(n2);
            if (c2 != ' ' && c2 != '\t' && c2 != '\r') {
                boolean bl = false;
                if (c2 != '\n') return bl;
            }
            ++n2;
        }
        return true;
    }

    public static long R(String string) {
        try {
            long l2 = Long.parseLong(string);
            return l2;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return 0;
        }
    }

    public static String S(String string) {
        if (string != null) {
            String string2 = org.litepal.c.a.a().e();
            if ("keep".equals(string2)) {
                return string;
            }
            if ("upper".equals(string2)) {
                return string.toUpperCase(Locale.US);
            }
            return string.toLowerCase(Locale.US);
        }
        return null;
    }

    public static String T(String string) {
        if (!TextUtils.isEmpty(string)) {
            return String.valueOf(string.substring(0, 1).toUpperCase(Locale.US)) + string.substring(1);
        }
        if (string == null) {
            return null;
        }
        return "";
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean U(String string) {
        if ("boolean".equals(string) || "java.lang.Boolean".equals(string) || "float".equals(string) || "java.lang.Float".equals(string) || "double".equals(string) || "java.lang.Double".equals(string) || "int".equals(string) || "java.lang.Integer".equals(string) || "long".equals(string) || "java.lang.Long".equals(string) || "short".equals(string) || "java.lang.Short".equals(string) || "char".equals(string) || "java.lang.Character".equals(string) || "java.lang.String".equals(string) || "java.util.Date".equals(string)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String V(String string) {
        org.litepal.a.a a2;
        if (TextUtils.isEmpty(string)) return null;
        if ('.' == string.charAt(-1 + string.length())) {
            return null;
        }
        try {
            a2 = (org.litepal.a.a) Class.forName(string).getAnnotation(org.litepal.a.a.class);
            if (a2 == null) return string.substring(1 + string.lastIndexOf("."));
        } catch (ClassNotFoundException var1_4) {
            var1_4.printStackTrace();
            return null;
        }
        String string2 = a2.a();
        if (TextUtils.isEmpty(string2)) return string.substring(1 + string.lastIndexOf("."));
        return a.S(string2);
    }

    private static String W(String string) {
        try {
            FileInputStream fileInputStream = new FileInputStream(string);
            byte[] arrby = new byte[8];
            fileInputStream.read(arrby);
            fileInputStream.close();
            String string2 = a.g(arrby);
            return string2;
        } catch (Exception var2_4) {
            com.mob.tools.e.a().w(var2_4);
            return null;
        }
    }

    private static Throwable X(String string) {
        throw new Throwable("Invalid int: \"" + string + "\"");
    }

    private static long Y(String string) {
        try {
            URLConnection uRLConnection = new URL(string).openConnection();
            uRLConnection.connect();
            return 7200 + uRLConnection.getDate() / 1000;
        } catch (IOException var2_2) {
            return 0;
        } catch (MalformedURLException var1_3) {
            return 0;
        }
    }

    private static boolean Z(String string) {
        if (string == null || "".equals(string)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static byte a(byte by, int n2, boolean bl) {
        int n3;
        if (bl) {
            n3 = by | 1 << n2;
            do {
                return (byte) n3;
                break;
            } while (true);
        }
        n3 = by & (-1 ^ 1 << n2);
        return (byte) n3;
    }

    public static float a(Context context, String string, float f2) {
        if (context == null) {
            return 2.0f;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getFloat(string, 2.0f);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int a(int n2, int n3) {
        if (n3 < 2) return -1;
        if (n3 > 36) {
            return -1;
        }
        int n4 = 48 <= n2 && n2 <= 57 ? n2 - 48 : (97 <= n2 && n2 <= 122 ? 10 + (n2 - 97) : (65 <= n2 && n2 <= 90 ? 10 + (n2 - 65) : -1));
        if (n4 < n3) return n4;
        return -1;
    }

    public static int a(Context context, float f2) {
        if (context == null) {
            return 0;
        }
        return (int) (0.5f + f2 * context.getResources().getDisplayMetrics().density);
    }

    public static int a(Context context, int n2) {
        if (c <= 0.0f) {
            c = context.getResources().getDisplayMetrics().density;
        }
        return (int) (0.5f + (float) n2 * c);
    }

    public static int a(Context context, String string, int n2) {
        if (context == null) {
            return n2;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(string, n2);
    }

    public static int a(Context context, String string, String string2) {
        return context.getApplicationContext().getResources().getIdentifier(string2, string, context.getApplicationContext().getPackageName());
    }

    public static int a(String string, int n2) {
        if (n2 != -1) {
            return n2;
        }
        if ("http".equalsIgnoreCase(string)) {
            return 80;
        }
        if ("https".equalsIgnoreCase(string)) {
            return 443;
        }
        return -1;
    }

    public static int a(URI uRI) {
        return a.a(uRI.getScheme(), uRI.getPort());
    }

    public static int a(URL uRL) {
        return a.a(uRL.getProtocol(), uRL.getPort());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static long a(Context context, long l2, String string, int n2, String string2) {
        synchronized (a.class) {
            block4:
            {
                boolean bl = TextUtils.isEmpty(string);
                if (!bl) break block4;
                return -1;
            }
            com.mob.a.a.c c2 = com.mob.a.a.c.a(context);
            ContentValues contentValues = new ContentValues();
            contentValues.put("exception_time", l2);
            contentValues.put("exception_msg", string.toString());
            contentValues.put("exception_level", n2);
            contentValues.put("exception_md5", string2);
            long l3 = c2.a("table_exception", contentValues);
            return l3;
        }
    }

    public static long a(Context context, String string, long l2) {
        if (context == null) {
            return 0;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(string, 0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static long a(Context context, ArrayList<String> arrayList) {
        synchronized (a.class) {
            if (arrayList == null) {
                return 0;
            }
            StringBuilder stringBuilder = new StringBuilder();
            int n2 = 0;
            do {
                if (n2 >= arrayList.size()) break;
                stringBuilder.append("'");
                stringBuilder.append(arrayList.get(n2));
                stringBuilder.append("'");
                stringBuilder.append(",");
                ++n2;
            } while (true);
            String string = stringBuilder.toString().substring(0, -1 + stringBuilder.length());
            int n3 = com.mob.a.a.c.a(context).a("table_exception", "exception_md5 in ( " + string + " )", null);
            com.mob.tools.log.d d2 = com.mob.tools.e.a();
            Object[] arrobject = new Object[]{n3};
            d2.i("delete COUNT == %s", arrobject);
            return n3;
        }
    }

    private static long a(String string, int n2, int n3, boolean bl) {
        long l2 = Long.MIN_VALUE / (long) n3;
        long l3 = 0;
        long l4 = string.length();
        while ((long) n2 < l4) {
            int n4 = n2 + 1;
            int n5 = a.a((int) string.charAt(n2), n3);
            if (n5 == -1) {
                throw new Throwable("Invalid long: \"" + string + "\"");
            }
            if (l2 > l3) {
                throw new Throwable("Invalid long: \"" + string + "\"");
            }
            long l5 = l3 * (long) n3 - (long) n5;
            if (l5 > l3) {
                throw new Throwable("Invalid long: \"" + string + "\"");
            }
            l3 = l5;
            n2 = n4;
        }
        if (!bl && (l3 = -l3) < 0) {
            throw new Throwable("Invalid long: \"" + string + "\"");
        }
        return l3;
    }

    public static Bitmap a(Bitmap bitmap) {
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap2;
    }

    public static Bitmap a(Bitmap bitmap, int n2, int n3) {
        int n4 = bitmap.getWidth();
        int n5 = bitmap.getHeight();
        Bitmap bitmap2 = Bitmap.createBitmap((int) (0.5f + (float) n4 / 8.0f), (int) (0.5f + (float) n5 / 8.0f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        canvas.scale(0.125f, 0.125f);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        a.a(bitmap2, 3, true);
        return bitmap2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static Bitmap a(Bitmap bitmap, int n2, boolean bl) {
        if (n2 <= 0) {
            return null;
        }
        int n3 = bitmap.getWidth();
        int n4 = bitmap.getHeight();
        int[] arrn = new int[n3 * n4];
        bitmap.getPixels(arrn, 0, n3, 0, 0, n3, n4);
        int n5 = n3 - 1;
        int n6 = n4 - 1;
        int n7 = n3 * n4;
        int n8 = 1 + (n2 + n2);
        int[] arrn2 = new int[n7];
        int[] arrn3 = new int[n7];
        int[] arrn4 = new int[n7];
        int[] arrn5 = new int[Math.max(n3, n4)];
        int n9 = n8 + 1 >> 1;
        int n10 = n9 * n9;
        int[] arrn6 = new int[n10 * 256];
        for (int k = 0; k < n10 * 256; ++k) {
            arrn6[k] = k / n10;
        }
        int[] arrn7 = new int[]{n8, 3};
        int[][] arrn8 = (int[][]) Array.newInstance(Integer.TYPE, arrn7);
        int n11 = n2 + 1;
        int n12 = 0;
        int n13 = 0;
        int n14 = 0;
        do {
            if (n14 >= n4) break;
            int n15 = 0;
            int n16 = -n2;
            int n17 = 0;
            int n18 = 0;
            int n19 = 0;
            int n20 = 0;
            int n21 = 0;
            int n22 = 0;
            int n23 = 0;
            int n24 = 0;
            for (int i2 = n16; i2 <= n2; ++i2) {
                int n25 = arrn[n13 + Math.min(n5, Math.max(i2, 0))];
                int[] arrn9 = arrn8[i2 + n2];
                arrn9[0] = 255 & n25 >> 16;
                arrn9[1] = 255 & n25 >> 8;
                arrn9[2] = n25 & 255;
                int n26 = n11 - Math.abs(i2);
                n23 += n26 * arrn9[0];
                n22 += n26 * arrn9[1];
                n21 += n26 * arrn9[2];
                if (i2 > 0) {
                    n17 += arrn9[0];
                    n24 += arrn9[1];
                    n15 += arrn9[2];
                    continue;
                }
                n20 += arrn9[0];
                n19 += arrn9[1];
                n18 += arrn9[2];
            }
            int n27 = n23;
            int n28 = n22;
            int n29 = n21;
            int n30 = n2;
            for (int i3 = 0; i3 < n3; ++n13, ++i3) {
                arrn2[n13] = arrn6[n27];
                arrn3[n13] = arrn6[n28];
                arrn4[n13] = arrn6[n29];
                int n31 = n27 - n20;
                int n32 = n28 - n19;
                int n33 = n29 - n18;
                int[] arrn10 = arrn8[(n8 + (n30 - n2)) % n8];
                int n34 = n20 - arrn10[0];
                int n35 = n19 - arrn10[1];
                int n36 = n18 - arrn10[2];
                if (n14 == 0) {
                    arrn5[i3] = Math.min(1 + (i3 + n2), n5);
                }
                int n37 = arrn[n12 + arrn5[i3]];
                arrn10[0] = 255 & n37 >> 16;
                arrn10[1] = 255 & n37 >> 8;
                arrn10[2] = n37 & 255;
                int n38 = n17 + arrn10[0];
                int n39 = n24 + arrn10[1];
                int n40 = n15 + arrn10[2];
                n27 = n31 + n38;
                n28 = n32 + n39;
                n29 = n33 + n40;
                n30 = (n30 + 1) % n8;
                int[] arrn11 = arrn8[n30 % n8];
                n20 = n34 + arrn11[0];
                n19 = n35 + arrn11[1];
                n18 = n36 + arrn11[2];
                n17 = n38 - arrn11[0];
                n24 = n39 - arrn11[1];
                n15 = n40 - arrn11[2];
            }
            int n41 = n12 + n3;
            int n42 = n14 + 1;
            n12 = n41;
            n14 = n42;
        } while (true);
        int n43 = 0;
        do {
            if (n43 >= n3) {
                bitmap.setPixels(arrn, 0, n3, 0, 0, n3, n4);
                return bitmap;
            }
            int n44 = 0;
            int n45 = n3 * (-n2);
            int n46 = -n2;
            int n47 = 0;
            int n48 = 0;
            int n49 = 0;
            int n50 = 0;
            int n51 = 0;
            int n52 = 0;
            int n53 = 0;
            int n54 = n45;
            int n55 = 0;
            for (int i4 = n46; i4 <= n2; ++i4) {
                int n56 = n43 + Math.max(0, n54);
                int[] arrn12 = arrn8[i4 + n2];
                arrn12[0] = arrn2[n56];
                arrn12[1] = arrn3[n56];
                arrn12[2] = arrn4[n56];
                int n57 = n11 - Math.abs(i4);
                int n58 = n53 + n57 * arrn2[n56];
                int n59 = n52 + n57 * arrn3[n56];
                int n60 = n51 + n57 * arrn4[n56];
                if (i4 > 0) {
                    n47 += arrn12[0];
                    n55 += arrn12[1];
                    n44 += arrn12[2];
                } else {
                    n50 += arrn12[0];
                    n49 += arrn12[1];
                    n48 += arrn12[2];
                }
                if (i4 < n6) {
                    n54 += n3;
                }
                n51 = n60;
                n52 = n59;
                n53 = n58;
            }
            int n61 = n52;
            int n62 = n53;
            int n63 = n51;
            int n64 = n2;
            int n65 = n44;
            int n66 = n55;
            int n67 = n47;
            int n68 = n48;
            int n69 = n49;
            int n70 = n50;
            int n71 = n43;
            for (int i5 = 0; i5 < n4; n71 += n3, ++i5) {
                arrn[n71] = -16777216 & arrn[n71] | arrn6[n62] << 16 | arrn6[n61] << 8 | arrn6[n63];
                int n72 = n62 - n70;
                int n73 = n61 - n69;
                int n74 = n63 - n68;
                int[] arrn13 = arrn8[(n8 + (n64 - n2)) % n8];
                int n75 = n70 - arrn13[0];
                int n76 = n69 - arrn13[1];
                int n77 = n68 - arrn13[2];
                if (n43 == 0) {
                    arrn5[i5] = n3 * Math.min(i5 + n11, n6);
                }
                int n78 = n43 + arrn5[i5];
                arrn13[0] = arrn2[n78];
                arrn13[1] = arrn3[n78];
                arrn13[2] = arrn4[n78];
                int n79 = n67 + arrn13[0];
                int n80 = n66 + arrn13[1];
                int n81 = n65 + arrn13[2];
                n62 = n72 + n79;
                n61 = n73 + n80;
                n63 = n74 + n81;
                n64 = (n64 + 1) % n8;
                int[] arrn14 = arrn8[n64];
                n70 = n75 + arrn14[0];
                n69 = n76 + arrn14[1];
                n68 = n77 + arrn14[2];
                n67 = n79 - arrn14[0];
                n66 = n80 - arrn14[1];
                n65 = n81 - arrn14[2];
            }
            ++n43;
        } while (true);
    }

    public static Bitmap a(View view, int n2, int n3) {
        Bitmap bitmap = Bitmap.createBitmap(n2, n3, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        return bitmap;
    }

    public static Bitmap a(InputStream inputStream, int n2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = n2;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bundle a(com.e.a.a.e.g g2) {
        Bundle bundle = new Bundle();
        bundle.putInt("_wxobject_sdkVer", g2.a);
        bundle.putString("_wxobject_title", g2.b);
        bundle.putString("_wxobject_description", g2.c);
        bundle.putByteArray("_wxobject_thumbdata", g2.d);
        if (g2.e != null) {
            String string = g2.e.getClass().getName();
            if (string == null || string.length() == 0) {
                com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "pathNewToOld fail, newPath is null");
            } else {
                string = string.replace("com.tencent.mm.sdk.modelmsg", "com.tencent.mm.sdk.openapi");
            }
            bundle.putString("_wxobject_identifier_", string);
        }
        bundle.putString("_wxobject_mediatagname", g2.f);
        return bundle;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RemoteViews a(Context context, NotificationCompatBase$Action notificationCompatBase$Action) {
        boolean bl = notificationCompatBase$Action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R$layout.notification_media_action);
        remoteViews.setImageViewResource(R$id.action0, notificationCompatBase$Action.getIcon());
        if (!bl) {
            remoteViews.setOnClickPendingIntent(R$id.action0, notificationCompatBase$Action.getActionIntent());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(R$id.action0, notificationCompatBase$Action.getTitle());
        }
        return remoteViews;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int n2, Bitmap bitmap, CharSequence charSequence4, boolean bl, long l2, int n3, boolean bl2) {
        boolean bl3;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), n3);
        if (bitmap != null && Build.VERSION.SDK_INT >= 16) {
            remoteViews.setImageViewBitmap(R$id.icon, bitmap);
        } else {
            remoteViews.setViewVisibility(R$id.icon, 8);
        }
        if (charSequence != null) {
            remoteViews.setTextViewText(R$id.title, charSequence);
        }
        boolean bl4 = false;
        if (charSequence2 != null) {
            remoteViews.setTextViewText(R$id.text, charSequence2);
            bl4 = true;
        }
        if (charSequence3 != null) {
            remoteViews.setTextViewText(R$id.info, charSequence3);
            remoteViews.setViewVisibility(R$id.info, 0);
            bl3 = true;
        } else if (n2 > 0) {
            if (n2 > context.getResources().getInteger(R$integer.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(R$id.info, context.getResources().getString(R$string.status_bar_notification_info_overflow));
            } else {
                NumberFormat numberFormat = NumberFormat.getIntegerInstance();
                remoteViews.setTextViewText(R$id.info, numberFormat.format(n2));
            }
            remoteViews.setViewVisibility(R$id.info, 0);
            bl3 = true;
        } else {
            remoteViews.setViewVisibility(R$id.info, 8);
            bl3 = bl4;
        }
        boolean bl5 = false;
        if (charSequence4 != null) {
            int n4 = Build.VERSION.SDK_INT;
            bl5 = false;
            if (n4 >= 16) {
                remoteViews.setTextViewText(R$id.text, charSequence4);
                if (charSequence2 != null) {
                    remoteViews.setTextViewText(R$id.text2, charSequence2);
                    remoteViews.setViewVisibility(R$id.text2, 0);
                    bl5 = true;
                } else {
                    remoteViews.setViewVisibility(R$id.text2, 8);
                    bl5 = false;
                }
                if (bl5 && Build.VERSION.SDK_INT >= 16) {
                    if (bl2) {
                        float f2 = context.getResources().getDimensionPixelSize(R$dimen.notification_subtext_size);
                        remoteViews.setTextViewTextSize(R$id.text, 0, f2);
                    }
                    remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
                }
            }
        }
        if (l2 != 0) {
            if (bl) {
                remoteViews.setViewVisibility(R$id.chronometer, 0);
                remoteViews.setLong(R$id.chronometer, "setBase", l2 + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
            } else {
                remoteViews.setViewVisibility(R$id.time, 0);
                remoteViews.setLong(R$id.time, "setTime", l2);
            }
        }
        int n5 = R$id.line3;
        int n6 = bl3 ? 0 : 8;
        remoteViews.setViewVisibility(n5, n6);
        return remoteViews;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static com.e.a.a.e.g a(Bundle bundle) {
        String string2;
        com.e.a.a.e.g g2 = new com.e.a.a.e.g();
        g2.a = bundle.getInt("_wxobject_sdkVer");
        g2.b = bundle.getString("_wxobject_title");
        g2.c = bundle.getString("_wxobject_description");
        g2.d = bundle.getByteArray("_wxobject_thumbdata");
        g2.f = bundle.getString("_wxobject_mediatagname");
        String string3 = bundle.getString("_wxobject_identifier_");
        if (string3 == null || string3.length() == 0) {
            com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "pathOldToNew fail, oldPath is null");
            string2 = string3;
        } else {
            string2 = string3.replace("com.tencent.mm.sdk.openapi", "com.tencent.mm.sdk.modelmsg");
        }
        if (string2 == null || string2.length() <= 0) {
            return g2;
        }
        try {
            g2.e = (K) Class.forName(string2).newInstance();
            return g2;
        } catch (Exception var4_4) {
            var4_4.printStackTrace();
            com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "get media object from bundle failed: unknown ident " + string2 + ", ex = " + var4_4.getMessage());
            return g2;
        }
    }

    public static ChapterRoot a(String p0, ChapterLink[] p1, int p2) {
        BufferedReader v2 = null;
        try {
            ChapterLink v5 = p1[p2];
            ChapterRoot v0 = new ChapterRoot();
            Chapter v6 = new Chapter();
            v2 = G(p0);
            int v4 = v5.getTxtLineOffset();
            for (int v3 = 0; v3 < v4; v3++) {
                v2.readLine();
            }
            int v3 = -1;
            if (p2 < p1.length - 1) {
                v3 = p1[p2 + 1].getTxtLineOffset() - v5.getTxtLineOffset();
            }
            String v41 = "";
            String v51 = v2.readLine();
            while (v51 != null && v3 != 0) {
                v41 = new StringBuilder().append(v41).append("\n").append(v5).toString();
                v3--;
                v51 = v2.readLine();
            }
            v6.setBody(z(v41));
            v0.setChapter(v6);
            return v0;
        } catch (IOException e1) {
            e1.printStackTrace();
            return null;
        } finally {
            if (v2 != null) {
                try {
                    v2.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static File a(Context context, boolean bl) {
        File file;
        block3:
        {
            file = null;
            if (bl) {
                boolean bl2 = "mounted".equals(Environment.getExternalStorageState());
                file = null;
                if (bl2) {
                    boolean bl3 = context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
                    file = null;
                    if (bl3 && (file = a.O(context)) != null) break block3;
                }
            }
            file = context.getCacheDir();
        }
        if (file != null) return file;
        String string2 = "/data/data/" + context.getPackageName() + "/cache/";
        com.nostra13.universalimageloader.b.d.c("Can't define system cache directory! '%s' will be used.", string2);
        return new File(string2);
    }

    public static Class<?> a(Type type) {
        Type type2 = type;
        do {
            if (type2 instanceof Class) {
                return (Class) type2;
            }
            if (!(type2 instanceof ParameterizedType)) break;
            type2 = ((ParameterizedType) type2).getRawType();
        } while (true);
        throw new IllegalArgumentException("TODO");
    }

    public static Object a(int var0, String var1_1) {
//        v0 = "MicroMsg.SDK.PluginProvider.Resolver";
//        v1 = "unknown type";
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String a() {
        synchronized (a.class) {
            String string2 = a.m();
            boolean bl = am.a((String) string2);
            String string3 = null;
            if (bl) return string3;
            String[] arrstring = string2.split("`");
            string3 = null;
            if (arrstring == null) return string3;
            int n2 = arrstring.length;
            string3 = null;
            if (n2 < 2) return string3;
            return arrstring[0];
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String a(int n2, String string2, String string3) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(string3.getBytes(), "DES");
            Cipher cipher = Cipher.getInstance("DES");
            cipher.init(n2, secretKeySpec);
            byte[] arrby = n2 == 2 ? com.alipay.sdk.c.a.a(string2) : string2.getBytes("UTF-8");
            byte[] arrby2 = cipher.doFinal(arrby);
            if (n2 != 2) return com.alipay.sdk.c.a.a(arrby2);
            return new String(arrby2);
        } catch (Exception var4_8) {
            return null;
        }
    }

    public static String a(long l2, boolean bl) {
        if (l2 < 1000) {
            return "" + l2 + " B";
        }
        int n2 = (int) (Math.log(l2) / Math.log(1000.0));
        String string2 = "" + "kMGTPE".charAt(n2 - 1);
        Object[] arrobject = new Object[]{(double) l2 / Math.pow(1000.0, n2), string2};
        return String.format("%.1f %sB", arrobject);
    }

    public static String a(Context context) {
        synchronized (a.class) {
            String string2;
            block3:
            {
                String string3;
                string2 = a.a();
                if (!am.a((String) string2)) break block3;
                string2 = string3 = a.b(context);
            }
            return string2;
        }
    }

    public static String a(Context context, String string2, String string3, String string4) {
        return context.getSharedPreferences(string2, 0).getString(string3, string4);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static String a(Context var0, String var1_1, Map var2_2, boolean var3_3, int var4_4, int var5_5, boolean var6_6) {
        a.b("dalongTest", "http get request url:" + var1_1);
        if (!a.j(var0)) {
            a.b("dalongTest", "net error");
            return null;
        }
        var10_7 = com.clilystudio.netbook.hpay100.b.c.a(var0, 30000, 40000, true);
        var13_8 = var10_7.a(var0, var1_1, null, null, "utf-8", false);
        if (var13_8 != null) {
            var14_9 = var13_8.a("UTF-8");
            lbl11:
            // 2 sources:
            do {
                a.b("dalongTest", "http request result:" + var14_9);
                var10_7.a();
                return var14_9;
                break;
            } while (true);
        }
        catch(Exception var9_10){
            var8_12 = null;
            lbl19:
            // 3 sources:
            var9_11.printStackTrace();
            if (var8_12 != null) {
                var8_12.a();
            }
            return null;
        }
        catch(Throwable var7_13){
            var8_12 = null;
            lbl25:
            // 3 sources:
            do {
                if (var8_12 != null) {
                    var8_12.a();
                }
                throw var7_14;
                break;
            } while (true);
        }
        catch(Throwable var12_16){
            var8_12 = var10_7;
            var7_14 = var12_16;
            **GOTO lbl25
        }
        {
            catch(Throwable var7_15){
            **continue;
        }
        }
        catch(Exception var11_17){
            var8_12 = var10_7;
            var9_11 = var11_17;
            **GOTO lbl19
        }
        var14_9 = null;
        **while (true)
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static String a(BookInfo var0) {
        var1_1 = new JSONObject();
        try {
            var1_1.put("bk_name", var0.getTitle());
            var4_2 = var0.getTags();
            if (var4_2 != null) {
                var9_3 = "";
                var10_4 = 0;
            }
            **GOTO lbl20
        } catch (JSONException var2_6) {
            var2_6.printStackTrace();
            return var1_1.toString();
        }
        do {
            if (var10_4 < var4_2.length) {
                var9_3 = var9_3 + var4_2[var10_4];
                if (var10_4 != -1 + var4_2.length) {
                    var9_3 = var9_3 + "|";
                }
            } else {
                var1_1.put("bk_tag", var9_3);
                lbl20:
                // 2 sources:
                var1_1.put("bk_author", var0.getAuthor());
                var1_1.put("bk_updateTime", var0.getUpdated());
                var7_5 = var0.getIsSerial() != false ? "serialize" : "end";
                var1_1.put("bk_process", var7_5);
                return var1_1.toString();
            }
            ++var10_4;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String a(Iterable<?> iterable, String string2) {
        Iterator iterator;
        if (iterable == null || (iterator = iterable.iterator()) == null) {
            return null;
        }
        if (!iterator.hasNext()) {
            return "";
        }
        Object obj = iterator.next();
        if (!iterator.hasNext()) {
            if (obj == null) {
                return "";
            }
            return obj.toString();
        }
        StringBuilder stringBuilder = new StringBuilder(256);
        if (obj != null) {
            stringBuilder.append(obj);
        }
        while (iterator.hasNext()) {
            Object obj2;
            if (string2 != null) {
                stringBuilder.append(string2);
            }
            if ((obj2 = iterator.next()) == null) continue;
            stringBuilder.append(obj2);
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String a(String string2, int n2, String string3, String string4) {
        if (n2 == 5) {
            return "MIX_TOC_ID" + string2;
        }
        if (n2 == 0) return string4;
        if (!a.h(n2)) return null;
        if (n2 != 3) return string3 + "_" + string2;
        String[] arrstring = a.O(string3);
        if (arrstring == null) return string3 + "_" + string2;
        string3 = arrstring[0];
        return string3 + "_" + string2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String a(String var0, String var1_1) {
        var2_2 = null;
        try {
            var3_3 = new X509EncodedKeySpec(com.alipay.sdk.c.a.a(var1_1));
            var9_4 = KeyFactory.getInstance("RSA").generatePublic(var3_3);
            var10_5 = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            var10_5.init(1, var9_4);
            var11_6 = var0.getBytes("UTF-8");
            var12_7 = var10_5.getBlockSize();
            var13_8 = new ByteArrayOutputStream();
            **GOTO lbl16
        } catch (Exception var6_12) {
            return null;
            catch(Throwable var4_15){
            }
            **GOTO lbl -1000
            lbl16:
            // 2 sources:
            for (var14_9 = 0; var14_9 < var11_6.length; var14_9 += var12_7) {
                var18_10 = var11_6.length - var14_9 < var12_7 ? var11_6.length - var14_9 : var12_7;
                var13_8.write(var10_5.doFinal(var11_6, var14_9, var18_10));
            }
            var16_11 = new String(com.alipay.sdk.c.a.a(var13_8.toByteArray()));
            try {
                var13_8.close();
                return var16_11;
            } catch (IOException var17_18) {
                return var16_11;
            } catch (Throwable var4_17) {
                var2_2 = var13_8;
            }
            lbl - 1000: // 2 sources:
            {
                if (var2_2 == null) throw var4_16;
                try {
                    var2_2.close();
                } catch (IOException var5_19) {
                    throw var4_16;
                }
                throw var4_16;
            }
            catch(Exception var15_20){
                var7_13 = var13_8;
            }
            if (var7_13 == null) return null;
            try {
                var7_13.close();
                return null;
            } catch (IOException var8_14) {
                return null;
            }
        }
    }

    public static String a(ArrayList<i<String>> arrayList) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator<i<String>> iterator = arrayList.iterator();
        int n2 = 0;
        while (iterator.hasNext()) {
            i<String> i2 = iterator.next();
            if (n2 > 0) {
                stringBuilder.append('&');
            }
            String string2 = i2.a;
            String string3 = (String) i2.b;
            if (string2 == null) continue;
            if (string3 == null) {
                string3 = "";
            }
            stringBuilder.append(a.j(string2) + "=" + a.j(string3));
            ++n2;
        }
        return stringBuilder.toString();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static String a(Map<String, Integer> var0, String var1_1, String var2_2) {
        if (var2_2 == null) return "";
        if (var2_2.length() <= 0) {
            return "";
        }
        var3_3 = new StringBuilder();
        var3_3.append(var2_2 + ":");
        if (var1_1 == null) return var3_3.toString();
        if (var1_1.length() <= 0) {
            return var3_3.toString();
        }
        var5_4 = var1_1.split(",");
        if (var5_4 == null) return var3_3.toString();
        if (var5_4.length <= 0) {
            return var3_3.toString();
        }
        if (var0 == null) return var3_3.toString();
        if (var0.size() <= 0) {
            return var3_3.toString();
        }
        var6_5 = var0.keySet();
        if (var6_5 == null) return var3_3.toString();
        if (var6_5.size() <= 0) {
            return var3_3.toString();
        }
        try {
            var8_6 = new byte[1 + var5_4.length / 8];
            for (var9_7 = 0; var9_7 < var8_6.length; ++var9_7) {
                var8_6[var9_7] = 0;
            }
            var10_8 = var5_4.length;
            var12_10 = 0;
            for (var11_9 = 0; var11_9 < var10_8; ++var12_10, ++var11_9) {
                var13_11 = var5_4[var11_9];
                var14_12 = var8_6[var12_10 / 8];
                if (!var6_5.contains(var13_11))**GOTO lbl36
                var14_12 |= 128 >> var12_10 % 8;
            }
        } catch (Throwable var7_13) {
            return var3_3.toString();
        }
        {
            System.out.println(var12_10);
            lbl36:
            // 2 sources:
            var8_6[var12_10 / 8] = var14_12;
            continue;
        }
        var3_3.append(com.alipay.security.mobile.module.a.a.a.a(var8_6));
        return var3_3.toString();
    }

    public static String a(byte[] arrby) {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(arrby);
        byte[] arrby2 = messageDigest.digest();
        StringBuffer stringBuffer = new StringBuffer(arrby2.length << 1);
        int n2 = 0;
        do {
            if (n2 >= arrby2.length) break;
            stringBuffer.append(Character.forDigit((240 & arrby2[n2]) >> 4, 16));
            stringBuffer.append(Character.forDigit(15 & arrby2[n2], 16));
            ++n2;
            continue;
            break;
        } while (true);
        try {
            String string2 = stringBuffer.toString();
            return string2;
        } catch (NoSuchAlgorithmException var1_6) {
            return "";
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static ArrayList<com.mob.a.a.f> a(Context context, String string2, String[] arrstring) {
        synchronized (a.class) {
            ArrayList<com.mob.a.a.f> arrayList = new ArrayList<com.mob.a.a.f>();
            com.mob.a.a.f f2 = new com.mob.a.a.f();
            com.mob.a.a.c c2 = com.mob.a.a.c.a(context);
            String string3 = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception group by exception_md5 having max(_id)";
            if (!TextUtils.isEmpty(string2) && arrstring != null && arrstring.length > 0) {
                string3 = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception where " + string2 + " group by exception_md5 having max(_id)";
            }
            Cursor cursor = c2.a(string3, arrstring);
            while (cursor != null && cursor.moveToNext()) {
                f2.b.add(cursor.getString(0));
                HashMap<String, Object> hashMap = new HashMap<String, Object>();
                hashMap.put("type", cursor.getInt(1));
                hashMap.put("errat", cursor.getLong(2));
                hashMap.put("msg", Base64.encodeToString(cursor.getString(3).getBytes(), 2));
                hashMap.put("times", cursor.getInt(4));
                f2.a.add(hashMap);
                if (f2.b.size() != 50) continue;
                arrayList.add(f2);
                f2 = new com.mob.a.a.f();
            }
            cursor.close();
            if (f2.b.size() != 0) {
                arrayList.add(f2);
            }
            return arrayList;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static ArrayList<com.mob.a.a.f> a(Context context, String[] arrstring) {
        synchronized (a.class) {
            String string2 = "exception_level = ?";
            if (arrstring == null || arrstring.length <= 0) {
                string2 = null;
                arrstring = null;
            }
            if (com.mob.a.a.c.a(context).a("table_exception") <= 0) return new ArrayList();
            ArrayList<com.mob.a.a.f> arrayList = a.a(context, string2, arrstring);
            return arrayList;
        }
    }

    public static List<String> a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<String>();
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("select * from sqlite_master where type = ?", new String[]{"table"});
            if (cursor.moveToFirst()) {
                boolean bl;
                do {
                    String string2;
                    if (arrayList.contains(string2 = cursor.getString(cursor.getColumnIndexOrThrow("tbl_name")))) continue;
                    arrayList.add(string2);
                } while (bl = cursor.moveToNext());
            }
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Exception var4_5) {
            try {
                var4_5.printStackTrace();
                throw new DatabaseGenerateException(var4_5.getMessage());
            } catch (Throwable var3_6) {
                if (cursor != null) {
                    cursor.close();
                }
                throw var3_6;
            }
        }
    }

    public static List<com.integralblue.httpresponsecache.compat.libcore.net.http.c> a(C c2, String string2) {
        ArrayList<com.integralblue.httpresponsecache.compat.libcore.net.http.c> arrayList = new ArrayList<com.integralblue.httpresponsecache.compat.libcore.net.http.c>();
        for (int k = 0; k < c2.e(); ++k) {
            if (!string2.equalsIgnoreCase(c2.a(k))) continue;
            String string3 = c2.b(k);
            int n2 = 0;
            while (n2 < string3.length()) {
                int n3 = a.b(string3, n2, " ");
                String string4 = string3.substring(n2, n3).trim();
                n2 = a.c(string3, n3);
                if (!string3.regionMatches(n2, "realm=\"", 0, 7)) continue;
                int n4 = n2 + 7;
                int n5 = a.b(string3, n4, "\"");
                String string5 = string3.substring(n4, n5);
                n2 = a.c(string3, 1 + a.b(string3, n5 + 1, ","));
                arrayList.add(new com.integralblue.httpresponsecache.compat.libcore.net.http.c(string4, string5));
            }
        }
        return arrayList;
    }

    public static Map<String, String> a(Context context, int n2, String string2) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c((Context) context));
        hashMap.put("iid", string2);
        hashMap.put("iids", a.n());
        hashMap.put("num", "20");
        return hashMap;
    }

    public static Map<String, String> a(Context context, Map<String, String> map) {
        synchronized (a.class) {
            HashMap<String, String> hashMap = new HashMap<String, String>();
            String string2 = am.a(map, (String) "tid", (String) "");
            String string3 = am.a(map, (String) "utdid", (String) "");
            String string4 = am.d((Context) context);
            String string5 = am.a(map, (String) "userId", (String) "");
            hashMap.put("AC1", string2);
            hashMap.put("AC2", string3);
            hashMap.put("AC3", "");
            hashMap.put("AC4", string4);
            hashMap.put("AC5", string5);
            return hashMap;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        int n2;
        JSONObject jSONObject3;
        JSONObject[] arrjSONObject;
        block5:
        {
            jSONObject3 = new JSONObject();
            try {
                arrjSONObject = new JSONObject[]{jSONObject, jSONObject2};
                n2 = 0;
                break block5;
            } catch (JSONException var5_8) {
                // empty catch block
            }
            return jSONObject3;
        }
        while (n2 < 2) {
            JSONObject jSONObject4 = arrjSONObject[n2];
            if (jSONObject4 != null) {
                Iterator<String> iterator = jSONObject4.keys();
                while (iterator.hasNext()) {
                    String string2 = iterator.next();
                    jSONObject3.put(string2, jSONObject4.get(string2));
                }
            }
            ++n2;
        }
        return jSONObject3;
    }

    public static short a(byte[] arrby, int n2, ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (short) (arrby[0] << 8 | 255 & arrby[1]);
        }
        return (short) (arrby[1] << 8 | 255 & arrby[0]);
    }

    public static void a(int n2, int n3, int n4) {
        if ((n3 | n4) < 0 || n3 > n2 || n2 - n3 < n4) {
            throw new ArrayIndexOutOfBoundsException(n2, n3, n4);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Activity activity) {
        String[] arrstring = com.xiaomi.mipush.sdk.d.b(activity).toArray(new String[0]);
        ArrayList<String> arrayList = new ArrayList<String>();
        if (arrstring != null) {
            for (String string2 : arrstring) {
                String string3 = string2 != null && string2.length() > 5 ? string2.substring(5) : "";
                arrayList.add(string3);
            }
        }
        ArrayList<String> arrayList2 = new ArrayList<String>();
        HashSet<String> hashSet = new HashSet<String>();
        List<BookReadRecord> list = BookReadRecord.getAll();
        if (list != null) {
            Iterator<BookReadRecord> iterator = list.iterator();
            while (iterator.hasNext()) {
                arrayList2.add(iterator.next().getBookId());
            }
            hashSet.addAll(arrayList);
            hashSet.retainAll(arrayList2);
            for (String string4 : arrayList) {
                if (hashSet.contains(string4)) continue;
                a.t(string4);
            }
            for (String string5 : arrayList2) {
                if (hashSet.contains(string5)) continue;
                a.r(string5);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends NotificationCompatBase$Action> void a(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int n2, Bitmap bitmap, CharSequence charSequence4, boolean bl, long l2, List<T> list, boolean bl2, PendingIntent pendingIntent) {
        int n3 = Math.min(list.size(), 5);
        int n4 = n3 <= 3 ? R$layout.notification_template_big_media_narrow : R$layout.notification_template_big_media;
        RemoteViews remoteViews = a.a(context, charSequence, charSequence2, charSequence3, n2, bitmap, charSequence4, bl, l2, n4, false);
        remoteViews.removeAllViews(R$id.media_actions);
        if (n3 > 0) {
            for (int k = 0; k < n3; ++k) {
                RemoteViews remoteViews2 = a.a(context, (NotificationCompatBase$Action) list.get(k));
                remoteViews.addView(R$id.media_actions, remoteViews2);
            }
        }
        if (bl2) {
            remoteViews.setViewVisibility(R$id.cancel_action, 0);
            remoteViews.setInt(R$id.cancel_action, "setAlpha", context.getResources().getInteger(R$integer.cancel_button_image_alpha));
            remoteViews.setOnClickPendingIntent(R$id.cancel_action, pendingIntent);
        } else {
            remoteViews.setViewVisibility(R$id.cancel_action, 8);
        }
        notification.bigContentView = remoteViews;
        if (bl2) {
            notification.flags = 2 | notification.flags;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, int n2, int n3) {
        String string2 = T.a(n2);
        if (string2 == null) return;
        {
            if (n3 == 1) {
                MiStatInterface.recordCountEvent("share_book_info_platform", string2);
                return;
            } else {
                if (n3 == 2) {
                    MiStatInterface.recordCountEvent( "share_post_detail_platform", string2);
                    return;
                }
                if (n3 != 3) return;
                {
                    MiStatInterface.recordCountEvent("share_book_list_platform", string2);
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, ListView listView) {
        int n2 = context.getResources().getDimensionPixelSize(R.dimen.tab_overlap);
        View view = new View(context);
        view.setLayoutParams(new AbsListView.LayoutParams(-2, n2));
        if (a.a(context, "customer_night_theme", false)) {
            view.setBackgroundResource(R.drawable.bg_dark_list_item);
        } else {
            view.setBackgroundResource(R.drawable.bg_list_item);
        }
        view.setEnabled(false);
        listView.addHeaderView(view);
    }

//    /*
//     * Enabled aggressive block sorting
//     */
//    public static void a(Context context, Advert advert) {
//    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, BookInfo bookInfo) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("iid", bookInfo.getId());
        hashMap.put("title", bookInfo.getTitle());
        hashMap.put("cat", bookInfo.getCat());
        hashMap.put("author", bookInfo.getAuthor());
        String string2 = bookInfo.getIsSerial() ? "serialize" : "end";
        hashMap.put("tag", string2);
        hashMap.put("attr", a.a(bookInfo));
        com.a.a.a.d(context, bookInfo.getId(), hashMap);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void a(Context context, String string2) {
        synchronized (a.class) {
            try {
                SharedPreferences.Editor editor = context.getSharedPreferences("vkeyid_settings", 0).edit();
                if (editor != null) {
                    editor.putString("vkey_applist", com.alipay.security.mobile.module.a.a.b.a(com.alipay.security.mobile.module.a.a.b.a(), string2));
                    editor.commit();
                }
            } catch (Throwable var2_3) {
            }
            return;
        }
    }

    public static void a(Context context, String string2, Map<String, String> map) {
        SharedPreferences.Editor editor = context.getSharedPreferences(string2, 0).edit();
        if (editor != null) {
            editor.clear();
            for (String string3 : map.keySet()) {
                editor.putString(string3, map.get(string3));
            }
            editor.commit();
        }
    }

    public static void a(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            return;
        }
        FragmentManager fragmentManager = fragmentActivity.getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        Fragment fragment = fragmentManager.findFragmentByTag("dialog_gender_intro");
        if (fragment != null) {
            fragmentTransaction.remove(fragment);
        }
        GenderIntroDialog dialogUtil$GenderIntroDialog = new GenderIntroDialog();
        dialogUtil$GenderIntroDialog.setCancelable(false);
        dialogUtil$GenderIntroDialog.show(fragmentTransaction, "dialog_gender_intro");
    }

    public static void a(FragmentActivity fragmentActivity, ReaderTocDialog readerTocDialog) {
        FragmentManager fragmentManager = fragmentActivity.getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        Fragment fragment = fragmentManager.findFragmentByTag("ReaderTocDialog");
        if (fragment != null) {
            fragmentTransaction.remove(fragment);
        }
        try {
            fragmentTransaction.add(readerTocDialog, "ReaderTocDialog");
            fragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException var5_5) {
            var5_5.printStackTrace();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends NotificationCompatBase$Action> void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int n2, Bitmap bitmap, CharSequence charSequence4, boolean bl, long l2, List<T> list, int[] arrn, boolean bl2, PendingIntent pendingIntent) {
        RemoteViews remoteViews = a.a(context, charSequence, charSequence2, charSequence3, n2, bitmap, charSequence4, bl, l2, R$layout.notification_template_media, true);
        int n3 = list.size();
        int n4 = arrn == null ? 0 : Math.min(arrn.length, 3);
        remoteViews.removeAllViews(R$id.media_actions);
        if (n4 > 0) {
            for (int k = 0; k < n4; ++k) {
                if (k >= n3) {
                    Object[] arrobject = new Object[]{k, n3 - 1};
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", arrobject));
                }
                RemoteViews remoteViews2 = a.a(context, (NotificationCompatBase$Action) list.get(arrn[k]));
                remoteViews.addView(R$id.media_actions, remoteViews2);
            }
        }
        if (bl2) {
            remoteViews.setViewVisibility(R$id.end_padder, 8);
            remoteViews.setViewVisibility(R$id.cancel_action, 0);
            remoteViews.setOnClickPendingIntent(R$id.cancel_action, pendingIntent);
            remoteViews.setInt(R$id.cancel_action, "setAlpha", context.getResources().getInteger(R$integer.cancel_button_image_alpha));
        } else {
            remoteViews.setViewVisibility(R$id.end_padder, 0);
            remoteViews.setViewVisibility(R$id.cancel_action, 8);
        }
        notificationBuilderWithBuilderAccessor.getBuilder().setContent(remoteViews);
        if (bl2) {
            notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void a(View view) {
        Method method;
        Object[] arrobject;
        Field field;
        if (view == null || !a.k()) {
            return;
        }
        try {
            Class[] arrclass = new Class[]{Integer.TYPE};
            method = View.class.getMethod("setSystemUiVisibility", arrclass);
            field = View.class.getField("SYSTEM_UI_FLAG_HIDE_NAVIGATION");
            arrobject = new Object[1];
        } catch (Exception var1_5) {
            var1_5.printStackTrace();
            return;
        }
        try {
            arrobject[0] = field.get(null);
        } catch (Exception var6_6) {
        }
        method.invoke(view, arrobject);
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
            return;
        }
        view.postDelayed(runnable, 16);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void a(com.alipay.b.a.d d2) {
        synchronized (a.class) {
            String string2;
            boolean bl = am.a((String) d2.a());
            if (!bl && !d2.a().equals(a.a()) && (string2 = d2.a() + "`" + d2.d()) != null) {
                try {
                    String string3 = com.alipay.security.mobile.module.a.a.b.a(com.alipay.security.mobile.module.a.a.b.a(), string2);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("device", string3);
                    am.c((String) "deviceid_v2", (String) jSONObject.toString());
                } catch (Exception var4_5) {
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(TocSource tocSource, String string2) {
        String string3 = tocSource.getSource();
        String string4 = tocSource.getSourceId();
        SourceRecord sourceRecord = SourceRecord.get(string2, string3);
        if (sourceRecord == null) {
            SourceRecord.create(string2, string3, string4);
            return;
        } else {
            if (sourceRecord.getSourceId() != null) return;
            {
                sourceRecord.setSourceId(string4);
                sourceRecord.save();
                return;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(Closeable closeable) {
        if (closeable == null) return;
        try {
            closeable.close();
            return;
        } catch (IOException var1_1) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(File file) {
        if (!file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        String[] arrstring = file.list();
        if (arrstring == null || arrstring.length <= 0) {
            file.delete();
            return;
        }
        int n2 = arrstring.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                file.delete();
                return;
            }
            File file2 = new File(file, arrstring[n3]);
            if (file2.isDirectory()) {
                a.a(file2);
            } else {
                file2.delete();
            }
            ++n3;
        } while (true);
    }

    public static void a(FileInputStream fileInputStream, FileOutputStream fileOutputStream) {
        byte[] arrby = new byte[65536];
        int n2 = fileInputStream.read(arrby);
        while (n2 > 0) {
            fileOutputStream.write(arrby, 0, n2);
            n2 = fileInputStream.read(arrby);
        }
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static <T> void a(T t, String string2, String string3) {
        try {
            File file = new File(a.J(string2), string3);
            if (!file.exists()) {
                file.createNewFile();
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
            objectOutputStream.writeObject(t);
            objectOutputStream.flush();
            objectOutputStream.close();
            return;
        } catch (IOException var4_5) {
            var4_5.printStackTrace();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(String string2, Activity activity, String string3) {
        DownloadManager.Query query = new DownloadManager.Query();
        DownloadManager downloadManager = (DownloadManager) activity.getSystemService("download");
        Cursor cursor = downloadManager.query(query);
        String string4 = null;
        boolean bl = false;
        if (cursor != null) {
            while (cursor.moveToNext()) {
                if (!a.B(cursor.getString(cursor.getColumnIndex("uri")))) continue;
                if (cursor.getInt(cursor.getColumnIndex("status")) == 8) {
                    bl = true;
                    string4 = cursor.getString(cursor.getColumnIndex("local_uri"));
                    continue;
                }
                com.clilystudio.netbook.util.e.a((Activity) activity, (String) "正在下载,请稍后");
                return;
            }
            cursor.close();
            if (bl && string4 != null) {
                if (a.a((Context) activity, new File(Uri.parse(string4).getPath()))) return;
                {
                    a.a(string2, string3, downloadManager);
                    return;
                }
            }
        }
        a.a(string2, string3, downloadManager);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(String string2, com.koushikdutta.async.http.b.b b2) {
        int n2 = 0;
        while (n2 < string2.length()) {
            String string3;
            int n3 = a.b(string2, n2, "=,");
            String string4 = string2.substring(n2, n3).trim();
            if (n3 == string2.length() || string2.charAt(n3) == ',') {
                n2 = n3 + 1;
                b2.a(string4, null);
                continue;
            }
            int n4 = a.c(string2, n3 + 1);
            if (n4 < string2.length() && string2.charAt(n4) == '\"') {
                int n5 = n4 + 1;
                int n6 = a.b(string2, n5, "\"");
                String string5 = string2.substring(n5, n6);
                n2 = n6 + 1;
                string3 = string5;
            } else {
                int n7 = a.b(string2, n4, ",");
                String string6 = string2.substring(n4, n7).trim();
                n2 = n7;
                string3 = string6;
            }
            b2.a(string4, string3);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(String string2, BookSyncRecord$BookModifyType bookModifyType) {
        BookSyncRecord.updateOrCreate(a.o(), string2, BookSyncRecord.getTypeId(bookModifyType));
        if (am.e() == null) return;
        if (am.e().getUser() == null) {
            return;
        }
        String string3 = am.e().getToken();
        String string4 = am.e().getUser().getId();
        List<BookSyncRecord> list = BookSyncRecord.find(string4, BookSyncRecord.getTypeId(bookModifyType));
        if (list == null) return;
        if (list.size() == 0) return;
        String[] arrstring = new String[list.size()];
        int n2 = 0;
        do {
            if (n2 >= list.size()) {
                new X(string4, string3, bookModifyType, arrstring).b(new Void[0]);
                return;
            }
            arrstring[n2] = list.get(n2).getBookId();
            ++n2;
        } while (true);
    }

    public static void a(String string2, String string3, DownloadManager downloadManager) {
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(string2));
        request.setTitle(string3);
        String string4 = a.N(string2);
        if (a.g()) {
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
        }
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, string4);
        try {
            downloadManager.enqueue(request);
            return;
        } catch (Exception var7_5) {
            var7_5.printStackTrace();
            return;
        }
    }

    public static void a(String string2, Map<String, String> map) {
        a.a(map, c.c, string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(Socket socket) {
        if (socket == null) return;
        try {
            socket.close();
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    public static <T extends org.apache.thrift.b<T, ?>> void a(T t, byte[] arrby) {
        if (arrby == null) {
            throw new e("the message byte is empty.");
        }
        new d().a((org.apache.thrift.b) t, arrby);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static /* varargs */ void a(Closeable... arrcloseable) {
        int n2 = arrcloseable.length;
        int n3 = 0;
        while (n3 < n2) {
            Closeable closeable = arrcloseable[n3];
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException var4_4) {
                }
            }
            ++n3;
        }
    }

    public static void a(String[] arrstring) {
        a.a(arrstring, BookSyncRecord$BookModifyType.SHELF_ADD);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(String[] arrstring, BookSyncRecord$BookModifyType bookSyncRecord$BookModifyType) {
        for (String string2 : arrstring) {
            BookSyncRecord.updateOrCreate(a.o(), string2, BookSyncRecord.getTypeId(bookSyncRecord$BookModifyType));
        }
        if (am.e() == null) return;
        if (am.e().getUser() == null) {
            return;
        }
        String string3 = am.e().getToken();
        String string4 = am.e().getUser().getId();
        List<BookSyncRecord> list = BookSyncRecord.find(string4, BookSyncRecord.getTypeId(bookSyncRecord$BookModifyType));
        if (list == null) return;
        if (list.size() == 0) return;
        String[] arrstring2 = new String[list.size()];
        int n2 = 0;
        do {
            if (n2 >= list.size()) {
                new X(string4, string3, bookSyncRecord$BookModifyType, arrstring2).b(new Void[0]);
                return;
            }
            arrstring2[n2] = list.get(n2).getBookId();
            ++n2;
        } while (true);
    }

    public static boolean a(byte by, int n2) {
        if ((by & 1 << n2) != 0) {
            return true;
        }
        return false;
    }

    public static boolean a(Context context, com.e.a.a.a.a.a a2) {
        if (context == null) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        }
        if (com.e.a.a.b.c.a(a2.b)) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        }
        boolean bl = com.e.a.a.b.c.a(a2.a);
        String string2 = null;
        if (!bl) {
            string2 = a2.a + ".permission.MM_MESSAGE";
        }
        Intent intent = new Intent(a2.b);
        String string3 = context.getPackageName();
        intent.putExtra("_mmessage_sdkVersion", 570425345);
        intent.putExtra("_mmessage_appPackage", string3);
        intent.putExtra("_mmessage_content", a2.c);
        intent.putExtra("_mmessage_checksum", a.a(a2.c, 570425345, string3));
        context.sendBroadcast(intent, string2);
        com.e.a.a.b.a.c("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + string2);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean a(Context context, com.e.a.a.a.a a2) {
        if (context == null) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
            return false;
        }
        if (com.e.a.a.b.c.a(a2.a)) {
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + a2.a);
            return false;
        }
        if (com.e.a.a.b.c.a(a2.b)) {
            a2.b = a2.a + ".wxapi.WXEntryActivity";
        }
        com.e.a.a.b.a.c("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + a2.a + ", targetClassName = " + a2.b);
        Intent intent = new Intent();
        intent.setClassName(a2.a, a2.b);
        if (a2.e != null) {
            intent.putExtras(a2.e);
        }
        String string2 = context.getPackageName();
        intent.putExtra("_mmessage_sdkVersion", 570425345);
        intent.putExtra("_mmessage_appPackage", string2);
        intent.putExtra("_mmessage_content", a2.c);
        intent.putExtra("_mmessage_checksum", a.a(a2.c, 570425345, string2));
        if (a2.d == -1) {
            intent.addFlags(268435456).addFlags(134217728);
        } else {
            intent.setFlags(a2.d);
        }
        try {
            context.startActivity(intent);
        } catch (Exception var10_4) {
            Object[] arrobject = new Object[]{var10_4.getMessage()};
            com.e.a.a.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", arrobject);
            return false;
        }
        com.e.a.a.b.a.c("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + intent);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean a(Context context, File file) {
        if (context == null || !file.exists()) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse("file://" + file.toString()), "application/vnd.android.package-archive");
        intent.setFlags(268435456);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException var5_3) {
            var5_3.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, String string2, boolean bl) {
        if (context == null) {
            return bl;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(string2, bl);
    }

    public static boolean a(Intent intent) {
        if (intent.getData() != null) {
            return true;
        }
        return false;
    }

    private static boolean a(com.nostra13.universalimageloader.b.c c2, int n2, int n3) {
        if (c2 != null && !c2.a(n2, n3) && n2 * 100 / n3 < 75) {
            return true;
        }
        return false;
    }

    public static boolean a(InputStream inputStream, OutputStream outputStream, com.nostra13.universalimageloader.b.c c2, int n2) {
        int n3;
        int n4 = inputStream.available();
        byte[] arrby = new byte[n2];
        if (a.a(c2, 0, n4)) {
            return false;
        }
        int n5 = 0;
        while ((n3 = inputStream.read(arrby, 0, n2)) != -1) {
            outputStream.write(arrby, 0, n3);
            if (!a.a(c2, n5 += n3, n4)) continue;
            return false;
        }
        outputStream.flush();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean a(Class<?> class_) {
        if (class_.isPrimitive() || class_.equals(String.class) || class_.equals(Integer.class) || class_.equals(Long.class) || class_.equals(Double.class) || class_.equals(Float.class) || class_.equals(Boolean.class) || class_.equals(Short.class) || class_.equals(Character.class) || class_.equals(Byte.class) || class_.equals(Void.class)) {
            return true;
        }
        return false;
    }

    public static boolean a(Object object, Object object2) {
        if (object == object2 || object != null && object.equals(object2)) {
            return true;
        }
        return false;
    }

    public static boolean a(String p0, SQLiteDatabase p1) {
        if (TextUtils.isEmpty(p0) || !p0.matches("[0-9a-zA-Z]+_[0-9a-zA-Z]+")) {
            return false;
        }
        Cursor v1 = p1.query("table_schema", null, null, null, null, null, null);
        if (!v1.moveToFirst()) {
            v1.close();
            return false;
        }
        do {
            if (p0.equalsIgnoreCase(v1.getString(v1.getColumnIndexOrThrow("name"))) && v1.getInt(v1.getColumnIndexOrThrow("type")) == 1) {
                v1.close();
                return true;
            }
        } while (v1.moveToNext());
        if (v1 != null) {
            v1.close();
        }
        return true;
    }

    public static boolean a(String string2, String string3, SQLiteDatabase sQLiteDatabase) {
        if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
            return false;
        }
        try {
            boolean bl = a.a(a.c(string3, sQLiteDatabase).b(), string2);
            return bl;
        } catch (Exception var3_4) {
            var3_4.printStackTrace();
            return false;
        }
    }

    public static boolean a(String string2, String string3, String string4) {
        try {
            PublicKey publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(f.a(string4)));
            Signature signature = Signature.getInstance("SHA1WithRSA");
            signature.initVerify(publicKey);
            signature.update(string2.getBytes("utf-8"));
            boolean bl = signature.verify(f.a(string3));
            return bl;
        } catch (Exception var3_6) {
            var3_6.printStackTrace();
            return false;
        }
    }

    public static boolean a(String string2, String string3, String string4, Chapter chapter) {
        if (string4 == null) {
            return false;
        }
        String string5 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        File file = new File(c.a, string5);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(file, string4)));
            objectOutputStream.writeObject(chapter);
            objectOutputStream.close();
            return true;
        } catch (Exception var6_7) {
            var6_7.printStackTrace();
            return false;
        }
    }

    public static boolean a(String string2, String string3, String string4, Toc toc) {
        if (!a.d()) {
            return false;
        }
        String string5 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        File file = new File(c.a, string5);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(file, string4)));
            objectOutputStream.writeObject(toc);
            objectOutputStream.close();
            return true;
        } catch (Exception var6_7) {
            var6_7.printStackTrace();
            return false;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean a(Collection<String> collection, String string2) {
        if (collection == null) {
            return false;
        }
        if (string2 == null) {
            return collection.contains(null);
        }
        Iterator<String> iterator = collection.iterator();
        do {
            if (iterator.hasNext()) continue;
            return false;
        } while (!string2.equalsIgnoreCase(iterator.next()));
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean a(byte[] arrby, byte[] arrby2) {
        if (arrby == arrby2) {
            return true;
        }
        boolean bl = false;
        if (arrby == null) return bl;
        bl = false;
        if (arrby2 == null) return bl;
        int n2 = arrby.length;
        int n3 = arrby2.length;
        bl = false;
        if (n2 < n3) return bl;
        int n4 = 0;
        while (n4 < arrby2.length) {
            byte by = arrby[n4];
            byte by2 = arrby2[n4];
            bl = false;
            if (by != by2) return bl;
            ++n4;
        }
        return true;
    }

    public static byte[] a(int n2) {
        byte[] arrby = new byte[4];
        arrby[3] = (byte) (n2 % 256);
        int n3 = n2 >> 8;
        arrby[2] = (byte) (n3 % 256);
        int n4 = n3 >> 8;
        arrby[1] = (byte) (n4 % 256);
        arrby[0] = (byte) ((n4 >> 8) % 256);
        return arrby;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static byte[] a(InputStream inputStream) {
        MessageDigest messageDigest;
        int n2;
        byte[] arrby;
        try {
            arrby = new byte[1024];
            messageDigest = MessageDigest.getInstance("MD5");
            n2 = inputStream.read(arrby);
        } catch (Throwable var1_5) {
            com.mob.tools.e.a().w(var1_5);
            return null;
        }
        while (n2 != -1) {
            messageDigest.update(arrby, 0, n2);
            n2 = inputStream.read(arrby);
            continue;
        }
        return messageDigest.digest();
    }

    public static byte[] a(String string2, int n2, String string3) {
        StringBuffer stringBuffer = new StringBuffer();
        if (string2 != null) {
            stringBuffer.append(string2);
        }
        stringBuffer.append(n2);
        stringBuffer.append(string3);
        stringBuffer.append("mMcShCsTr");
        return am.a((byte[]) stringBuffer.toString().substring(1, 9).getBytes()).getBytes();
    }

    public static <T extends org.apache.thrift.b<T, ?>> byte[] a(T t) {
        if (t == null) {
            return null;
        }
        try {
            byte[] arrby = new g(new a$a()).a((org.apache.thrift.b) t);
            return arrby;
        } catch (e var1_2) {
            com.xiaomi.a.a.a.b.a("convertThriftObjectToBytes catch TException.", var1_2);
            return null;
        }
    }

    public static byte[] a(byte[] arrby, int n2, int n3) {
        int n4 = arrby.length;
        int n5 = n3 - n2;
        int n6 = Math.min(n5, n4 - n2);
        byte[] arrby2 = new byte[n5];
        System.arraycopy(arrby, n2, arrby2, 0, n6);
        return arrby2;
    }

    public static <T> T[] a(List<T> list, Class<T> class_) {
        Object[] arrobject = (Object[]) Array.newInstance(class_, list.size());
        for (int k = 0; k < list.size(); ++k) {
            arrobject[k] = list.get(k);
        }
        return arrobject;
    }

    public static String[] a(String string2) {
        int n2 = 1 + string2.indexOf(40);
        int n3 = string2.lastIndexOf(41);
        if (n2 == 0 || n3 == -1) {
            return null;
        }
        String[] arrstring = string2.substring(n2, n3).split(",");
        if (arrstring != null) {
            for (int k = 0; k < arrstring.length; ++k) {
                if (TextUtils.isEmpty(arrstring[k])) continue;
                arrstring[k] = arrstring[k].trim();
                arrstring[k] = arrstring[k].replaceAll("'", "").replaceAll("\"", "");
            }
        }
        return arrstring;
    }

    public static byte b(byte by, int n2) {
        return (byte) (by & (-1 ^ 1 << n2));
    }

    public static int b(Context context, int n2, int n3) {
        TypedArray typedArray = context.obtainStyledAttributes(n3, new int[]{n2});
        int n4 = typedArray.getColor(0, 0);
        typedArray.recycle();
        return n4;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static int b(Context context, String string2, String string3) {
        int n2 = 0;
        if (context == null) return n2;
        boolean bl = TextUtils.isEmpty(string2);
        n2 = 0;
        if (bl) return n2;
        boolean bl2 = TextUtils.isEmpty(string3);
        n2 = 0;
        if (bl2) {
            return n2;
        }
        String string4 = context.getPackageName();
        boolean bl3 = TextUtils.isEmpty(string4);
        n2 = 0;
        if (bl3) return n2;
        n2 = context.getResources().getIdentifier(string3, string2, string4);
        if (n2 <= 0) {
            n2 = context.getResources().getIdentifier(string3.toLowerCase(), string2, string4);
        }
        if (n2 > 0) return n2;
        System.err.println("failed to parse " + string2 + " resource \"" + string3 + "\"");
        return n2;
    }

    public static int b(File file) {
        File[] arrfile = file.listFiles();
        int n2 = 0;
        if (arrfile != null) {
            int n3 = arrfile.length;
            int n4 = arrfile.length;
            n2 = n3;
            for (int k = 0; k < n4; ++k) {
                File file2 = arrfile[k];
                if (!file2.isDirectory()) continue;
                n2 = -1 + (n2 + a.b(file2));
            }
        }
        return n2;
    }

    public static int b(String string2, int n2) {
        try {
            int n3 = Integer.parseInt(string2);
            return n3;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return 0;
        }
    }

    private static int b(String string2, int n2, String string3) {
        while (n2 < string2.length() && string3.indexOf(string2.charAt(n2)) == -1) {
            ++n2;
        }
        return n2;
    }

    public static Bitmap.CompressFormat b(byte[] arrby) {
        String string2 = a.g(arrby);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        if (string2 != null && (string2.endsWith("png") || string2.endsWith("gif"))) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        return compressFormat;
    }

    public static N b(int n2) {
        return new N(n2 % 16, n2 / 16);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static Serializable b(String var0, String var1_1, String var2_2) {
        var3_3 = null;
        if (var2_2 == null || !a.d()) {
            return null;
        }
        var4_4 = "/ZhuiShuShenQi/Chapter" + File.separator + var0 + File.separator + var1_1;
        var5_5 = new File(c.a, var4_4);
        if (!var5_5.exists()) {
            return null;
        }
        var14_6 = new File(var5_5, var2_2);
        if (!var14_6.exists()) {
            return null;
        }
        var7_7 = new FileInputStream(var14_6);
        var11_8 = new ObjectInputStream(var7_7);
        var15_9 = (Serializable) var11_8.readObject();
        try {
            var11_8.close();
        } catch (Exception var16_11) {
            var16_11.printStackTrace();
            **continue;
        }
        lbl22:
        // 2 sources:
        do {
            try {
                var7_7.close();
                return var15_9;
            } catch (Exception var17_10) {
                var17_10.printStackTrace();
                return var15_9;
            }
            break;
        } while (true);
        catch(Exception var10_12){
            block35:
            {
                var11_8 = null;
                var7_7 = null;
                lbl33:
                // 4 sources:
                var10_13.printStackTrace();
                if (var11_8 == null) break block35;
                try {
                    var11_8.close();
                } catch (Exception var13_16) {
                    var13_16.printStackTrace();
                    **continue;
                }
            }
            lbl38:
            // 2 sources:
            do {
                if (var7_7 != null) {
                    var7_7.close();
                }
                lbl42:
                // 4 sources:
                do {
                    return null;
                    break;
                } while (true);
                break;
            } while (true);
            catch(Exception var12_17){
                var12_17.printStackTrace();
                **continue;
            }
        }
        catch(Throwable var6_18){
            var7_7 = null;
            lbl52:
            // 3 sources:
            do {
                if (var3_3 != null) {
                    var3_3.close();
                }
                lbl56:
                // 4 sources:
                do {
                    if (var7_7 != null) {
                        var7_7.close();
                    }
                    lbl60:
                    // 4 sources:
                    do {
                        throw var6_19;
                        break;
                    } while (true);
                    break;
                } while (true);
                catch(Exception var9_22){
                    var9_22.printStackTrace();
                    **continue;
                }
                catch(Exception var8_23){
                    var8_23.printStackTrace();
                    **continue;
                }
                break;
            } while (true);
        }
        catch(Throwable var6_20){
            var3_3 = null;
            **GOTO lbl52
        }
        {
            catch(Throwable var6_21){
            var3_3 = var11_8;
            **continue;
        }
        }
        catch(Exception var10_14){
            var11_8 = null;
            **GOTO lbl33
        }
        catch(Exception var10_15){
            **GOTO lbl33
        }
    }

    public static String b() {
        String string2 = com.clilystudio.netbook.hpay100.config.l.d;
        a.b("dalongTest", "kfPhone:" + string2);
        return string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String b(Context context) {
        synchronized (a.class) {
            try {
                String string2 = a.a(context, "profiles", "deviceid", "");
                String string3 = am.a((String) string2) ? null : com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string2);
                boolean bl = am.a((String) string3);
                String string4 = null;
                if (bl) return string4;
                new com.alipay.b.a.a.a();
                Map<String, String> map = com.alipay.b.a.a.a.a(string3);
                if (map == null) return "";
                return map.get("deviceId");
            } catch (Throwable var2_6) {
                // empty catch block
            }
            return "";
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static String b(Context var0, String var1_1, Map var2_2) {
        a.b("dalongTest", "http post2 request url:" + var1_1);
        if (!a.j(var0)) {
            a.b("dalongTest", "net error");
            do {
                return null;
                break;
            } while (true);
        }
        var4_4 = var7_3 = com.clilystudio.netbook.hpay100.b.c.a(var0);
        var8_5 = com.clilystudio.netbook.hpay100.b.c.a(var1_1, null, var2_2);
        if (var8_5 != null) {
            var9_6 = var8_5.a("UTF-8");
            lbl12:
            // 2 sources:
            do {
                a.b("dalongTest", "http request2 result:" + var9_6);
                var4_4.a();
                return var9_6;
                break;
            } while (true);
        }
        catch(Exception var6_7){
            var4_4 = null;
            lbl20:
            // 3 sources:
            var6_8.printStackTrace();
            if (var4_4 == null)**continue;
            var4_4.a();
            return null;
        }
        catch(Throwable var3_10){
            var4_4 = null;
            var5_11 = var3_10;
            lbl27:
            // 2 sources:
            do {
                if (var4_4 != null) {
                    var4_4.a();
                }
                throw var5_11;
                break;
            } while (true);
        }
        {
            catch(Throwable var5_12){
            **continue;
        }
        }
        catch(Exception var6_9){
            **GOTO lbl20
        }
        var9_6 = null;
        **while (true)
    }

    public static String b(Context context, Map<String, String> map) {
        synchronized (a.class) {
            String string2 = new com.alipay.b.a.a(context).a(map);
            return string2;
        }
    }

    public static String b(String string2) {
        StringBuilder stringBuilder;
        block5:
        {
            if (!am.a((String) string2)) break block5;
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(string2.getBytes("UTF-8"));
            byte[] arrby = messageDigest.digest();
            stringBuilder = new StringBuilder();
            for (int i2 = 0; i2 < arrby.length; ++i2) {
                Object[] arrobject = new Object[]{Byte.valueOf(arrby[i2])};
                stringBuilder.append(String.format("%02x", arrobject));
            }
        } catch (Exception var2_7) {
            return null;
        }
        {
            continue;
        }
        String string3 = stringBuilder.toString();
        return string3;
    }

    public static URI b(URL uRL) {
        return uRL.toURI();
    }

    public static void b(Activity activity) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT").setType("image/*");
        try {
            activity.startActivityForResult(intent, 9162);
            return;
        } catch (ActivityNotFoundException var2_2) {
            com.clilystudio.netbook.util.e.a((Activity) activity, (String) "crop pick error");
            return;
        }
    }
//
//    public static void b(Context context, Advert advert) {
//     }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void b(Context context, String string2) {
        synchronized (a.class) {
            try {
                SharedPreferences.Editor editor = context.getSharedPreferences("vkeyid_settings", 0).edit();
                if (editor != null) {
                    editor.putString("vkey_applist_version", com.alipay.security.mobile.module.a.a.b.a(com.alipay.security.mobile.module.a.a.b.a(), string2));
                    editor.commit();
                }
            } catch (Throwable var2_3) {
            }
            return;
        }
    }

    public static void b(Context context, String string2, float f2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putFloat(string2, f2);
        editor.apply();
    }

    public static void b(Context context, String string2, int n2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putInt(string2, n2);
        editor.apply();
    }

    public static void b(Context context, String string2, long l2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putLong(string2, l2);
        editor.apply();
    }

    public static void b(Context context, String string2, String string3, String string4) {
        d = string2;
        e = string3;
        f = string4;
        a.e(context, "CIPHER_BOOK_ID", string2);
        a.e(context, "CIPHER_TOC_ID", string3);
        a.e(context, "CIPHER_CHECKSUM", string4);
    }

    public static void b(Context context, String string2, boolean bl) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putBoolean(string2, bl);
        editor.apply();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void b(Closeable closeable) {
        if (closeable == null) return;
        try {
            closeable.close();
            return;
        } catch (RuntimeException var2_1) {
            throw var2_1;
        } catch (Exception var1_2) {
            return;
        }
    }

    public static void b(String string2, String string3) {
        if (w.b) {
            Log.e(string2, string3);
        }
    }

    public static void b(String[] arrstring) {
        a.a(arrstring, BookSyncRecord$BookModifyType.FEED_ADD);
    }

    public static boolean b(String string2, SQLiteDatabase sQLiteDatabase) {
        try {
            boolean bl = a.a(a.a(sQLiteDatabase), string2);
            return bl;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return false;
        }
    }

    public static int c(Context context, String string2, int n2) {
        return context.getSharedPreferences("mistat", 0).getInt(string2, n2);
    }

    private static int c(String string2, int n2) {
        char c2;
        while (n2 < string2.length() && ((c2 = string2.charAt(n2)) == ' ' || c2 == '\t')) {
            ++n2;
        }
        return n2;
    }

    public static long c(Context context, String string2, long l2) {
        if (context == null) {
            return l2;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(string2, l2);
    }

    public static String c() {
        String string2 = com.clilystudio.netbook.hpay100.config.l.e;
        a.b("dalongTest", "appname:" + string2);
        return string2;
    }

    public static String c(int n2) {
        double d2 = Math.floor((double) n2 / Math.pow(1024.0, 2.0));
        DecimalFormat decimalFormat = new DecimalFormat("0.0");
        return decimalFormat.format(d2) + "MB";
    }

    public static String c(Context context, String string2) {
        return new l().downloadCache(context, string2, "images", true, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String c(Context context, Map<String, String> map) {
        synchronized (a.class) {
            String string2 = com.alipay.b.a.g.a();
            boolean bl = am.a((String) string2);
            if (!bl) return string2;
            com.alipay.b.a.d d2 = am.a((Context) context);
            if (d2 != null && !am.a((String) d2.a())) {
                return d2.a();
            }
            string2 = a.a(context);
            if (!am.a((String) string2)) return string2;
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("utdid", am.a(map, (String) "utdid", (String) ""));
            hashMap.put("tid", am.a(map, (String) "tid", (String) ""));
            hashMap.put("userId", am.a(map, (String) "userId", (String) ""));
            com.alipay.b.e.a.a(context).a(0, hashMap, null);
            String string3 = am.d((Context) context);
            return string3;
        }
    }

    public static String c(byte[] arrby) {
        int n2 = arrby.length;
        StringBuffer stringBuffer = new StringBuffer();
        if (arrby != null) {
            for (int i2 = 0; i2 < n2; ++i2) {
                Object[] arrobject = new Object[]{Byte.valueOf(arrby[i2])};
                stringBuffer.append(String.format("%02x", arrobject));
            }
        }
        return stringBuffer.toString();
    }

    public static ArrayList<String> c(File file) {
        ArrayList<String> arrayList = new ArrayList<String>();
        File[] arrfile = file.listFiles();
        if (arrfile != null) {
            int n2 = arrfile.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                arrayList.add(arrfile[i2].getName());
            }
        }
        return arrayList;
    }

    public static org.litepal.d.a.b c(String string2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        if (a.b(string2, sQLiteDatabase)) {
            org.litepal.d.a.b b2 = new org.litepal.d.a.b();
            b2.a(string2);
            String string3 = "pragma table_info(" + string2 + ")";
            try {
                cursor = sQLiteDatabase.rawQuery(string3, null);
                if (cursor.moveToFirst()) {
                    boolean bl;
                    do {
                        b2.a(cursor.getString(cursor.getColumnIndexOrThrow("name")), cursor.getString(cursor.getColumnIndexOrThrow("type")));
                    } while (bl = cursor.moveToNext());
                }
                if (cursor != null) {
                    cursor.close();
                }
                return b2;
            } catch (Exception var6_6) {
                try {
                    var6_6.printStackTrace();
                    throw new DatabaseGenerateException(var6_6.getMessage());
                } catch (Throwable var5_7) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw var5_7;
                }
            }
        }
        throw new DatabaseGenerateException("Table doesn't exist when executing " + string2);
    }

    public static void c(Context context, String string2, String string3) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c((Context) context));
        com.a.a.a.a(context, string3, string2, hashMap);
    }

    public static void c(Closeable closeable) {
        try {
            closeable.close();
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    public static void c(String string2, String string3) {
        Log.w("PullToRefresh", "You're using the deprecated " + string2 + " attr, please switch over to " + string3);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static /* varargs */ void c(String... var0) {
        if (var0 == null) return;
        var1_1 = var0.length;
        if (var1_1 <= 0) return;
        var2_2 = var0[0];
        var3_3 = TextUtils.isEmpty(var2_2);
        var4_4 = 0;
        if (var3_3)**GOTO lbl -1000
        var5_5 = TextUtils.isEmpty("?");
        var4_4 = 0;
        if (var5_5)**GOTO lbl -1000
        var6_6 = var2_2.indexOf("?");
        var7_7 = var2_2;
        do {
            if (var6_6 == -1) lbl - 1000: // 3 sources:
            {
                if (var1_1 == var4_4 + 1) return;
                throw new DataSupportException("The parameters in conditions are incorrect.");
            }
            var8_8 = var4_4 + 1;
            var9_9 = var7_7.substring(var6_6 + "?".length());
            var10_10 = var9_9.indexOf("?");
            var7_7 = var9_9;
            var6_6 = var10_10;
            var4_4 = var8_8;
        } while (true);
    }

    public static boolean c(Context context) {
        String string2;
        block4:
        {
            string2 = a.a(context, "vkeyid_settings", "log_switch", "");
            if (!am.a((String) string2)) break block4;
            return true;
        }
        try {
            String string3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string2);
            if (!am.a((String) string3)) {
                boolean bl = string3.equals("1");
                return bl;
            }
        } catch (Throwable var1_4) {
            // empty catch block
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean c(String string2) {
        if (string2 == null) return true;
        int n2 = string2.length();
        if (n2 == 0) {
            return true;
        }
        int n3 = 0;
        while (n3 < n2) {
            boolean bl = Character.isWhitespace(string2.charAt(n3));
            boolean bl2 = false;
            if (!bl) return bl2;
            ++n3;
        }
        return true;
    }

    public static int d(int n2) {
        switch (n2) {
            default: {
                return 2;
            }
            case 10: {
                return 0;
            }
            case 20: {
                return 1;
            }
            case 100: {
                return 3;
            }
            case 200:
        }
        return 4;
    }

    public static int d(Context context, String string2) {
        return a.b(context, "drawable", string2);
    }

    public static long d(Context context) {
        String string2;
        block4:
        {
            string2 = context.getSharedPreferences("vkeyid_settings", 0).getString("vkey_valid", "");
            if (!am.a((String) string2)) break block4;
            return 0;
        }
        try {
            String string3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string2);
            if (!am.a((String) string3)) {
                long l2 = Long.parseLong(string3);
                return l2;
            }
        } catch (Throwable var1_4) {
            // empty catch block
        }
        return 0;
    }

    public static String d(Context context, String string2, String string3) {
        if (context == null) {
            return string3;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getString(string2, string3);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static String d(String var0) {
        var1_1 = new StringBuilder();
        if (!new File(var0).exists()) {
            return null;
        }
        var6_2 = new BufferedReader(new InputStreamReader((InputStream) new FileInputStream(var0), "UTF-8"));
        try {
            while ((var10_3 = var6_2.readLine()) != null) {
                var1_1.append(var10_3);
            }
        } catch (IOException var9_4) {
            var3_5 = var6_2;
            lbl13:
            // 2 sources:
            if (var3_5 != null) {
                var3_5.close();
            }
            lbl16:
            // 6 sources:
            do {
                return var1_1.toString();
                break;
            } while (true);
        }
        try {
            var6_2.close();
        } catch (Throwable var12_6) {
        }
        **GOTO lbl16
        catch(Throwable var5_7){
            var6_2 = null;
            var7_8 = var5_7;
            lbl26:
            // 2 sources:
            if (var6_2 != null) {
                var6_2.close();
            }
            lbl29:
            // 4 sources:
            do {
                throw var7_8;
                break;
            } while (true);
        }
        {
            catch(Throwable var4_10){
            **continue;
        }
        }
        {
            catch(Throwable var8_11){
            **continue;
        }
        }
        catch(Throwable var7_9){
            **GOTO lbl26
        }
        catch(IOException var2_12){
            var3_5 = null;
            **GOTO lbl13
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String d(byte[] arrby) {
        byte[] arrby2;
        if (arrby == null || (arrby2 = a.e(arrby)) == null) {
            return null;
        }
        return com.mob.tools.b.d.a(arrby2);
    }

    public static void d(Context context, String string2, int n2) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putInt(string2, n2);
        editor.commit();
    }

    public static void d(Context context, String string2, long l2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putLong(string2, l2);
        editor.apply();
    }

    public static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static byte[] d(String string2, String string3) {
        if (string2 == null || string3 == null) {
            return null;
        }
        byte[] arrby = string2.getBytes("UTF-8");
        byte[] arrby2 = new byte[16];
        System.arraycopy(arrby, 0, arrby2, 0, Math.min(arrby.length, 16));
        byte[] arrby3 = string3.getBytes("UTF-8");
        SecretKeySpec secretKeySpec = new SecretKeySpec(arrby2, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        cipher.init(1, secretKeySpec);
        byte[] arrby4 = new byte[cipher.getOutputSize(arrby3.length)];
        cipher.doFinal(arrby4, cipher.update(arrby3, 0, arrby3.length, arrby4, 0));
        return arrby4;
    }

    public static int e(int n2) {
        switch (n2) {
            default: {
                return 50;
            }
            case 0: {
                return 10;
            }
            case 1: {
                return 20;
            }
            case 3: {
                return 100;
            }
            case 4:
        }
        return 200;
    }

    public static int e(Context context, String string2) {
        return a.b(context, "string", string2);
    }

    public static int e(String string2) {
        long l2;
        block3:
        {
            try {
                l2 = Long.parseLong(string2);
                if (l2 > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (l2 >= 0) break block3;
                return 0;
            } catch (NumberFormatException var1_2) {
                return -1;
            }
        }
        return (int) l2;
    }

    public static long e() {
        if (a.d()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long l2 = (long) statFs.getBlockSize() * (long) statFs.getAvailableBlocks() / 1024;
                return l2;
            } catch (Exception var1_2) {
                var1_2.printStackTrace();
                return 0;
            }
        }
        return -1;
    }

    public static long e(Context context, String string2, long l2) {
        return context.getSharedPreferences("mistat", 0).getLong(string2, l2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String e(Context context) {
        synchronized (a.class) {
            String string2;
            block5:
            {
                string2 = context.getSharedPreferences("vkeyid_settings", 0).getString("vkey_applist", "");
                if (!am.a((String) string2)) break block5;
                return "";
            }
            try {
                String string3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string2);
                if (!am.a((String) string3)) return string3;
                return "";
            } catch (Throwable var2_3) {
                return "";
            } catch (Throwable var1_4) {
                throw var1_4;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String e(String string2, String string3) {
        String string4 = null;
        if (string2 == null) return string4;
        string4 = null;
        if (string3 == null) {
            return string4;
        }
        try {
            string4 = Base64.encodeToString(a.d(string3, string2), 0);
            if (TextUtils.isEmpty(string4)) return string4;
            if (!string4.contains("\n")) return string4;
            return string4.replace("\n", "");
        } catch (Throwable var3_4) {
            com.mob.tools.e.a().w(var3_4);
            return string4;
        }
    }

    public static void e(Context context, String string2, String string3) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = a.P(context);
        editor.putString(string2, string3);
        editor.apply();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static byte[] e(byte[] arrby) {
        if (arrby == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(arrby);
            byte[] arrby2 = a.a(byteArrayInputStream);
            byteArrayInputStream.close();
            return arrby2;
        } catch (Throwable var2_3) {
            com.mob.tools.e.a().w(var2_3);
            return null;
        }
    }

    public static int f(Context context, String string2) {
        return a.b(context, "layout", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap f(String string2) {
        File file;
        if (TextUtils.isEmpty(string2) || !(file = new File(string2)).exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        Bitmap bitmap = a.a((InputStream) fileInputStream, 1);
        fileInputStream.close();
        return bitmap;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String f(Context context) {
        synchronized (a.class) {
            String string2;
            block5:
            {
                string2 = context.getSharedPreferences("vkeyid_settings", 0).getString("vkey_applist_version", "");
                if (!am.a((String) string2)) break block5;
                return "";
            }
            try {
                String string3 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string2);
                if (!am.a((String) string3)) return string3;
                return "";
            } catch (Throwable var2_3) {
                return "";
            } catch (Throwable var1_4) {
                throw var1_4;
            }
        }
    }

    public static String f(Context context, String string2, String string3) {
        return context.getSharedPreferences("mistat", 0).getString(string2, string3);
    }

    public static String f(String string2, String string3) {
        String string4 = URLEncoder.encode(string2, string3);
        if (TextUtils.isEmpty(string4)) {
            return string4;
        }
        return string4.replace("+", "%20");
    }

    public static List<BookFile> f() {
        ArrayList<BookFile> arrayList = new ArrayList<BookFile>();
        File[] arrfile = a.J(c.g).listFiles();
        if (arrfile != null) {
            for (File file : arrfile) {
                BookFile bookFile = new BookFile();
                bookFile.setSize(a.a(file.length(), true));
                bookFile.setName(file.getName());
                arrayList.add(bookFile);
            }
        }
        return arrayList;
    }

    public static void f(Context context, String string2, long l2) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putLong(string2, l2);
        editor.commit();
    }

    public static boolean f(int n2) {
        if (n2 == 4 || n2 == 1 || n2 == 2) {
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static byte[] f(byte[] var0) {
        if (var0 == null) return null;
        if (var0.length <= 0) {
            return null;
        }
        var1_1 = new Deflater();
        var1_1.setInput(var0);
        var1_1.finish();
        var2_2 = new byte[8192];
        a.a = 0;
        try {
            var3_3 = new ByteArrayOutputStream();
        } catch (Throwable var6_7) {
            var4_6 = var6_7;
            var3_3 = null;
            **GOTO lbl -1000
        }
        do {
            if (!var1_1.finished()) break block7;
            var1_1.end();
            break;
        } while (true);
        catch(Throwable var4_5)lbl - 1000: // 2 sources:
        {
            if (var3_3 == null) throw var4_6;
            var3_3.close();
            throw var4_6;
        }
        {
            block7:
            {
                var3_3.close();
                return var3_3.toByteArray();
            }
            var5_4 = var1_1.deflate(var2_2);
            a.a = var5_4 + a.a;
            var3_3.write(var2_2, 0, var5_4);
            continue;
        }
    }

    public static int g(Context context, String string2) {
        return a.b(context, "id", string2);
    }

    public static Bitmap.CompressFormat g(String string2) {
        String string3 = string2.toLowerCase();
        if (string3.endsWith("png") || string3.endsWith("gif")) {
            return Bitmap.CompressFormat.PNG;
        }
        if (string3.endsWith("jpg") || string3.endsWith("jpeg") || string3.endsWith("bmp") || string3.endsWith("tif")) {
            return Bitmap.CompressFormat.JPEG;
        }
        String string4 = a.W(string2);
        if (string4.endsWith("png") || string4.endsWith("gif")) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    public static String g(int n2) {
        switch (n2) {
            default: {
                return "mix";
            }
            case 5: {
                return "mix";
            }
            case 0: {
                return "zhineng";
            }
            case 4: {
                return "shenma";
            }
            case 1: {
                return "baidu";
            }
            case 2: {
                return "tieba";
            }
            case 6: {
                return "soso";
            }
            case 7: {
                return "sogou";
            }
            case 8: {
                return "leidian";
            }
            case 3: {
                return "easou";
            }
            case 9:
        }
        return "zhuishuvip";
    }

    private static String g(byte[] arrby) {
        byte[] arrby2 = new byte[]{-1, -40, -1, -32};
        byte[] arrby3 = new byte[]{-1, -40, -1, -31};
        if (a.a(arrby, arrby2) || a.a(arrby, arrby3)) {
            return "jpg";
        }
        if (a.a(arrby, new byte[]{-119, 80, 78, 71})) {
            return "png";
        }
        if (a.a(arrby, "GIF".getBytes())) {
            return "gif";
        }
        if (a.a(arrby, "BM".getBytes())) {
            return "bmp";
        }
        byte[] arrby4 = new byte[]{73, 73, 42};
        byte[] arrby5 = new byte[]{77, 77, 42};
        if (a.a(arrby, arrby4) || a.a(arrby, arrby5)) {
            return "tif";
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Map<String, String> g(Context context) {
        synchronized (a.class) {
            com.alipay.security.mobile.module.b.d.a();
            HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("AE1", com.alipay.security.mobile.module.b.d.b());
            StringBuilder stringBuilder = new StringBuilder();
            String string2 = com.alipay.security.mobile.module.b.d.c() ? "1" : "0";
            hashMap.put("AE2", stringBuilder.append(string2).toString());
            StringBuilder stringBuilder2 = new StringBuilder();
            String string3 = com.alipay.security.mobile.module.b.d.a(context) ? "1" : "0";
            hashMap.put("AE3", stringBuilder2.append(string3).toString());
            hashMap.put("AE4", com.alipay.security.mobile.module.b.d.d());
            hashMap.put("AE5", com.alipay.security.mobile.module.b.d.e());
            hashMap.put("AE6", com.alipay.security.mobile.module.b.d.f());
            hashMap.put("AE7", com.alipay.security.mobile.module.b.d.g());
            hashMap.put("AE8", com.alipay.security.mobile.module.b.d.h());
            hashMap.put("AE9", com.alipay.security.mobile.module.b.d.i());
            hashMap.put("AE10", com.alipay.security.mobile.module.b.d.j());
            hashMap.put("AE11", com.alipay.security.mobile.module.b.d.k());
            hashMap.put("AE12", com.alipay.security.mobile.module.b.d.l());
            hashMap.put("AE13", com.alipay.security.mobile.module.b.d.m());
            hashMap.put("AE14", com.alipay.security.mobile.module.b.d.n());
            hashMap.put("AE15", com.alipay.security.mobile.module.b.d.o());
            return hashMap;
        }
    }

    public static void g(Context context, String string2, String string3) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putString(string2, string3);
        editor.commit();
    }

    public static boolean g() {
        if (Build.VERSION.SDK_INT >= 11) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean g(String string2, String string3) {
        if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3) || !new File(string2).exists()) {
            return false;
        }
        try {
            a.a(new FileInputStream(string2), new FileOutputStream(string3));
            return true;
        } catch (Throwable var2_2) {
            return false;
        }
    }

    public static com.alipay.security.mobile.module.http.a h(Context context) {
        if (context == null) {
            return null;
        }
        return com.alipay.security.mobile.module.http.b.a(context);
    }

    public static String h(Context context, String string2) {
        File file;
        String string3 = context.getFilesDir().getAbsolutePath() + "/Mob/cache/";
        com.mob.tools.b.a a2 = com.mob.tools.b.a.a(context);
        if (com.mob.tools.b.a.p()) {
            string3 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Mob/" + a2.k() + "/cache/";
        }
        if (!TextUtils.isEmpty(string2)) {
            string3 = string3 + string2 + "/";
        }
        if (!(file = new File(string3)).exists()) {
            file.mkdirs();
        }
        return string3;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String h(String string2) {
        byte[] arrby;
        if (string2 == null || (arrby = a.i(string2)) == null) {
            return null;
        }
        return com.mob.tools.b.d.a(arrby);
    }

    public static String h(String string2, String string3) {
        try {
            String string4 = ByteString.of((string2 + ":" + string3).getBytes("ISO-8859-1")).base64();
            String string5 = "Basic " + string4;
            return string5;
        } catch (UnsupportedEncodingException var2_4) {
            throw new AssertionError();
        }
    }

    public static boolean h() {
        if (Build.VERSION.SDK_INT >= 14) {
            return true;
        }
        return false;
    }

    public static boolean h(int n2) {
        if (n2 == 6 || n2 == 7 || n2 == 8 || n2 == 3) {
            return true;
        }
        return false;
    }

    public static int i(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
            if (networkInfo == null) {
                return -1;
            }
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return -1;
        }
        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            if (networkInfo.getType() == 1) {
                return 6;
            }
            if (networkInfo.getType() == 0) {
                String string2 = networkInfo.getExtraInfo();
                if (TextUtils.isEmpty(string2)) {
                    return 1;
                }
                String string3 = string2.toLowerCase();
                if (string3.equals("cmwap")) {
                    return 0;
                }
                if (string3.equals("cmnet")) {
                    return 1;
                }
                if (string3.equals("3gwap")) {
                    return 7;
                }
                if (string3.equals("3gnet")) {
                    return 8;
                }
                if (string3.equals("uniwap")) {
                    return 2;
                }
                if (string3.equals("uninet")) {
                    return 3;
                }
                if (string3.equals("ctwap")) {
                    return 4;
                }
                if (string3.equals("ctnet") || string3.equals("#777")) {
                    return 5;
                }
                return 1;
            }
            return 1;
        }
        NetworkInfo[] arrnetworkInfo = connectivityManager.getAllNetworkInfo();
        if (arrnetworkInfo == null) {
            return -1;
        }
        int n2 = arrnetworkInfo.length;
        int n3 = 0;
        while (n3 < n2) {
            if (arrnetworkInfo[n3].getState() == NetworkInfo.State.CONNECTED && arrnetworkInfo[n3].getType() == 0) {
                String string4 = networkInfo.getExtraInfo();
                if (TextUtils.isEmpty(string4)) {
                    return 1;
                }
                String string5 = string4.toLowerCase();
                if (string5.equals("cmwap")) {
                    return 0;
                }
                if (string5.equals("cmnet")) {
                    return 1;
                }
                if (string5.equals("3gwap")) {
                    return 7;
                }
                if (string5.equals("3gnet")) {
                    return 8;
                }
                if (string5.equals("uniwap")) {
                    return 2;
                }
                if (string5.equals("uninet")) {
                    return 3;
                }
                if (string5.equals("ctwap")) {
                    return 4;
                }
                if (string5.equals("ctnet") || string5.equals("#777")) {
                    return 5;
                }
                return 1;
            }
            ++n3;
        }
        return -1;
    }

    public static String i(int n2) {
        if (n2 / 10000 > 0) {
            return "" + n2 / 10000 + "\u4e07";
        }
        if (n2 / 1000 > 0) {
            return "" + n2 / 1000 + "\u5343";
        }
        if (n2 / 100 > 0) {
            return "" + n2 / 100 + "\u767e";
        }
        return String.valueOf(n2);
    }

    public static JSONObject i(String string2, String string3) {
        JSONObject jSONObject = new JSONObject();
        try {
            String[] arrstring = string2.split(string3);
            for (int i2 = 0; i2 < arrstring.length; ++i2) {
                String[] arrstring2 = arrstring[i2].split("=");
                jSONObject.put(arrstring2[0], arrstring[i2].substring(1 + arrstring2[0].length()));
            }
        } catch (Exception var4_6) {
            var4_6.printStackTrace();
        }
        {
            continue;
            break;
        }
        return jSONObject;
    }

    public static void i(Context context, String string2) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c((Context) context));
        com.a.a.a.a(context, string2, hashMap);
    }

    public static boolean i() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return false;
    }

    public static byte[] i(String string2) {
        if (string2 == null) {
            return null;
        }
        try {
            byte[] arrby = a.e(string2.getBytes("utf-8"));
            return arrby;
        } catch (Throwable var1_2) {
            com.mob.tools.e.a().w(var1_2);
            return null;
        }
    }

    public static int j(int n2) {
        if (Build.VERSION.SDK_INT >= 11) {
            return 255 & n2 >> 8;
        }
        return 255 & n2 >> 8;
    }

    public static String j(String string2) {
        try {
            String string3 = a.f(string2, "utf-8");
            return string3;
        } catch (Throwable var1_2) {
            com.mob.tools.e.a().w(var1_2);
            return null;
        }
    }

    public static ArrayList<String> j(String string2, String string3) {
        String string4 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        return a.c(new File(c.a, string4));
    }

    public static boolean j() {
        if (Build.VERSION.SDK_INT == 19) {
            return true;
        }
        return false;
    }

    public static boolean j(Context context) {
        if (a.i(context) == -1) {
            return false;
        }
        return true;
    }

    public static boolean j(Context context, String string2) {
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getPackageInfo(string2, 128);
            return true;
        } catch (PackageManager.NameNotFoundException var3_3) {
            return false;
        }
    }

    public static long k(String string2) {
        try {
            Date date = new Date(string2);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            long l2 = calendar.getTimeInMillis();
            return l2;
        } catch (Throwable var2_4) {
            com.mob.tools.e.a().w(var2_4);
            return 0;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    public static Bitmap k(Context var0, String var1_1) {
        block20:
        {
            var3_3 = var9_2 = var0.openFileInput(var1_1);
            var6_5 = var10_4 = BitmapFactory.decodeStream(var3_3);
            if (var3_3 == null) break block20;
            try {
                var3_3.close();
            } catch (Exception var11_6) {
                var11_6.printStackTrace();
                return var6_5;
            }
        }
        do {
            return var6_5;
            break;
        } while (true);
        catch(FileNotFoundException var2_7){
            var3_3 = null;
            lbl17:
            // 5 sources:
            var2_8.printStackTrace();
            var6_5 = null;
            if (var3_3 == null)**continue;
            try {
                var3_3.close();
                return null;
            } catch (Exception var7_12) {
                var7_12.printStackTrace();
                return null;
            }
        }
        catch(Throwable var8_13){
            var3_3 = null;
            var4_14 = var8_13;
            lbl29:
            // 2 sources:
            do {
                if (var3_3 != null) {
                    var3_3.close();
                }
                lbl33:
                // 4 sources:
                do {
                    throw var4_14;
                    break;
                } while (true);
                catch(Exception var5_16){
                    var5_16.printStackTrace();
                    **continue;
                }
                break;
            } while (true);
        }
        {
            catch(Throwable var4_15){
            **continue;
        }
        }
        catch(FileNotFoundException var2_9){
            **GOTO lbl17
        }
        catch(OutOfMemoryError var2_10){
            var3_3 = null;
            **GOTO lbl17
        }
        catch(OutOfMemoryError var2_11){
            **GOTO lbl17
        }
    }

    public static <T> T k(String string2, String string3) {
        Object object;
        File file;
        block4:
        {
            file = new File(a.J(string2), string3);
            if (file.exists()) break block4;
            return null;
        }
        try {
            object = new ObjectInputStream(new FileInputStream(file)).readObject();
        } catch (IOException var4_4) {
            var4_4.printStackTrace();
            return null;
        } catch (ClassNotFoundException var3_5) {
            var3_5.printStackTrace();
            return null;
        }
        return (T) object;
    }

    public static boolean k() {
        try {
            boolean bl = (Boolean) Class.forName("android.os.Build").getMethod("hasSmartBar", new Class[0]).invoke(null, new Object[0]);
            return bl;
        } catch (Exception var0_1) {
            return Build.DEVICE.equals("mx2");
        }
    }

    public static boolean k(Context context) {
        boolean bl;
        block2:
        {
            int n2 = a.i(context);
            if (n2 != 0 && n2 != 1 && n2 != 7 && n2 != 8 && n2 != 9) {
                bl = false;
                if (n2 != 10) break block2;
            }
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Bundle l(String string2) {
        int n2 = string2.indexOf("://");
        String string3 = n2 >= 0 ? "http://" + string2.substring(n2 + 1) : "http://" + string2;
        try {
            URL uRL = new URL(string3);
            Bundle bundle = a.m(uRL.getQuery());
            bundle.putAll(a.m(uRL.getRef()));
            return bundle;
        } catch (Throwable var4_5) {
            com.mob.tools.e.a().w(var4_5);
            return new Bundle();
        }
    }

    public static String l(String string2, String string3) {
        if (!TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
            if (string2.toLowerCase().compareTo(string3.toLowerCase()) <= 0) {
                return String.valueOf(string2) + "_" + string3;
            }
            return String.valueOf(string3) + "_" + string2;
        }
        return null;
    }

    public static boolean l() {
        if (!"0".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.a(), "force_encrypt_chapter"))) {
            return true;
        }
        return false;
    }

    public static boolean l(Context context, String string2) {
        return a.a(context, string2, true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static int[] l(Context context) {
        WindowManager windowManager;
        try {
            windowManager = (WindowManager) context.getSystemService("window");
        } catch (Throwable var1_2) {
            com.mob.tools.e.a().w(var1_2);
            windowManager = null;
        }
        if (windowManager == null) {
            return new int[]{0, 0};
        }
        Display display = windowManager.getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int[] arrn = new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
            return arrn;
        }
        try {
            Point point = new Point();
            Method method = display.getClass().getMethod("getRealSize", Point.class);
            method.setAccessible(true);
            method.invoke(display, point);
            int[] arrn = new int[]{point.x, point.y};
            return arrn;
        } catch (Throwable var8_9) {
            com.mob.tools.e.a().w(var8_9);
            return new int[]{0, 0};
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bundle m(String string2) {
        Bundle bundle = new Bundle();
        if (string2 == null) {
            return bundle;
        }
        String[] arrstring = string2.split("&");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String[] arrstring2 = arrstring[n3].split("=");
            if (arrstring2.length < 2 || arrstring2[1] == null) {
                bundle.putString(URLDecoder.decode(arrstring2[0]), "");
            } else {
                bundle.putString(URLDecoder.decode(arrstring2[0]), URLDecoder.decode(arrstring2[1]));
            }
            ++n3;
        }
        return bundle;
    }

    public static File m(Context context) {
        return a.a(context, true);
    }

    private static String m() {
        String string2 = am.d((String) "deviceid_v2");
        try {
            String string3 = new JSONObject(string2).getString("device");
            String string4 = com.alipay.security.mobile.module.a.a.b.b(com.alipay.security.mobile.module.a.a.b.a(), string3);
            return string4;
        } catch (Exception var1_3) {
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void m(Context context, String string2) {
        if (string2 == null) {
            a.e(context, "ad_splash_show", null);
            return;
        } else {
            String string3 = a.d(context, "ad_splash_show", null);
            if (string3 != null && string3.contains(string2)) return;
            {
                MiStatInterface.recordCountEvent("ad_splash_show", string2);
                a.e(context, "ad_splash_show", string3 + string2);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int n(String string2) {
        int n2 = 1;
        if (string2 == null) {
            throw a.X(string2);
        }
        int n3 = string2.length();
        if (n3 == 0) {
            throw a.X(string2);
        }
        int n4 = string2.charAt(0) == '-' ? n2 : 0;
        if (n4 != 0) {
            if (n2 == n3) {
                throw a.X(string2);
            }
        } else {
            n2 = 0;
        }
        int n5 = string2.length();
        int n6 = n2;
        int n7 = 0;
        while (n6 < n5) {
            int n8 = n6 + 1;
            int n9 = a.a((int) string2.charAt(n6), 10);
            if (n9 == -1) {
                throw a.X(string2);
            }
            if (-214748364 > n7) {
                throw a.X(string2);
            }
            int n10 = n7 * 10 - n9;
            if (n10 > n7) {
                throw a.X(string2);
            }
            n7 = n10;
            n6 = n8;
        }
        if (n4 == 0 && (n7 = -n7) < 0) {
            throw a.X(string2);
        }
        return n7;
    }

    public static File n(Context context) {
        File file = a.a(context, true);
        File file2 = new File(file, "uil-images");
        if (!file2.exists() && !file2.mkdir()) {
            return file;
        }
        return file2;
    }

    private static String n() {
        List<BookReadRecord> list = BookReadRecord.getAll();
        StringBuilder stringBuilder = new StringBuilder();
        if (list.size() > 0) {
            Iterator<BookReadRecord> iterator = list.iterator();
            while (iterator.hasNext()) {
                stringBuilder.append(iterator.next().getBookId());
                stringBuilder.append("|");
            }
            stringBuilder.deleteCharAt(-1 + stringBuilder.length());
        }
        return stringBuilder.toString();
    }

    public static void n(Context context, String string2) {
        MiStatInterface.recordCountEvent("home_ab_menu_click", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static long o(String string2) {
        int n2 = 1;
        if (string2 == null) {
            throw new Throwable("Invalid long: \"" + string2 + "\"");
        }
        int n3 = string2.length();
        if (!n3) {
            throw new Throwable("Invalid long: \"" + string2 + "\"");
        }
        int n4 = string2.charAt(0) == '-' ? n2 : 0;
        if (n4) {
            if (n2 != n3) return a.a(string2, n2, 10, (boolean) n4);
            {
                throw new Throwable("Invalid long: \"" + string2 + "\"");
            }
        } else {
            n2 = 0;
        }
        return a.a(string2, n2, 10, (boolean) n4);
    }

    private static String o() {
        if (am.e() != null && am.e().getUser() != null) {
            return am.e().getUser().getId();
        }
        return "";
    }

    public static Map<String, String> o(Context context) {
        Map<String, String> map = a.p(context);
        map.put("iid", a.n());
        return map;
    }

    public static void o(Context context, String string2) {
        MiStatInterface.recordCountEvent("splash_ad_click", string2);
    }

    public static Map<String, String> p(Context context) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c((Context) context));
        return hashMap;
    }

    public static void p(Context context, String string2) {
        MiStatInterface.recordCountEvent("book_category_major_click", string2);
    }

    public static boolean p(String string2) {
        if (string2.equals("POST") || string2.equals("PUT") || string2.equals("PATCH")) {
            return true;
        }
        return false;
    }

    public static void q(Context context) {
        d = a.d(context, "CIPHER_BOOK_ID", null);
        e = a.d(context, "CIPHER_TOC_ID", null);
        f = a.d(context, "CIPHER_CHECKSUM", null);
    }

    public static void q(Context context, String string2) {
        MiStatInterface.recordCountEvent("reader_menu_event", string2);
    }

    public static boolean q(String string2) {
        if (a.p(string2) || string2.equals("DELETE")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int r(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkInfo == null) {
            return 0;
        }
        int n2 = networkInfo.getType();
        if (n2 == 0) {
            String string2 = networkInfo.getExtraInfo();
            if (a.Q(string2)) return 0;
            if (!string2.toLowerCase().equals("cmnet")) return 2;
            return 3;
        }
        if (n2 != 1) return 0;
        return 1;
    }

    public static void r(String string2) {
        String string3 = a.s(string2);
        BookSubRecord.create(string3);
        com.xiaomi.mipush.sdk.d.b(MyApplication.a(), string3, null);
    }

    public static boolean r(Context context, String string2) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, string2));
    }

    public static String s(String string2) {
        return "book:" + string2;
    }

    public static void s(Context context, String string2) {
        MiStatInterface.recordCountEvent("post_official_open", string2);
    }

    public static boolean s(Context context) {
        if (a.r(context) == 1) {
            return true;
        }
        return false;
    }

    public static void t(Context context, String string2) {
        MiStatInterface.recordCountEvent("HOT_KEY_WORD_CLICK", string2);
    }

    public static void t(String string2) {
        String string3 = a.s(string2);
        BookUnSubRecord.create(string3);
        com.xiaomi.mipush.sdk.d.c(MyApplication.a(), string3, null);
    }

    public static boolean t(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static float u(Context context, String string2) {
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            float f2 = Float.parseFloat(string3);
            return f2;
        } catch (Exception var3_4) {
            return 0.0f;
        }
    }

    public static void u(Context context) {
        int n2 = t.a();
        if (n2 != a.a(context, "key_all_post_open_by_day", 0)) {
            MiStatInterface.recordCountEvent("all_post_open_by_day", null);
            a.b(context, "key_all_post_open_by_day", n2);
        }
    }

    public static void u(String string2) {
        a.a(string2, BookSyncRecord$BookModifyType.SHELF_ADD);
    }

    public static float v(Context context, String string2) {
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            float f2 = Float.parseFloat(string3);
            return f2;
        } catch (Exception var3_4) {
            return 1.0f;
        }
    }

    public static void v(Context context) {
        int n2 = t.a();
        if (n2 != a.a(context, "key_audiobook_listen_count", 0)) {
            MiStatInterface.recordCountEvent("audiobook_listen_count",null);
            a.b(context, "key_audiobook_listen_count", n2);
        }
    }

    public static void v(String string2) {
        a.a(string2, BookSyncRecord$BookModifyType.SHELF_REMOVE);
    }

    public static void w(String string2) {
        a.a(string2, BookSyncRecord$BookModifyType.FEED_ADD);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean w(Context context) {
        if ("com.clilystudio.netbooktest".equals("com.clilystudio.netbook")) {
            return true;
        }
        String string2 = am.n((Context) context);
        int n2 = a.b(OnlineConfigAgent.getInstance().getConfigParams(context, "home_game_center_toggle"), 0);
        boolean bl = am.f((Context) context) < n2;
        if (!"Anzhi".equals(string2)) {
            if (!("Taobao".equals(string2) || "Uc".equals(string2) || "Zhihuiyun".equals(string2))) {
                if (!"Tencent".equals(string2)) return bl;
            }
            if (!bl) return false;
        }
        if (am.o((Context) context)) return true;
        return false;
    }

    public static boolean w(Context context, String string2) {
        float f2;
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            f2 = Float.parseFloat(string3);
        } catch (Exception var3_4) {
            return true;
        }
        if (Math.random() < (double) f2) {
            return true;
        }
        return false;
    }

    public static void x(String string2) {
        a.a(string2, BookSyncRecord$BookModifyType.FEED_REMOVE);
    }

    public static boolean x(Context context) {
        String string2 = am.n((Context) context);
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, "game_center_disabled_at_channel");
        if (string3 != null && string3.length() > 0) {
            String[] arrstring = string3.split(",");
            int n2 = arrstring.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                if (!arrstring[i2].equals(string2)) continue;
                return false;
            }
        }
        return true;
    }

    public static boolean x(Context context, String string2) {
        return context.getSharedPreferences("mistat", 0).contains(string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String y(String string2) {
        String string3;
        if (string2 == null) return null;
        String string4 = string2.replaceAll("(?m)^[ \u3000\t]+", "");
        if (string4 == null) return null;
        String string5 = string4.replaceAll("(?m)^", "\u3000\u3000");
        if (string5 != null) {
            String string6 = string5.replaceAll("&nbsp", "\u3000").replaceAll("&quot", "\"");
            string3 = null;
            if (string6 != null) {
                string3 = string6.replaceAll("^\u3000{3,}", "\u3000\u3000").replaceAll("\n\u3000{3,}", "\n\u3000\u3000");
            }
        } else {
            string3 = string5;
        }
        if (string3 == null) return string3;
        if (string3.length() == 0) return string3;
        if (string3.charAt(-1 + string3.length()) == '\n') return string3;
        return string3 + '\n';
    }

    public static boolean y(Context context) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, "show_remove_ad"));
    }

    public static String z(String string2) {
        if (string2 != null) {
            return string2.replaceAll("\\n[\\s]+", "\n").trim();
        }
        return null;
    }

    public static boolean z(Context context) {
        String string2 = am.n((Context) context);
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, "one_yuan_disabled_channel");
        if (string3 != null && string3.length() > 0) {
            String[] arrstring = string3.split(",");
            int n2 = arrstring.length;
            for (int i2 = 0; i2 < n2; ++i2) {
                if (!arrstring[i2].equals(string2)) continue;
                return false;
            }
        }
        return true;
    }

    public void a(am am2) {
        this.b.setCurrentItem(am2.a());
    }
}
