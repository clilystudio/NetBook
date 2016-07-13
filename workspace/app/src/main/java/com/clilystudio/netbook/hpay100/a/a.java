package com.clilystudio.netbook.hpay100.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
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
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.RemoteViews;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SourceRecord;
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
import com.clilystudio.netbook.util.BookInfo;
import com.clilystudio.netbook.util.X;
import com.clilystudio.netbook.util.t;
import com.integralblue.httpresponsecache.compat.java.lang.ArrayIndexOutOfBoundsException;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mipush.sdk.MiPushClient;

import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.universalchardet.UniversalDetector;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import okio.ByteString;

public class a {
    public static int a;
    private static float c;
    private static String cipherBookId;
    private static String cipherTocId;
    private static String cipherCheckSum;
    private final ViewPager b;

    public a(ViewPager viewPager) {
        this.b = viewPager;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String A(String string) {
        if (cipherBookId == null || cipherTocId == null || cipherCheckSum == null) {
            return null;
        }
        boolean bl = false;
        if (bl) {
            return null;
        }
        String string2 = CipherUtil.b(cipherTocId, CipherUtil.b(cipherBookId, cipherCheckSum)).substring(0, 20);
        if (!BookInfo.h) {
            return CipherUtil.getNewAdvert(string2, string, MyApplication.getInstance());
        }
        BookInfo.h = false;
        long l = Y("http://www.taobao.com");
        if (l <= 7200) {
            l = Y("http://www.163.com");
        }
        if (l <= 7200) {
            l = Y("http://www.baidu.com/");
        }
        if (l <= 7200) {
            l = 7200 + new Date().getTime() / 1000;
        }
        return CipherUtil.getNewAdvertWork(string2, l, string, MyApplication.getInstance());
    }

    public static boolean A(Context context) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, "shelf_ad_third_enable"));
    }

    public static void B(Context context) {
        b(context, "start_night_theme", new Date().getTime());
    }

    public static boolean B(String string) {
        return string.replaceAll("/", "").equals(ReaderActivity.a.replaceAll("/", ""));
    }

    public static void C(Context context) {
        long l2 = a(context, "start_night_theme", 0);
        long l3 = new Date().getTime();
        b(context, "start_night_theme", 0);
    }

    public static byte[] C(String p0) {
        MessageDigest v0 = null;
        try {
            v0 = MessageDigest.getInstance("MD5");
            byte[] v1 = p0.getBytes("UTF-8");
            v1 = v0.digest(v1);

            StringBuilder v2 = new StringBuilder(v1.length * 2);
            for (byte v4 : v1) {
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
        return c(new File(CachePathConst.RootPath, string2));
    }

    public static void D(Context context) {
        b(context, "start_auto_read_time", new Date().getTime());
    }

    public static void E(Context context) {
        long l2 = a(context, "start_auto_read_time", 0);
        long l3 = new Date().getTime();
        b(context, "start_auto_read_time", 0);
    }

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
            if (n3 >= n2 || ((file2 = arrfile[n3]).isFile() ? !(bl = F(file2.getAbsolutePath())) : !(bl = E(file2.getAbsolutePath())))) {
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
        if (!r(context, "show_new_ads")) return false;
        String string = am.n(context);
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
        try {
            return new BufferedReader(new InputStreamReader(new FileInputStream(new File(string)), H(string)));
        } catch (UnsupportedEncodingException | FileNotFoundException e1) {
            e1.printStackTrace();
        }
        return null;
    }

    public static float H(Context context) {
        String string = OnlineConfigAgent.getInstance().getConfigParams(context, "rate_bfd_recommend");
        try {
            return Float.parseFloat(string);
        } catch (Exception var2_3) {
            return 0.0f;
        }
    }

    public static String H(String string) {
        int n2;
        byte[] arrby = new byte[4096];
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(string);
            UniversalDetector universalDetector = new UniversalDetector(null);
            while ((n2 = fileInputStream.read(arrby)) > 0 && !universalDetector.isDone()) {
                universalDetector.handleData(arrby, 0, n2);
            }
            universalDetector.dataEnd();
            String string2 = universalDetector.getDetectedCharset();
            universalDetector.reset();
            if (string2 == null) {
                string2 = "utf-8";
            }
            return string2;
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return "utf-8";
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static File J(String string) {
        if (!d()) {
            return null;
        }
        File file = new File(string);
        if (file.exists()) return file;
        file.mkdirs();
        return file;
    }

    public static void J(Context context) {
        b(context, "tts_start_time", new Date().getTime());
    }

    public static String K(String string) {
        if (Q(string)) {
            return "";
        }
        return string.substring(1 + string.lastIndexOf(File.separator));
    }

    public static int L(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static Bitmap L(String string) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
    }

    public static SharedPreferences M(Context context) {
        return context.getSharedPreferences("umeng_general_config", 0);
    }

    public static HashMap<String, String> M(String string) {
        return (HashMap<String, String>) k(CachePathConst.ChapterKey, string);
    }

    private static File O(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists()) return file;
        if (!file.mkdirs()) {
            com.nostra13.universalimageloader.utils.L.e("Unable to create external cache directory");
            return null;
        }
        try {
            new File(file, ".nomedia").createNewFile();
            return file;
        } catch (IOException var2_2) {
            com.nostra13.universalimageloader.utils.L.e("Can't create \".nomedia\" file in application external cache directory");
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

    private static SharedPreferences.Editor getEditor(Context context) {
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
        return "boolean".equals(string) || "java.lang.Boolean".equals(string) || "float".equals(string) || "java.lang.Float".equals(string) || "double".equals(string) || "java.lang.Double".equals(string) || "int".equals(string) || "java.lang.Integer".equals(string) || "long".equals(string) || "java.lang.Long".equals(string) || "short".equals(string) || "java.lang.Short".equals(string) || "char".equals(string) || "java.lang.Character".equals(string) || "java.lang.String".equals(string) || "java.util.Date".equals(string);
    }

    private static String W(String string) {
        try {
            FileInputStream fileInputStream = new FileInputStream(string);
            byte[] arrby = new byte[8];
            fileInputStream.read(arrby);
            fileInputStream.close();
            return g(arrby);
        } catch (Exception var2_4) {
            return null;
        }
    }

    private static long Y(String string) {
        try {
            URLConnection uRLConnection = new URL(string).openConnection();
            uRLConnection.connect();
            return 7200 + uRLConnection.getDate() / 1000;
        } catch (IOException var2_2) {
            return 0;
        }
    }

    private static boolean Z(String string) {
        return string == null || "".equals(string);
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
        return a(uRI.getScheme(), uRI.getPort());
    }

    public static int a(URL uRL) {
        return a(uRL.getProtocol(), uRL.getPort());
    }

    public static long a(Context context, String string, long l2) {
        if (context == null) {
            return 0;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(string, 0);
    }

    private static long a(String string, int n2, int n3, boolean bl) throws Throwable {
        long l2 = Long.MIN_VALUE / (long) n3;
        long l3 = 0;
        long l4 = string.length();
        while ((long) n2 < l4) {
            int n4 = n2 + 1;
            int n5 = a((int) string.charAt(n2), n3);
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
        paint.setColor(0x424242);
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
        a(bitmap2, 3, true);
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
    private static RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int n2, Bitmap bitmap, CharSequence charSequence4, boolean bl, long l2, int n3, boolean bl2) {
        boolean bl3;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), n3);
        if (bitmap != null && Build.VERSION.SDK_INT >= 16) {
            remoteViews.setImageViewBitmap(R.id.icon, bitmap);
        } else {
            remoteViews.setViewVisibility(R.id.icon, 8);
        }
        if (charSequence != null) {
            remoteViews.setTextViewText(R.id.title, charSequence);
        }
        boolean bl4 = false;
        if (charSequence2 != null) {
            remoteViews.setTextViewText(R.id.text, charSequence2);
            bl4 = true;
        }
        if (charSequence3 != null) {
            remoteViews.setTextViewText(R.id.info, charSequence3);
            remoteViews.setViewVisibility(R.id.info, 0);
            bl3 = true;
        } else if (n2 > 0) {
            if (n2 > context.getResources().getInteger(R.integer.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(R.id.info, context.getResources().getString(R.string.status_bar_notification_info_overflow));
            } else {
                NumberFormat numberFormat = NumberFormat.getIntegerInstance();
                remoteViews.setTextViewText(R.id.info, numberFormat.format(n2));
            }
            remoteViews.setViewVisibility(R.id.info, 0);
            bl3 = true;
        } else {
            remoteViews.setViewVisibility(R.id.info, 8);
            bl3 = bl4;
        }
        boolean bl5 = false;
        if (charSequence4 != null) {
            int n4 = Build.VERSION.SDK_INT;
            bl5 = false;
            if (n4 >= 16) {
                remoteViews.setTextViewText(R.id.text, charSequence4);
                if (charSequence2 != null) {
                    remoteViews.setTextViewText(R.id.text2, charSequence2);
                    remoteViews.setViewVisibility(R.id.text2, 0);
                    bl5 = true;
                } else {
                    remoteViews.setViewVisibility(R.id.text2, 8);
                    bl5 = false;
                }
                if (bl5 && Build.VERSION.SDK_INT >= 16) {
                    if (bl2) {
                        float f2 = context.getResources().getDimensionPixelSize(R.dimen.notification_subtext_size);
                        remoteViews.setTextViewTextSize(R.id.text, 0, f2);
                    }
                    remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
                }
            }
        }
        if (l2 != 0) {
            if (bl) {
                remoteViews.setViewVisibility(R.id.chronometer, 0);
                remoteViews.setLong(R.id.chronometer, "setBase", l2 + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                remoteViews.setBoolean(R.id.chronometer, "setStarted", true);
            } else {
                remoteViews.setViewVisibility(R.id.time, 0);
                remoteViews.setLong(R.id.time, "setTime", l2);
            }
        }
        int n5 = R.id.line3;
        int n6 = bl3 ? 0 : 8;
        remoteViews.setViewVisibility(n5, n6);
        return remoteViews;
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
                v41 = v41 + "\n" + v5;
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

    public static String formatFileSize(long fileSize) {
        if (fileSize < 1000) {
            return "" + fileSize + " B";
        }
        int n2 = (int) (Math.log(fileSize) / Math.log(1000.0));
        String string2 = "" + "kMGTPE".charAt(n2 - 1);
        Object[] arrobject = new Object[]{(double) fileSize / Math.pow(1000.0, n2), string2};
        return String.format(Locale.CHINA,"%.1f %sB", arrobject);
    }

    public static String a(Context context, String string2, String string3, String string4) {
        return context.getSharedPreferences(string2, 0).getString(string3, string4);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static String a(com.clilystudio.netbook.model.BookInfo var0) {
        JSONObject var1_1 = new JSONObject();
        try {
            var1_1.put("bk_name", var0.getTitle());
            String[] var4_2 = var0.getTags();
            if (var4_2 != null) {
                String var9_3 = "";
                for (int var10_4 = 0; var10_4 < var4_2.length; var10_4++) {
                    var9_3 = var9_3 + var4_2[var10_4];
                    if (var10_4 != var4_2.length - 1) {
                        var9_3 = var9_3 + "|";
                    }
                }
                var1_1.put("bk_tag", var9_3);
            }
            var1_1.put("bk_author", var0.getAuthor());
            var1_1.put("bk_updateTime", var0.getUpdated());
            var1_1.put("bk_process", var0.getIsSerial() ? "serialize" : "end");
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        return var1_1.toString();
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
        if (!h(n2)) return null;
        if (n2 != 3) return string3 + "_" + string2;
        String[] arrstring = O(string3);
        if (arrstring == null) return string3 + "_" + string2;
        string3 = arrstring[0];
        return string3 + "_" + string2;
    }

    public static String a(byte[] arrby) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(arrby);
            byte[] arrby2 = messageDigest.digest();
            StringBuilder stringBuffer = new StringBuilder(arrby2.length << 1);
            for (byte anArrby2 : arrby2) {
                stringBuffer.append(Character.forDigit((240 & anArrby2) >> 4, 16));
                stringBuffer.append(Character.forDigit(15 & anArrby2, 16));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException var1_6) {
            return "";
        }
    }

    public static Map<String, String> a(Context context, int n2, String string2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c(context));
        hashMap.put("iid", string2);
        hashMap.put("iids", n());
        hashMap.put("num", "20");
        return hashMap;
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
        List<String> allAlias = MiPushClient.getAllAlias(activity);
        String[] arrstring = allAlias.toArray(new String[allAlias.size()]);
        ArrayList<String> arrayList = new ArrayList<>();
        if (arrstring != null) {
            for (String string2 : arrstring) {
                String string3 = string2 != null && string2.length() > 5 ? string2.substring(5) : "";
                arrayList.add(string3);
            }
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        HashSet<String> hashSet = new HashSet<>();
        List<BookReadRecord> list = BookReadRecord.getAll();
        if (list != null) {
            for (BookReadRecord aList : list) {
                arrayList2.add(aList.getBookId());
            }
            hashSet.addAll(arrayList);
            hashSet.retainAll(arrayList2);
            for (String string4 : arrayList) {
                if (hashSet.contains(string4)) continue;
                t(string4);
            }
            for (String string5 : arrayList2) {
                if (hashSet.contains(string5)) continue;
                r(string5);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, int n2, int n3) {
        // share book
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, ListView listView) {
        int n2 = context.getResources().getDimensionPixelSize(R.dimen.tab_overlap);
        View view = new View(context);
        view.setLayoutParams(new AbsListView.LayoutParams(-2, n2));
        if (a(context, "customer_night_theme", false)) {
            view.setBackgroundResource(R.drawable.bg_dark_list_item);
        } else {
            view.setBackgroundResource(R.drawable.bg_list_item);
        }
        view.setEnabled(false);
        listView.addHeaderView(view);
    }

    public static void a(Context context, String string2, Map<String, String> map) {
        SharedPreferences.Editor editor = context.getSharedPreferences(string2, 0).edit();
        if (editor != null) {
            editor.clear();
            for (String string3 : map.keySet()) {
                editor.putString(string3, map.get(string3));
            }
            editor.apply();
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
        } catch (IllegalStateException var5_5) {
            var5_5.printStackTrace();
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
        if (view == null || !k()) {
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
            method.invoke(view, arrobject);
        } catch (Exception var6_6) {
            var6_6.printStackTrace();
        }
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
     */
    public static void a(TocSource tocSource, String string2) {
        String string3 = tocSource.getSource();
        String string4 = tocSource.getSourceId();
        SourceRecord sourceRecord = SourceRecord.get(string2, string3);
        if (sourceRecord == null) {
            SourceRecord.create(string2, string3, string4);
        } else if (sourceRecord.getSourceId() == null) {
            sourceRecord.setSourceId(string4);
            sourceRecord.save();
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
                a(file2);
            } else {
                file2.delete();
            }
            ++n3;
        } while (true);
    }

    public static <T> void a(T t, String string2, String string3) {
        try {
            File file = new File(J(string2), string3);
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
     * Lifted jumps to return sites
     */
    private static void a(String string2, BookSyncRecord.BookModifyType bookModifyType) {
        BookSyncRecord.updateOrCreate(o(), string2, BookSyncRecord.getTypeId(bookModifyType));
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
                new X(string4, string3, bookModifyType, arrstring).b();
                return;
            }
            arrstring[n2] = list.get(n2).getBookId();
            ++n2;
        } while (true);
    }

    public static void a(String string2, Map<String, String> map) {
        a(map, CachePathConst.ChapterKey, string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(Socket socket) {
        if (socket == null) return;
        try {
            socket.close();
         } catch (Exception var1_1) {
            var1_1.printStackTrace();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void a(Closeable... arrcloseable) {
        int n2 = arrcloseable.length;
        int n3 = 0;
        while (n3 < n2) {
            Closeable closeable = arrcloseable[n3];
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException var4_4) {
                    var4_4.printStackTrace();
                }
            }
            ++n3;
        }
    }

    public static void a(String[] arrstring) {
        a(arrstring, BookSyncRecord.BookModifyType.SHELF_ADD);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(String[] arrstring, BookSyncRecord.BookModifyType bookSyncRecord$BookModifyType) {
        for (String string2 : arrstring) {
            BookSyncRecord.updateOrCreate(o(), string2, BookSyncRecord.getTypeId(bookSyncRecord$BookModifyType));
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
                new X(string4, string3, bookSyncRecord$BookModifyType, arrstring2).b();
                return;
            }
            arrstring2[n2] = list.get(n2).getBookId();
            ++n2;
        } while (true);
    }

    public static boolean a(byte by, int n2) {
        return (by & 1 << n2) != 0;
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
        return intent.getData() != null;
    }

    public static boolean a(Class<?> class_) {
        return class_.isPrimitive() || class_.equals(String.class) || class_.equals(Integer.class) || class_.equals(Long.class) || class_.equals(Double.class) || class_.equals(Float.class) || class_.equals(Boolean.class) || class_.equals(Short.class) || class_.equals(Character.class) || class_.equals(Byte.class) || class_.equals(Void.class);
    }

    public static boolean a(Object object, Object object2) {
        return object == object2 || object != null && object.equals(object2);
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

    public static boolean a(String string2, String string3, String string4, Chapter chapter) {
        if (string4 == null) {
            return false;
        }
        String string5 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        File file = new File(CachePathConst.RootPath, string5);
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
        if (!d()) {
            return false;
        }
        String string5 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        File file = new File(CachePathConst.RootPath, string5);
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

    public static byte[] a(String string2, int n2, String string3) {
        StringBuilder stringBuffer = new StringBuilder();
        if (string2 != null) {
            stringBuffer.append(string2);
        }
        stringBuffer.append(n2);
        stringBuffer.append(string3);
        stringBuffer.append("mMcShCsTr");
        return am.a(stringBuffer.toString().substring(1, 9).getBytes()).getBytes();
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
        return (T[]) arrobject;
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
            for (File file2 : arrfile) {
                if (!file2.isDirectory()) continue;
                n2 = -1 + (n2 + b(file2));
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
        String string2 = g(arrby);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        if (string2 != null && (string2.endsWith("png") || string2.endsWith("gif"))) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        return compressFormat;
    }

    public static Serializable b(String var0, String var1_1, String var2_2) {
        try {
            if (var2_2 != null && d()) {
                String var4_4 = "/ZhuiShuShenQi/Chapter" + File.separator + var0 + File.separator + var1_1;
                File var5_5 = new File(CachePathConst.RootPath, var4_4);
                if (var5_5.exists()) {
                    File var14_6 = new File(var5_5, var2_2);
                    if (var14_6.exists()) {
                        FileInputStream var7_7 = new FileInputStream(var14_6);
                        ObjectInputStream var11_8 = new ObjectInputStream(var7_7);
                        Serializable var15_9 = (Serializable) var11_8.readObject();
                        var11_8.close();
                        var7_7.close();
                        return var15_9;
                    }
                }
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return null;
    }

    public static String b(String string2) {
        StringBuilder stringBuilder;
        block5:
        {
            if (!am.a(string2)) break block5;
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(string2.getBytes("UTF-8"));
            byte[] arrby = messageDigest.digest();
            stringBuilder = new StringBuilder();
            for (byte anArrby : arrby) {
                Object[] arrobject = new Object[]{Byte.valueOf(anArrby)};
                stringBuilder.append(String.format("%02x", arrobject));
            }
            String string3 = stringBuilder.toString();
            return string3;
        } catch (Exception var2_7) {
            return null;
        }
     }

    public static void b(Activity activity) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT").setType("image/*");
        try {
            activity.startActivityForResult(intent, 9162);
        } catch (ActivityNotFoundException var2_2) {
            com.clilystudio.netbook.util.e.a(activity, "crop pick error");
        }
    }

    public static void b(Context context, String string2, float f2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putFloat(string2, f2);
        editor.apply();
    }

    public static void b(Context context, String string2, int n2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putInt(string2, n2);
        editor.apply();
    }

    public static void b(Context context, String key, long value) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putLong(key, value);
        editor.apply();
    }

    public static void b(Context context, String string2, String string3, String string4) {
        cipherBookId = string2;
        cipherTocId = string3;
        cipherCheckSum = string4;
        e(context, "CIPHER_BOOK_ID", string2);
        e(context, "CIPHER_TOC_ID", string3);
        e(context, "CIPHER_CHECKSUM", string4);
    }

    public static void b(Context context, String string2, boolean bl) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
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

    public static void b(String[] arrstring) {
        a(arrstring, BookSyncRecord.BookModifyType.FEED_ADD);
    }

    public static int c(Context context, String key, int defValue) {
        return context.getSharedPreferences("mistat", 0).getInt(key, defValue);
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

    public static String c(int n2) {
        double d2 = Math.floor((double) n2 / Math.pow(1024.0, 2.0));
        DecimalFormat decimalFormat = new DecimalFormat("0.0");
        return decimalFormat.format(d2) + "MB";
    }

    public static String c(byte[] arrby) {
        int n2 = arrby.length;
        StringBuilder stringBuffer = new StringBuilder();
        if (arrby != null) {
            for (byte anArrby : arrby) {
                Object[] arrobject = new Object[]{Byte.valueOf(anArrby)};
                stringBuffer.append(String.format("%02x", arrobject));
            }
        }
        return stringBuffer.toString();
    }

    public static ArrayList<String> c(File file) {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] arrfile = file.listFiles();
        if (arrfile != null) {
            int n2 = arrfile.length;
            for (File anArrfile : arrfile) {
                arrayList.add(anArrfile.getName());
            }
        }
        return arrayList;
    }

    public static void c(Closeable closeable) {
        try {
            closeable.close();
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
        }
    }

    public static void c(String string2, String string3) {
        Log.w("PullToRefresh", "You're using the deprecated " + string2 + " attr, please switch over to " + string3);
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
        return b(context, "drawable", string2);
    }

    public static void d(Context context, String string2, long l2) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putLong(string2, l2);
        editor.apply();
    }

    public static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
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
        return b(context, "string", string2);
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
        if (d()) {
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

    public static void e(Context context, String string2, String string3) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putString(string2, string3);
        editor.apply();
    }

    public static int f(Context context, String string2) {
        return b(context, "layout", string2);
    }

    public static String f(Context context, String string2, String string3) {
        return context.getSharedPreferences("mistat", 0).getString(string2, string3);
    }

    public static void f(Context context, String string2, long l2) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putLong(string2, l2);
        editor.apply();
    }

    public static boolean f(int n2) {
        return n2 == 4 || n2 == 1 || n2 == 2;
    }

    public static int g(Context context, String string2) {
        return b(context, "id", string2);
    }

    public static Bitmap.CompressFormat g(String string2) {
        String string3 = string2.toLowerCase();
        if (string3.endsWith("png") || string3.endsWith("gif")) {
            return Bitmap.CompressFormat.PNG;
        }
        if (string3.endsWith("jpg") || string3.endsWith("jpeg") || string3.endsWith("bmp") || string3.endsWith("tif")) {
            return Bitmap.CompressFormat.JPEG;
        }
        String string4 = W(string2);
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
        if (a(arrby, arrby2) || a(arrby, arrby3)) {
            return "jpg";
        }
        if (a(arrby, new byte[]{-119, 80, 78, 71})) {
            return "png";
        }
        if (a(arrby, "GIF".getBytes())) {
            return "gif";
        }
        if (a(arrby, "BM".getBytes())) {
            return "bmp";
        }
        byte[] arrby4 = new byte[]{73, 73, 42};
        byte[] arrby5 = new byte[]{77, 77, 42};
        if (a(arrby, arrby4) || a(arrby, arrby5)) {
            return "tif";
        }
        return null;
    }

    public static void g(Context context, String string2, String string3) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putString(string2, string3);
        editor.apply();
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 11;
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
        return Build.VERSION.SDK_INT >= 14;
    }

    public static boolean h(int n2) {
        return n2 == 6 || n2 == 7 || n2 == 8 || n2 == 3;
    }

    public static int i(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
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
            for (String anArrstring : arrstring) {
                String[] arrstring2 = anArrstring.split("=");
                jSONObject.put(arrstring2[0], anArrstring.substring(1 + arrstring2[0].length()));
            }
        } catch (Exception var4_6) {
            var4_6.printStackTrace();
        }
         return jSONObject;
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static int j(int n2) {
        if (Build.VERSION.SDK_INT >= 11) {
            return 255 & n2 >> 8;
        }
        return 255 & n2 >> 8;
    }

    public static ArrayList<String> j(String string2, String string3) {
        String string4 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string3;
        return c(new File(CachePathConst.RootPath, string4));
    }

    public static boolean j() {
        return Build.VERSION.SDK_INT == 19;
    }

    public static boolean j(Context context) {
        return i(context) != -1;
    }

    public static boolean j(Context context, String string2) {
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getPackageInfo(string2, PackageManager.GET_META_DATA);
            return true;
        } catch (PackageManager.NameNotFoundException var3_3) {
            return false;
        }
    }

    public static <T> T k(String string2, String string3) {
        Object object;
        File file;
        block4:
        {
            file = new File(J(string2), string3);
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
            boolean bl = (Boolean) Class.forName("android.os.Build").getMethod("hasSmartBar", new Class[0]).invoke(null);
            return bl;
        } catch (Exception var0_1) {
            return Build.DEVICE.equals("mx2");
        }
    }

    public static boolean k(Context context) {
        boolean bl;
        block2:
        {
            int n2 = i(context);
            if (n2 != 0 && n2 != 1 && n2 != 7 && n2 != 8 && n2 != 9) {
                bl = false;
                if (n2 != 10) break block2;
            }
            bl = true;
        }
        return bl;
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
        return !"0".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.getInstance(), "force_encrypt_chapter"));
    }

    public static boolean l(Context context, String string2) {
        return a(context, string2, true);
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

    private static String n() {
        List<BookReadRecord> list = BookReadRecord.getAll();
        StringBuilder stringBuilder = new StringBuilder();
        if (list.size() > 0) {
            for (BookReadRecord aList : list) {
                stringBuilder.append(aList.getBookId());
                stringBuilder.append("|");
            }
            stringBuilder.deleteCharAt(-1 + stringBuilder.length());
        }
        return stringBuilder.toString();
    }

    private static String o() {
        if (am.e() != null && am.e().getUser() != null) {
            return am.e().getUser().getId();
        }
        return "";
    }

    public static Map<String, String> o(Context context) {
        Map<String, String> map = p(context);
        map.put("iid", n());
        return map;
    }

    public static Map<String, String> p(Context context) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("uid", com.clilystudio.netbook.util.e.c(context));
        return hashMap;
    }

    public static boolean p(String string2) {
        return string2.equals("POST") || string2.equals("PUT") || string2.equals("PATCH");
    }

    public static void initCipherInfo(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        cipherBookId = sharedPreferences.getString("CIPHER_BOOK_ID", null);
        cipherTocId = sharedPreferences.getString("CIPHER_TOC_ID", null);
        cipherCheckSum = sharedPreferences.getString("CIPHER_CHECKSUM", null);
    }

    public static boolean q(String string2) {
        return p(string2) || string2.equals("DELETE");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int r(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).getActiveNetworkInfo();
        if (networkInfo == null) {
            return 0;
        }
        int n2 = networkInfo.getType();
        if (n2 == 0) {
            String string2 = networkInfo.getExtraInfo();
            if (Q(string2)) return 0;
            if (!string2.toLowerCase().equals("cmnet")) return 2;
            return 3;
        }
        if (n2 != 1) return 0;
        return 1;
    }

    public static void r(String string2) {
        String string3 = s(string2);
        BookSubRecord.create(string3);
        com.xiaomi.mipush.sdk.MiPushClient.subscribe(MyApplication.getInstance(), string3, null);
    }

    public static boolean r(Context context, String string2) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, string2));
    }

    public static String s(String string2) {
        return "book:" + string2;
    }

    public static boolean s(Context context) {
        return r(context) == 1;
    }

    public static void t(String string2) {
        String string3 = s(string2);
        BookUnSubRecord.create(string3);
        com.xiaomi.mipush.sdk.MiPushClient.unsubscribe(MyApplication.getInstance(), string3, null);
    }

    public static boolean t(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
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
        if (n2 != a(context, "key_all_post_open_by_day", 0)) {
            b(context, "key_all_post_open_by_day", n2);
        }
    }

    public static void u(String string2) {
        a(string2, BookSyncRecord.BookModifyType.SHELF_ADD);
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
        if (n2 != a(context, "key_audiobook_listen_count", 0)) {
            b(context, "key_audiobook_listen_count", n2);
        }
    }

    public static void v(String string2) {
        a(string2, BookSyncRecord.BookModifyType.SHELF_REMOVE);
    }

    public static void w(String string2) {
        a(string2, BookSyncRecord.BookModifyType.FEED_ADD);
    }

    public static boolean w(Context context) {
        return true;
    }

    public static boolean w(Context context, String string2) {
        float f2;
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            f2 = Float.parseFloat(string3);
        } catch (Exception var3_4) {
            return true;
        }
        return Math.random() < (double) f2;
    }

    public static void x(String string2) {
        a(string2, BookSyncRecord.BookModifyType.FEED_REMOVE);
    }

    public static boolean x(Context context) {
        String string2 = am.n(context);
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, "game_center_disabled_at_channel");
        if (string3 != null && string3.length() > 0) {
            String[] arrstring = string3.split(",");
            int n2 = arrstring.length;
            for (String anArrstring : arrstring) {
                if (!anArrstring.equals(string2)) continue;
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
}
