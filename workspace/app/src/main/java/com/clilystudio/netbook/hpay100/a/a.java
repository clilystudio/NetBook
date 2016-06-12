
package com.clilystudio.netbook.hpay100.a;

import android.app.Activity;
import android.app.DownloadManager;
import android.app.DownloadManager$Query;
import android.app.DownloadManager$Request;
import android.app.Notification;
import android.app.Notification$Builder;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Xfermode;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo$State;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.design.widget.K;
import android.support.design.widget.am;
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
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.widget.AbsListView$LayoutParams;
import android.widget.ListView;
import android.widget.RemoteViews;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.integralblue.httpresponsecache.compat.java.lang.ArrayIndexOutOfBoundsException;
import com.migu.sdk.api.MiguSdk;
import com.migu.sdk.api.MiguSdk$IPayCallback;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookSyncRecord$BookModifyType;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.reader.ReaderActivity;
import com.clilystudio.netbook.reader.ReaderTocDialog;
import com.clilystudio.netbook.util.CipherUtil;
import com.clilystudio.netbook.util.DialogUtil$GenderIntroDialog;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.util.T;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
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
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.ByteOrder;
import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.KeySpec;
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
import java.util.Set;
import java.util.zip.Deflater;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import okio.ByteString;
import org.apache.thrift.protocol.a$a;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.exceptions.DataSupportException;
import org.litepal.exceptions.DatabaseGenerateException;
import org.mozilla.universalchardet.UniversalDetector;
import u.aly.be;
import u.aly.bt;

public class a {

    public a(ViewPager ViewPager1)
    {
        b = ViewPager1;
    }

    public static int a;
    private static float c;
    private static String d;
    private static String e;
    private static String f;
    private ViewPager b;     // final access specifier removed

    public static String A(String String1)
    {
        int int2;

        if( d == null || e == null || f == null )
            int2 = 1;
        else
            int2 = 0;
        if( int2 != 0 )
            return null;
        else
        {
            String String3 = CipherUtil.b( e, CipherUtil.b( d, f ) ).substring( 0, 20 );
            long long4;

            if( !com.clilystudio.netbook.util.I.h )
                return CipherUtil.getNewAdvert( String3, String1, (Context) MyApplication.a() );
            I.h = false;
            long4 = Y( "http://www.taobao.com" );
            if( long4 <= 7200L )
                long4 = Y( "http://www.163.com" );
            if( long4 <= 7200L )
                long4 = Y( "http://www.baidu.com/" );
            if( long4 <= 7200L )
                long4 = 7200L + new Date().getTime() / 1000L;
            return CipherUtil.getNewAdvertWork( String3, long4, String1, (Context) MyApplication.a() );
        }
    }

    public static boolean A(Context Context1)
    {
        return "1".equals( com.clilystudio.netbook.umeng.a.b.b( Context1, "shelf_ad_third_enable" ) );
    }

    public static void B(Context Context1)
    {
        b( Context1, "start_night_theme", new Date().getTime() );
    }

    public static boolean B(String String1)
    {
        return String1.replaceAll( "/", "" ).equals( ReaderActivity.a.replaceAll( "/", "" ) );
    }

    public static void C(Context Context1)
    {
        long long2 = a( Context1, "start_night_theme", 0L );
        long long4 = new Date().getTime();

        if( long2 > 0L && long4 > long2 )
            com.clilystudio.netbook.umeng.a.b.a( Context1, "night_theme_period", null, (int) ((long4 - long2) / 1000L / 60L) );
        b( Context1, "start_night_theme", 0L );
    }

    public static byte[] C(String String1)
    {
        byte[] byte_1darray4;
        StringBuilder StringBuilder5;
        int int6;
        int int7;

        try
        {
            byte_1darray4 = MessageDigest.getInstance( "MD5" ).digest( String1.getBytes( "UTF-8" ) );
        }
        catch( Exception Exception2 )
        {
            try
            {
                throw new RuntimeException( "Huh, MD5 should be supported?", (Throwable) Exception2 );
            }
            catch( Exception Exception3 )
            {
                System.out.println( "Md5 parse failded" );
                return String1.getBytes();
            }
        }
        try
        {
            StringBuilder5 = new StringBuilder( byte_1darray4.length << 1 );
            int6 = byte_1darray4.length;
        }
        catch( Exception Exception12 )
        {
            System.out.println( "Md5 parse failded" );
            return String1.getBytes();
        }
        int7 = 0;
label_43:
        {
            byte[] byte_1darray11;

            while( int7 < int6 )
            {
                byte byte8;

                try
                {
                    byte8 = byte_1darray4[int7];
                }
                catch( Exception Exception13 )
                {
                    System.out.println( "Md5 parse failded" );
                    return String1.getBytes();
                }
                if( (byte8 & 0xFF) < 16 )
                {
                    try
                    {
                        StringBuilder5.append( "0" );
                        StringBuilder5.append( Integer.toHexString( byte8 & 0xFF ) );
                    }
                    catch( Exception Exception14 )
                    {
                        System.out.println( "Md5 parse failded" );
                        return String1.getBytes();
                    }
                    break label_43;
                }
            }
            try
            {
                byte_1darray11 = StringBuilder5.toString().getBytes();
            }
            catch( Exception Exception15 )
            {
                System.out.println( "Md5 parse failded" );
                return String1.getBytes();
            }
            return byte_1darray11;
        }
        ++int7;
    }

    public static ArrayList D(String String1)
    {
        String String2 = new StringBuilder( "/ZhuiShuShenQi/Chapter" ).append( File.separator ).append( String1 ).toString();

        return c( new File( com.clilystudio.netbook.c.a, String2 ) );
    }

    public static void D(Context Context1)
    {
        b( Context1, "start_auto_read_time", new Date().getTime() );
    }

    public static void E(Context Context1)
    {
        long long2 = a( Context1, "start_auto_read_time", 0L );
        long long4 = new Date().getTime();

        if( long2 > 0L && long4 > long2 )
            com.clilystudio.netbook.umeng.a.b.a( Context1, "auto_read_period", null, (int) ((long4 - long2) / 1000L / 60L) );
        b( Context1, "start_auto_read_time", 0L );
    }

    public static boolean E(String String1)
    {
        File File2;

        if( !String1.endsWith( File.separator ) )
            String1 = new StringBuilder().append( String1 ).append( File.separator ).toString();
        File2 = new File( String1 );
        if( !File2.exists() || !File2.isDirectory() )
            return false;
        else
        {
            boolean boolean3 = true;
            File[] File_1darray4 = File2.listFiles();

            if( File_1darray4 == null )
                return false;
            else
            {
                int int5 = File_1darray4.length;
                int int6 = 0;

                while( int6 < int5 )
                {
                    File File7 = File_1darray4[int6];

                    if( File7.isFile() )
                    {
                        boolean3 = F( File7.getAbsolutePath() );
                        if( !boolean3 )
                            break;
                        ++int6;
                        continue;
                    }
                    else
                    {
                        boolean3 = E( File7.getAbsolutePath() );
                        if( !boolean3 )
                            break;
                    }
                }
                if( !boolean3 )
                    return false;
                else
                    return File2.delete();
            }
        }
    }

    public static boolean F(Context Context1)
    {
        if( r( Context1, "show_new_ads" ) )
        {
            String String2 = am.n( Context1 );
            String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, "show_new_ads_disabled_channel" );
            int int4;

label_36:
            {
                if( String3 != null && String3.length() > 0 )
                {
                    String[] String_1darray5 = String3.split( "," );
                    int int6 = String_1darray5.length;
                    int int7 = 0;

                    while( int7 < int6 )
                    {
                        if( String_1darray5[int7].equals( String2 ) )
                        {
                            int4 = 0;
                            break label_36;
                        }
                        else
                            ++int7;
                    }
                }
                int4 = 1;
            }
            if( int4 != 0 )
                return true;
        }
        return false;
    }

    public static boolean F(String String1)
    {
        File File2 = new File( String1 );
        boolean boolean3 = File2.isFile();
        boolean boolean4 = false;

        if( boolean3 )
        {
            boolean boolean5 = File2.exists();

            boolean4 = false;
            if( boolean5 )
                boolean4 = File2.delete();
        }
        return boolean4;
    }

    public static BufferedReader G(String String1)
    {
        return new BufferedReader( (Reader) new InputStreamReader( (InputStream) new FileInputStream( new File( String1 ) ), H( String1 ) ) );
    }

    public static void G(Context Context1)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "HOT_KEY_WORD_CHANGE_CLICK", "CHANGE" );
    }

    public static float H(Context Context1)
    {
        String String2 = com.clilystudio.netbook.umeng.a.b.b( Context1, "rate_bfd_recommend" );
        float float4;

        try
        {
            float4 = Float.parseFloat( String2 );
        }
        catch( Exception Exception3 )
        {
            return 0.0F;
        }
        return float4;
    }

    public static String H(String String1)
    {
        byte[] byte_1darray2 = new byte[4096];
        FileInputStream FileInputStream3 = new FileInputStream( String1 );
        UniversalDetector UniversalDetector4 = new UniversalDetector( null );

        for( ;; )
        {
            int int5 = FileInputStream3.read( byte_1darray2 );

            if( int5 > 0 && !UniversalDetector4.a() )
                UniversalDetector4.a( byte_1darray2, 0, int5 );
            else
            {
                String String6;

                UniversalDetector4.c();
                String6 = UniversalDetector4.b();
                UniversalDetector4.d();
                if( String6 == null )
                    String6 = "utf-8";
                return String6;
            }
        }
    }

    public static com.clilystudio.netbook.download.a I(Context Context1)
    {
        String String2 = com.clilystudio.netbook.umeng.a.b.b( Context1, "app_name" );
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, "app_apk_url" );
        String String4 = com.clilystudio.netbook.umeng.a.b.b( Context1, "app_icon_url" );
        String String5 = com.clilystudio.netbook.umeng.a.b.b( Context1, "app_package_name" );

        if( !Z( String2 ) && !Z( String3 ) && !Z( String4 ) && !Z( String5 ) )
            return new com.clilystudio.netbook.download.a( Context1, String2, String3, String4, String5 );
        else
            return null;
    }

    public static File I(String String1)
    {
        File File2 = J( com.clilystudio.netbook.c.g );

        if( File2 == null )
            return null;
        else
            return new File( File2, String1 );
    }

    public static File J(String String1)
    {
        File File2;

        if( !d() )
            File2 = null;
        else
        {
            File2 = new File( String1 );
            if( !File2.exists() )
            {
                File2.mkdirs();
                return File2;
            }
        }
        return File2;
    }

    public static void J(Context Context1)
    {
        b( Context1, "tts_start_time", new Date().getTime() );
    }

    public static String K(String String1)
    {
        if( Q( String1 ) )
            return "";
        else
            return String1.substring( 1 + String1.lastIndexOf( File.separator ) );
    }

    public static void K(Context Context1)
    {
        long long2 = a( Context1, "tts_start_time", 0L );
        long long4 = new Date().getTime();

        if( long2 > 0L && long4 > long2 )
            com.clilystudio.netbook.umeng.a.b.a( Context1, "tts_speaking_period", null, (int) ((long4 - long2) / 1000L / 60L) );
        b( Context1, "tts_start_time", 0L );
    }

    public static int L(Context Context1)
    {
        DisplayMetrics DisplayMetrics2 = new DisplayMetrics();

        ((WindowManager) Context1.getSystemService( "window" )).getDefaultDisplay().getMetrics( DisplayMetrics2 );
        return DisplayMetrics2.heightPixels;
    }

    public static Bitmap L(String String1)
    {
        Bitmap Bitmap4;

        try
        {
            HttpURLConnection HttpURLConnection3 = (HttpURLConnection) new URL( String1 ).openConnection();

            HttpURLConnection3.setDoInput( true );
            HttpURLConnection3.connect();
            Bitmap4 = BitmapFactory.decodeStream( HttpURLConnection3.getInputStream() );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return Bitmap4;
    }

    public static SharedPreferences M(Context Context1)
    {
        return Context1.getSharedPreferences( "umeng_general_config", 0 );
    }

    public static HashMap M(String String1)
    {
        return (HashMap) k( com.clilystudio.netbook.c.c, String1 );
    }

    public static String N(String String1)
    {
        if( String1 == null )
            return "";
        else
            return new StringBuilder().append( com.integralblue.httpresponsecache.compat.libcore.a.a.b( C( String1 ) ) ).append( ".apk" ).toString();
    }

    public static be N(Context Context1)
    {
        be be2;
        reflect.Method Method6;
        reflect.Method Method8;
        int int9;
        long[] long_1darray13;
        long long15;
        long long17;

        try
        {
            Class Class4;
            Class[] Class_1darray5;
            Class[] Class_1darray7;

            be2 = new be();
            Class4 = Class.forName( "android.net.TrafficStats" );
            Class_1darray5 = new Class[1];
            Class_1darray5[0] = Integer.TYPE;
            Method6 = Class4.getMethod( "getUidRxBytes", Class_1darray5 );
            Class_1darray7 = new Class[1];
            Class_1darray7[0] = Integer.TYPE;
            Method8 = Class4.getMethod( "getUidTxBytes", Class_1darray7 );
            int9 = Context1.getApplicationInfo().uid;
        }
        catch( Exception Exception3 )
        {
            bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
            return null;
        }
        if( int9 == -1 )
            long_1darray13 = null;
        else
        {
            long[] long_1darray10;

            try
            {
                Object[] Object_1darray11;
                Object[] Object_1darray12;

                long_1darray10 = new long[2];
                Object_1darray11 = new Object[1];
                Object_1darray11[0] = Integer.valueOf( int9 );
                long_1darray10[0] = ((Long) Method6.invoke( null, Object_1darray11 )).longValue();
                Object_1darray12 = new Object[1];
                Object_1darray12[0] = Integer.valueOf( int9 );
                long_1darray10[1] = ((Long) Method8.invoke( null, Object_1darray12 )).longValue();
            }
            catch( Exception Exception19 )
            {
                bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
                return null;
            }
            long_1darray13 = long_1darray10;
        }
label_93:
        {
            try
            {
                if( long_1darray13[0] > 0L && long_1darray13[1] > 0L )
                    break label_93;
            }
            catch( Exception Exception20 )
            {
                bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
                return null;
            }
            return null;
        }
        try
        {
            SharedPreferences SharedPreferences14 = M( Context1 );

            long15 = SharedPreferences14.getLong( "uptr", -1L );
            long17 = SharedPreferences14.getLong( "dntr", -1L );
            SharedPreferences14.edit().putLong( "uptr", long_1darray13[1] ).putLong( "dntr", long_1darray13[0] ).commit();
        }
        catch( Exception Exception21 )
        {
            bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
            return null;
        }
label_158:
        {
            if( long15 > 0L && long17 > 0L )
            {
                try
                {
                    long_1darray13[0] -= long17;
                    long_1darray13[1] -= long15;
                    if( long_1darray13[0] > 0L && long_1darray13[1] > 0L )
                        break label_158;
                }
                catch( Exception Exception22 )
                {
                    bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
                    return null;
                }
            }
            return null;
        }
        try
        {
            be2.c( (int) long_1darray13[0] );
            be2.a( (int) long_1darray13[1] );
        }
        catch( Exception Exception23 )
        {
            bt.d( "MobclickAgent", "sdk less than 2.2 has get no traffic" );
            return null;
        }
        return be2;
    }

    private static File O(Context Context1)
    {
        File File2 = new File( new File( new File( new File( Environment.getExternalStorageDirectory(), "Android" ), "data" ), Context1.getPackageName() ), "cache" );

        if( !File2.exists() )
        {
            if( !File2.mkdirs() )
            {
                com.nostra13.universalimageloader.b.d.c( "Unable to create external cache directory", new Object[0] );
                File2 = null;
            }
            else
            {
                try
                {
                    new File( File2, ".nomedia" ).createNewFile();
                }
                catch( IOException IOException3 )
                {
                    com.nostra13.universalimageloader.b.d.b( "Can't create \".nomedia\" file in application external cache directory", new Object[0] );
                    return File2;
                }
                return File2;
            }
        }
        return File2;
    }

    public static String[] O(String String1)
    {
        if( String1 != null )
        {
            String[] String_1darray2 = String1.split( ":" );

            if( String_1darray2.length >= 2 )
                return String_1darray2;
        }
        return null;
    }

    private static SharedPreferences$Editor P(Context Context1)
    {
        return PreferenceManager.getDefaultSharedPreferences( Context1 ).edit();
    }

    public static String P(String String1)
    {
        String String3;

        if( "soso".equals( String1 ) )
            String3 = "http://book.soso.com/ajax?m=show_bookdetail&resourceid=...";
        else if( "sogou".equals( String1 ) )
            return "http://novel.mse.sogou.com/content.php/&page=1&md=...";
        else if( "leidian".equals( String1 ) )
            return "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=...";
        else
        {
            boolean boolean2 = "easou".equals( String1 );

            String3 = null;
            if( boolean2 )
                return "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=...";
        }
        return String3;
    }

    public static boolean Q(String String1)
    {
        boolean boolean2;

        if( String1 == null || String1.length() == 0 )
            boolean2 = true;
        else
        {
            int int3;

            for( int3 = 0; int3 < String1.length(); ++int3 )
            {
                char char4 = String1.charAt( int3 );

                if( char4 != 32 && char4 != 9 && char4 != 13 )
                {
                    boolean2 = false;
                    if( char4 != 10 )
                        return boolean2;
                }
            }
            return true;
        }
        return boolean2;
    }

    public static long R(String String1)
    {
        long long3;

        try
        {
            long3 = Long.parseLong( String1 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return 0L;
        }
        return long3;
    }

    public static String S(String String1)
    {
        String String2;

        if( String1 == null )
            return null;
        String2 = org.litepal.c.a.a().e();
        if( "keep".equals( String2 ) )
            return String1;
        else if( "upper".equals( String2 ) )
            return String1.toUpperCase( Locale.US );
        else
            return String1.toLowerCase( Locale.US );
    }

    public static String T(String String1)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) )
            return new StringBuilder( String.valueOf( String1.substring( 0, 1 ).toUpperCase( Locale.US ) ) ).append( String1.substring( 1 ) ).toString();
        else if( String1 == null )
            return null;
        else
            return "";
    }

    public static boolean U(String String1)
    {
        if( "boolean".equals( String1 ) || "java.lang.Boolean".equals( String1 ) || "float".equals( String1 ) || "java.lang.Float".equals( String1 ) || "double".equals( String1 ) || "java.lang.Double".equals( String1 ) || "int".equals( String1 ) || "java.lang.Integer".equals( String1 ) || "long".equals( String1 ) || "java.lang.Long".equals( String1 ) || "short".equals( String1 ) || "java.lang.Short".equals( String1 ) || "char".equals( String1 ) || "java.lang.Character".equals( String1 ) || "java.lang.String".equals( String1 ) || "java.util.Date".equals( String1 ) )
            return true;
        else
            return false;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String V(String String1)
    {
    }

    private static String W(String String1)
    {
        String String7;

        try
        {
            FileInputStream FileInputStream2 = new FileInputStream( String1 );
            byte[] byte_1darray5 = new byte[8];

            FileInputStream2.read( byte_1darray5 );
            FileInputStream2.close();
            String7 = g( byte_1darray5 );
        }
        catch( Exception Exception3 )
        {
            com.mob.tools.e.a().w( (Throwable) Exception3 );
            return null;
        }
        return String7;
    }

    private static Throwable X(String String1)
    {
        throw new Throwable( new StringBuilder( "Invalid int: \"" ).append( String1 ).append( "\"" ).toString() );
    }

    private static long Y(String String1)
    {
        URLConnection URLConnection4;

        try
        {
            URLConnection4 = new URL( String1 ).openConnection();
            URLConnection4.connect();
        }
        catch( IOException IOException3 )
        {
            return 0L;
        }
        catch( MalformedURLException MalformedURLException2 )
        {
            return 0L;
        }
        return 7200L + URLConnection4.getDate() / 1000L;
    }

    private static boolean Z(String String1)
    {
        if( String1 == null || "".equals( String1 ) )
            return true;
        else
            return false;
    }

    public static byte a(byte byte1, int int2, boolean boolean3)
    {
        int int4;

        if( boolean3 )
            int4 = byte1 | 0x1 << int2;
        else
            int4 = byte1 & (0xFFFFFFFF ^ 0x1 << int2);
        return (byte) int4;
    }

    public static float a(Context Context1, String String2, float float3)
    {
        if( Context1 == null )
            return 2.0F;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getFloat( String2, 2.0F );
    }

    private static int a(int int1, int int2)
    {
        int int3;

        if( int2 < 2 || int2 > 36 )
            int3 = -1;
        else
        {
            if( 48 <= int1 && int1 <= 57 )
                int3 = int1 - 48;
            else if( 97 <= int1 && int1 <= 122 )
                int3 = 10 + (int1 - 97);
            else if( 65 <= int1 && int1 <= 90 )
                int3 = 10 + (int1 - 65);
            else
                int3 = -1;
            if( int3 >= int2 )
                return -1;
        }
        return int3;
    }

    public static int a(Context Context1, float float2)
    {
        if( Context1 == null )
            return 0;
        else
            return (int) (0.5F + float2 * Context1.getResources().getDisplayMetrics().density);
    }

    public static int a(Context Context1, int int2)
    {
        if( c <= 0.0F )
            c = Context1.getResources().getDisplayMetrics().density;
        return (int) (0.5F + (float) int2 * c);
    }

    public static int a(Context Context1, String String2, int int3)
    {
        if( Context1 == null )
            return int3;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getInt( String2, int3 );
    }

    public static int a(Context Context1, String String2, String String3)
    {
        return Context1.getApplicationContext().getResources().getIdentifier( String3, String2, Context1.getApplicationContext().getPackageName() );
    }

    public static int a(String String1, int int2)
    {
        if( int2 != -1 )
            return int2;
        else if( "http".equalsIgnoreCase( String1 ) )
            return 80;
        else if( "https".equalsIgnoreCase( String1 ) )
            return 443;
        else
            return -1;
    }

    public static int a(URI URI1)
    {
        return a( URI1.getScheme(), URI1.getPort() );
    }

    public static int a(URL URL1)
    {
        return a( URL1.getProtocol(), URL1.getPort() );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static long a(Context Context1, long long2, String String4, int int5, String String6)
    {
    }

    public static long a(Context Context1, String String2, long long3)
    {
        if( Context1 == null )
            return 0L;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getLong( String2, 0L );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static long a(Context Context1, ArrayList ArrayList2)
    {
    }

    private static long a(String String1, int int2, int int3, boolean boolean4)
    {
        long long5 = -9223372036854775808L / (long) int3;
        long long7 = 0L;
        long long9 = (long) String1.length();

        while( (long) int2 < long9 )
        {
            int int11 = int2 + 1;
            int int12 = a( String1.charAt( int2 ), int3 );

            if( int12 == -1 )
                throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
            else if( long5 > long7 )
                throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
            else
            {
                long long13 = long7 * (long) int3 - (long) int12;

                if( long13 > long7 )
                    throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
                else
                {
                    long7 = long13;
                    int2 = int11;
                }
            }
        }
        if( !boolean4 )
        {
            long7 = -long7;
            if( long7 < 0L )
                throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
        }
        return long7;
    }

    public static Bitmap a(Bitmap Bitmap1)
    {
        Bitmap Bitmap2 = Bitmap.createBitmap( Bitmap1.getWidth(), Bitmap1.getHeight(), Bitmap$Config.ARGB_8888 );
        Canvas Canvas3 = new Canvas( Bitmap2 );
        Paint Paint4 = new Paint();
        Rect Rect5 = new Rect( 0, 0, Bitmap1.getWidth(), Bitmap1.getHeight() );

        Paint4.setAntiAlias( true );
        Canvas3.drawARGB( 0, 0, 0, 0 );
        Paint4.setColor( -12434878 );
        Canvas3.drawCircle( (float) (Bitmap1.getWidth() / 2), (float) (Bitmap1.getHeight() / 2), (float) (Bitmap1.getWidth() / 2), Paint4 );
        Paint4.setXfermode( (Xfermode) new PorterDuffXfermode( PorterDuff$Mode.SRC_IN ) );
        Canvas3.drawBitmap( Bitmap1, Rect5, Rect5, Paint4 );
        return Bitmap2;
    }

    public static Bitmap a(Bitmap Bitmap1, int int2, int int3)
    {
        int int4 = Bitmap1.getWidth();
        int int5 = Bitmap1.getHeight();
        Bitmap Bitmap6 = Bitmap.createBitmap( (int) (0.5F + (float) int4 / 8.0F), (int) (0.5F + (float) int5 / 8.0F), Bitmap$Config.ARGB_8888 );
        Canvas Canvas7 = new Canvas( Bitmap6 );
        Paint Paint8;

        Canvas7.scale( 0.125F, 0.125F );
        Paint8 = new Paint();
        Paint8.setFlags( 2 );
        Canvas7.drawBitmap( Bitmap1, 0.0F, 0.0F, Paint8 );
        a( Bitmap6, 3, true );
        return Bitmap6;
    }

    private static Bitmap a(Bitmap Bitmap1, int int2, boolean boolean3)
    {
        if( int2 <= 0 )
            return null;
        else
        {
            int int4 = Bitmap1.getWidth();
            int int5 = Bitmap1.getHeight();
            int[] int_1darray6 = new int[int4 * int5];
            int int7;
            int int8;
            int int9;
            int int10;
            int[] int_1darray11;
            int[] int_1darray12;
            int[] int_1darray13;
            int[] int_1darray14;
            int int15;
            int int16;
            int[] int_1darray17;
            int int18;
            int[] int_1darray19;
            int[][] int_2darray20;
            int int21;
            int int22;
            int int23;
            int int24;
            int int25;
            int int86;

            Bitmap1.getPixels( int_1darray6, 0, int4, 0, 0, int4, int5 );
            int7 = int4 - 1;
            int8 = int5 - 1;
            int9 = int4 * int5;
            int10 = 1 + (int2 + int2);
            int_1darray11 = new int[int9];
            int_1darray12 = new int[int9];
            int_1darray13 = new int[int9];
            int_1darray14 = new int[Math.max( int4, int5 )];
            int15 = int10 + 1 >> 1;
            int16 = int15 * int15;
            int_1darray17 = new int[int16 * 256];
            for( int18 = 0; int18 < int16 * 256; ++int18 )
                int_1darray17[int18] = int18 / int16;
            int_1darray19 = new int[] { int10, 3 };
            int_2darray20 = (int[][]) reflect.Array.newInstance( Integer.TYPE, int_1darray19 );
            int21 = int2 + 1;
            int22 = 0;
            int23 = 0;
            for( int24 = 0; int24 < int5; int24 = int86 )
            {
                int int69 = 0;
                int int70 = -int2;
                int int71 = 0;
                int int72 = 0;
                int int73 = 0;
                int int74 = 0;
                int int75 = int70;
                int int76 = 0;
                int int77 = 0;
                int int78 = 0;
                int int79 = 0;
                int int80;
                int int81;
                int int82;
                int int83;
                int int84;
                int int85;

                while( int75 <= int2 )
                {
                    int int99 = int_1darray6[int23 + Math.min( int7, Math.max( int75, 0 ) )];
                    int[] int_1darray100 = int_2darray20[int75 + int2];
                    int int101;

                    int_1darray100[0] = 0xFF & int99 >> 0x10;
                    int_1darray100[1] = 0xFF & int99 >> 0x8;
                    int_1darray100[2] = int99 & 0xFF;
                    int101 = int21 - Math.abs( int75 );
                    int78 += int101 * int_1darray100[0];
                    int77 += int101 * int_1darray100[1];
                    int76 += int101 * int_1darray100[2];
                    if( int75 > 0 )
                    {
                        int71 += int_1darray100[0];
                        int79 += int_1darray100[1];
                        int69 += int_1darray100[2];
                    }
                    else
                    {
                        int74 += int_1darray100[0];
                        int73 += int_1darray100[1];
                        int72 += int_1darray100[2];
                    }
                    ++int75;
                }
                int80 = int78;
                int81 = int77;
                int82 = int76;
                int83 = 0;
                int84 = int2;
                while( int83 < int4 )
                {
                    int int87;
                    int int88;
                    int int89;
                    int[] int_1darray90;
                    int int91;
                    int int92;
                    int int93;
                    int int94;
                    int int95;
                    int int96;
                    int int97;
                    int[] int_1darray98;

                    int_1darray11[int23] = int_1darray17[int80];
                    int_1darray12[int23] = int_1darray17[int81];
                    int_1darray13[int23] = int_1darray17[int82];
                    int87 = int80 - int74;
                    int88 = int81 - int73;
                    int89 = int82 - int72;
                    int_1darray90 = int_2darray20[(int10 + (int84 - int2)) % int10];
                    int91 = int74 - int_1darray90[0];
                    int92 = int73 - int_1darray90[1];
                    int93 = int72 - int_1darray90[2];
                    if( int24 == 0 )
                        int_1darray14[int83] = Math.min( 1 + (int83 + int2), int7 );
                    int94 = int_1darray6[int22 + int_1darray14[int83]];
                    int_1darray90[0] = 0xFF & int94 >> 0x10;
                    int_1darray90[1] = 0xFF & int94 >> 0x8;
                    int_1darray90[2] = int94 & 0xFF;
                    int95 = int71 + int_1darray90[0];
                    int96 = int79 + int_1darray90[1];
                    int97 = int69 + int_1darray90[2];
                    int80 = int87 + int95;
                    int81 = int88 + int96;
                    int82 = int89 + int97;
                    int84 = (int84 + 1) % int10;
                    int_1darray98 = int_2darray20[int84 % int10];
                    int74 = int91 + int_1darray98[0];
                    int73 = int92 + int_1darray98[1];
                    int72 = int93 + int_1darray98[2];
                    int71 = int95 - int_1darray98[0];
                    int79 = int96 - int_1darray98[1];
                    int69 = int97 - int_1darray98[2];
                    ++int23;
                    ++int83;
                }
                int85 = int22 + int4;
                int86 = int24 + 1;
                int22 = int85;
            }
            for( int25 = 0; int25 < int4; ++int25 )
            {
                int int26 = 0;
                int int27 = int4 * -int2;
                int int28 = -int2;
                int int29 = 0;
                int int30 = 0;
                int int31 = 0;
                int int32 = 0;
                int int33 = int28;
                int int34 = 0;
                int int35 = 0;
                int int36 = 0;
                int int37 = int27;
                int int38 = 0;
                int int39;
                int int40;
                int int41;
                int int42;
                int int43;
                int int44;
                int int45;
                int int46;
                int int47;
                int int48;
                int int49;
                int int50;

                while( int33 <= int2 )
                {
                    int int63 = int25 + Math.max( 0, int37 );
                    int[] int_1darray64 = int_2darray20[int33 + int2];
                    int int65;
                    int int66;
                    int int67;
                    int int68;

                    int_1darray64[0] = int_1darray11[int63];
                    int_1darray64[1] = int_1darray12[int63];
                    int_1darray64[2] = int_1darray13[int63];
                    int65 = int21 - Math.abs( int33 );
                    int66 = int36 + int65 * int_1darray11[int63];
                    int67 = int35 + int65 * int_1darray12[int63];
                    int68 = int34 + int65 * int_1darray13[int63];
                    if( int33 > 0 )
                    {
                        int29 += int_1darray64[0];
                        int38 += int_1darray64[1];
                        int26 += int_1darray64[2];
                    }
                    else
                    {
                        int32 += int_1darray64[0];
                        int31 += int_1darray64[1];
                        int30 += int_1darray64[2];
                    }
                    if( int33 < int8 )
                        int37 += int4;
                    ++int33;
                    int34 = int68;
                    int35 = int67;
                    int36 = int66;
                }
                int39 = int35;
                int40 = int36;
                int41 = 0;
                int42 = int34;
                int43 = int2;
                int44 = int26;
                int45 = int38;
                int46 = int29;
                int47 = int30;
                int48 = int31;
                int49 = int32;
                int50 = int25;
                while( int41 < int5 )
                {
                    int int51;
                    int int52;
                    int int53;
                    int[] int_1darray54;
                    int int55;
                    int int56;
                    int int57;
                    int int58;
                    int int59;
                    int int60;
                    int int61;
                    int[] int_1darray62;

                    int_1darray6[int50] = 0xFF000000 & int_1darray6[int50] | int_1darray17[int40] << 0x10 | int_1darray17[int39] << 0x8 | int_1darray17[int42];
                    int51 = int40 - int49;
                    int52 = int39 - int48;
                    int53 = int42 - int47;
                    int_1darray54 = int_2darray20[(int10 + (int43 - int2)) % int10];
                    int55 = int49 - int_1darray54[0];
                    int56 = int48 - int_1darray54[1];
                    int57 = int47 - int_1darray54[2];
                    if( int25 == 0 )
                        int_1darray14[int41] = int4 * Math.min( int41 + int21, int8 );
                    int58 = int25 + int_1darray14[int41];
                    int_1darray54[0] = int_1darray11[int58];
                    int_1darray54[1] = int_1darray12[int58];
                    int_1darray54[2] = int_1darray13[int58];
                    int59 = int46 + int_1darray54[0];
                    int60 = int45 + int_1darray54[1];
                    int61 = int44 + int_1darray54[2];
                    int40 = int51 + int59;
                    int39 = int52 + int60;
                    int42 = int53 + int61;
                    int43 = (int43 + 1) % int10;
                    int_1darray62 = int_2darray20[int43];
                    int49 = int55 + int_1darray62[0];
                    int48 = int56 + int_1darray62[1];
                    int47 = int57 + int_1darray62[2];
                    int46 = int59 - int_1darray62[0];
                    int45 = int60 - int_1darray62[1];
                    int44 = int61 - int_1darray62[2];
                    int50 += int4;
                    ++int41;
                }
            }
            Bitmap1.setPixels( int_1darray6, 0, int4, 0, 0, int4, int5 );
            return Bitmap1;
        }
    }

    public static Bitmap a(View View1, int int2, int int3)
    {
        Bitmap Bitmap4 = Bitmap.createBitmap( int2, int3, Bitmap$Config.ARGB_8888 );

        View1.draw( new Canvas( Bitmap4 ) );
        return Bitmap4;
    }

    public static Bitmap a(InputStream InputStream1, int int2)
    {
        BitmapFactory$Options Options3 = new BitmapFactory$Options();

        Options3.inPreferredConfig = Bitmap$Config.RGB_565;
        Options3.inPurgeable = true;
        Options3.inInputShareable = true;
        Options3.inSampleSize = int2;
        return BitmapFactory.decodeStream( InputStream1, null, Options3 );
    }

    public static Bundle a(com.e.a.a.e.g g1)
    {
        Bundle Bundle2 = new Bundle();

        Bundle2.putInt( "_wxobject_sdkVer", g1.a );
        Bundle2.putString( "_wxobject_title", g1.b );
        Bundle2.putString( "_wxobject_description", g1.c );
        Bundle2.putByteArray( "_wxobject_thumbdata", g1.d );
        if( g1.e != null )
        {
            String String3 = g1.e.getClass().getName();

            if( String3 == null || String3.length() == 0 )
                com.e.a.a.b.a.a( "MicroMsg.SDK.WXMediaMessage", "pathNewToOld fail, newPath is null" );
            else
                String3 = String3.replace( (CharSequence) "com.tencent.mm.sdk.modelmsg", (CharSequence) "com.tencent.mm.sdk.openapi" );
            Bundle2.putString( "_wxobject_identifier_", String3 );
        }
        Bundle2.putString( "_wxobject_mediatagname", g1.f );
        return Bundle2;
    }

    private static RemoteViews a(Context Context1, NotificationCompatBase$Action Action2)
    {
        int int3;
        RemoteViews RemoteViews4;

        if( Action2.getActionIntent() == null )
            int3 = 1;
        else
            int3 = 0;
        RemoteViews4 = new RemoteViews( Context1.getPackageName(), R$layout.notification_media_action );
        RemoteViews4.setImageViewResource( R$id.action0, Action2.getIcon() );
        if( int3 == 0 )
            RemoteViews4.setOnClickPendingIntent( R$id.action0, Action2.getActionIntent() );
        if( Build$VERSION.SDK_INT >= 15 )
            RemoteViews4.setContentDescription( R$id.action0, Action2.getTitle() );
        return RemoteViews4;
    }

    private static RemoteViews a(Context Context1, CharSequence CharSequence2, CharSequence CharSequence3, CharSequence CharSequence4, int int5, Bitmap Bitmap6, CharSequence CharSequence7, boolean boolean8, long long9, int int11, boolean boolean12)
    {
        RemoteViews RemoteViews13 = new RemoteViews( Context1.getPackageName(), int11 );
        int int14;
        int int15;
        int int16;
        int int17;
        int int18;

        if( Bitmap6 != null && Build$VERSION.SDK_INT >= 16 )
            RemoteViews13.setImageViewBitmap( R$id.icon, Bitmap6 );
        else
            RemoteViews13.setViewVisibility( R$id.icon, 8 );
        if( CharSequence2 != null )
            RemoteViews13.setTextViewText( R$id.title, CharSequence2 );
        int14 = 0;
        if( CharSequence3 != null )
        {
            RemoteViews13.setTextViewText( R$id.text, CharSequence3 );
            int14 = 1;
        }
        if( CharSequence4 != null )
        {
            RemoteViews13.setTextViewText( R$id.info, CharSequence4 );
            RemoteViews13.setViewVisibility( R$id.info, 0 );
            int15 = 1;
        }
        else if( int5 > 0 )
        {
            if( int5 > Context1.getResources().getInteger( R$integer.status_bar_notification_info_maxnum ) )
                RemoteViews13.setTextViewText( R$id.info, (CharSequence) Context1.getResources().getString( R$string.status_bar_notification_info_overflow ) );
            else
            {
                NumberFormat NumberFormat21 = NumberFormat.getIntegerInstance();

                RemoteViews13.setTextViewText( R$id.info, (CharSequence) NumberFormat21.format( (long) int5 ) );
            }
            RemoteViews13.setViewVisibility( R$id.info, 0 );
            int15 = 1;
        }
        else
        {
            RemoteViews13.setViewVisibility( R$id.info, 8 );
            int15 = int14;
        }
        int16 = 0;
        if( CharSequence7 != null )
        {
            int int20 = Build$VERSION.SDK_INT;

            int16 = 0;
            if( int20 >= 16 )
            {
                RemoteViews13.setTextViewText( R$id.text, CharSequence7 );
                if( CharSequence3 != null )
                {
                    RemoteViews13.setTextViewText( R$id.text2, CharSequence3 );
                    RemoteViews13.setViewVisibility( R$id.text2, 0 );
                    int16 = 1;
                }
                else
                {
                    RemoteViews13.setViewVisibility( R$id.text2, 8 );
                    int16 = 0;
                }
            }
        }
        if( int16 != 0 && Build$VERSION.SDK_INT >= 16 )
        {
            if( boolean12 )
            {
                float float19 = (float) Context1.getResources().getDimensionPixelSize( R$dimen.notification_subtext_size );

                RemoteViews13.setTextViewTextSize( R$id.text, 0, float19 );
            }
            RemoteViews13.setViewPadding( R$id.line1, 0, 0, 0, 0 );
        }
        if( long9 != 0L )
        {
            if( boolean8 )
            {
                RemoteViews13.setViewVisibility( R$id.chronometer, 0 );
                RemoteViews13.setLong( R$id.chronometer, "setBase", long9 + (SystemClock.elapsedRealtime() - System.currentTimeMillis()) );
                RemoteViews13.setBoolean( R$id.chronometer, "setStarted", true );
            }
            else
            {
                RemoteViews13.setViewVisibility( R$id.time, 0 );
                RemoteViews13.setLong( R$id.time, "setTime", long9 );
            }
        }
        int17 = R$id.line3;
        if( int15 != 0 )
            int18 = 0;
        else
            int18 = 8;
        RemoteViews13.setViewVisibility( int17, int18 );
        return RemoteViews13;
    }

    public static com.e.a.a.e.g a(Bundle Bundle1)
    {
        com.e.a.a.e.g g2 = new com.e.a.a.e.g();
        String String3;
        String String4;

        g2.a = Bundle1.getInt( "_wxobject_sdkVer" );
        g2.b = Bundle1.getString( "_wxobject_title" );
        g2.c = Bundle1.getString( "_wxobject_description" );
        g2.d = Bundle1.getByteArray( "_wxobject_thumbdata" );
        g2.f = Bundle1.getString( "_wxobject_mediatagname" );
        String3 = Bundle1.getString( "_wxobject_identifier_" );
        if( String3 == null || String3.length() == 0 )
        {
            com.e.a.a.b.a.a( "MicroMsg.SDK.WXMediaMessage", "pathOldToNew fail, oldPath is null" );
            String4 = String3;
        }
        else
            String4 = String3.replace( (CharSequence) "com.tencent.mm.sdk.openapi", (CharSequence) "com.tencent.mm.sdk.modelmsg" );
        if( String4 != null && String4.length() > 0 )
        {
            try
            {
                g2.e = (K) Class.forName( String4 ).newInstance();
            }
            catch( Exception Exception5 )
            {
                Exception5.printStackTrace();
                com.e.a.a.b.a.a( "MicroMsg.SDK.WXMediaMessage", new StringBuilder( "get media object from bundle failed: unknown ident " ).append( String4 ).append( ", ex = " ).append( Exception5.getMessage() ).toString() );
                return g2;
            }
        }
        return g2;
    }

    public static ChapterRoot a(String String1, ChapterLink[] ChapterLink_1darray2, int int3)
    {
        ChapterLink ChapterLink4 = ChapterLink_1darray2[int3];
        ChapterRoot ChapterRoot5 = new ChapterRoot();
        Chapter Chapter6 = new Chapter();
        BufferedReader BufferedReader8;
        BufferedReader BufferedReader14;
        int int15;
        String String16;
        int int17;
        String String18;

        try
        {
            BufferedReader14 = G( String1 );
        }
        catch( IOException IOException10 )
        {
            BufferedReader8 = null;
            try
            {
                IOException10.printStackTrace();
            }
            finally
            {
                if( BufferedReader8 != null )
                {
                    try
                    {
                        BufferedReader8.close();
                    }
                    catch( Exception Exception9 )
                    {
                        Exception9.printStackTrace();
                    }
                }
                throw Object7;
            }
            if( BufferedReader8 != null )
            {
                try
                {
                    BufferedReader8.close();
                }
                catch( Exception Exception11 )
                {
                    Exception11.printStackTrace();
                }
            }
            return null;
        }
        catch( FileNotFoundException FileNotFoundException12 )
        {
            BufferedReader8 = null;
            try
            {
                FileNotFoundException12.printStackTrace();
            }
            finally
            {
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                throw Object7;
            }
            if( BufferedReader8 != null )
            {
                try
                {
                    BufferedReader8.close();
                }
                catch( Exception Exception13 )
                {
                    Exception13.printStackTrace();
                }
            }
            return null;
        }
        finally
        {
            BufferedReader8 = null;
            if( BufferedReader8 != null )
                BufferedReader8.close();
            throw Object7;
        }
        BufferedReader8 = BufferedReader14;
        int15 = 0;
label_28:
        for( ;; )
        {
            try
            {
                if( int15 >= ChapterLink4.getTxtLineOffset() )
                    break label_28;
                BufferedReader8.readLine();
            }
            catch( IOException IOException20 )
            {
                IOException20.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            catch( FileNotFoundException FileNotFoundException21 )
            {
                FileNotFoundException21.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            finally
            {
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                throw Object7;
            }
            ++int15;
        }
        String16 = "";
        int17 = -1;
        try
        {
            if( int3 < -1 + ChapterLink_1darray2.length )
                int17 = ChapterLink_1darray2[int3 + 1].getTxtLineOffset() - ChapterLink4.getTxtLineOffset();
            for( ;; )
            {
                String18 = BufferedReader8.readLine();
                break;
            }
        }
        catch( IOException IOException22 )
        {
            IOException22.printStackTrace();
            if( BufferedReader8 != null )
                BufferedReader8.close();
            return null;
        }
        catch( FileNotFoundException FileNotFoundException23 )
        {
            FileNotFoundException23.printStackTrace();
            if( BufferedReader8 != null )
                BufferedReader8.close();
            return null;
        }
        finally
        {
            if( BufferedReader8 != null )
                BufferedReader8.close();
            throw Object7;
        }
        if( String18 != null && int17 != 0 )
        {
            try
            {
                String16 = new StringBuilder().append( String16 ).append( "\n" ).append( String18 ).toString();
            }
            catch( IOException IOException24 )
            {
                IOException24.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            catch( FileNotFoundException FileNotFoundException25 )
            {
                FileNotFoundException25.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            finally
            {
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                throw Object7;
            }
            --int17;
        }
        else
        {
            try
            {
                Chapter6.setBody( z( String16 ) );
                ChapterRoot5.setChapter( Chapter6 );
            }
            catch( IOException IOException26 )
            {
                IOException26.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            catch( FileNotFoundException FileNotFoundException27 )
            {
                FileNotFoundException27.printStackTrace();
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                return null;
            }
            finally
            {
                if( BufferedReader8 != null )
                    BufferedReader8.close();
                throw Object7;
            }
            try
            {
                BufferedReader8.close();
            }
            catch( Exception Exception19 )
            {
                Exception19.printStackTrace();
                return ChapterRoot5;
            }
            return ChapterRoot5;
        }
    }

    public static File a(Context Context1, boolean boolean2)
    {
        File File3 = null;

        if( boolean2 )
        {
            boolean boolean5 = "mounted".equals( Environment.getExternalStorageState() );

            File3 = null;
            if( boolean5 )
            {
                int int6;

                if( Context1.checkCallingOrSelfPermission( "android.permission.WRITE_EXTERNAL_STORAGE" ) == 0 )
                    int6 = 1;
                else
                    int6 = 0;
                File3 = null;
                if( int6 != 0 )
                    File3 = O( Context1 );
            }
        }
        if( File3 == null )
            File3 = Context1.getCacheDir();
        if( File3 == null )
        {
            String String4 = new StringBuilder( "/data/data/" ).append( Context1.getPackageName() ).append( "/cache/" ).toString();

            com.nostra13.universalimageloader.b.d.c( "Can't define system cache directory! '%s' will be used.", new Object[] { String4 } );
            File3 = new File( String4 );
        }
        return File3;
    }

    public static Class a(reflect.Type Type1)
    {
        reflect.Type Type2;

        for( Type2 = Type1; !( Type2 instanceof Class ); Type2 = ((reflect.ParameterizedType) Type2).getRawType() )
        {
            if( !( Type2 instanceof reflect.ParameterizedType ) )
                throw new IllegalArgumentException( "TODO" );
        }
        return (Class) Type2;
    }

    public static Object a(int int1, String String2)
    {
        switch( int1 )
        {
            default:
                try
                {
                    com.e.a.a.b.a.a( "MicroMsg.SDK.PluginProvider.Resolver", "unknown type" );
                }
                catch( Exception Exception3 )
                {
                    Exception3.printStackTrace();
                }
                String2 = null;
            case 3:
            case 1:
                try
                {
                    return Integer.valueOf( String2 );
                }
                catch( Exception Exception5 )
                {
                    Exception5.printStackTrace();
                }
            case 3:
                return String2;
            case 2:
                return Long.valueOf( String2 );
            case 4:
                return Boolean.valueOf( String2 );
            case 5:
                return Float.valueOf( String2 );
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String a()
    {
    }

    public static String a(int int1, String String2, String String3)
    {
        Cipher Cipher6;
        byte[] byte_1darray7;
        byte[] byte_1darray8;

        try
        {
            Object Object4 = new SecretKeySpec( String3.getBytes(), "DES" );

            Cipher6 = Cipher.getInstance( "DES" );
            Cipher6.init( int1, (Key) Object4 );
        }
        catch( Exception Exception5 )
        {
            return null;
        }
        if( int1 == 2 )
        {
            try
            {
                byte_1darray7 = com.alipay.sdk.c.a.a( String2 );
                byte_1darray8 = Cipher6.doFinal( byte_1darray7 );
            }
            catch( Exception Exception10 )
            {
                return null;
            }
        }
        else
            byte_1darray7 = String2.getBytes( "UTF-8" );
        if( int1 == 2 )
        {
            try
            {
                return new String( byte_1darray8 );
            }
            catch( Exception Exception11 )
            {
                return null;
            }
        }
        else
        {
            String String9;

            try
            {
                String9 = com.alipay.sdk.c.a.a( byte_1darray8 );
            }
            catch( Exception Exception12 )
            {
                return null;
            }
            return String9;
        }
    }

    public static String a(long long1, boolean boolean3)
    {
        if( long1 < 1000L )
            return new StringBuilder().append( long1 ).append( " B" ).toString();
        else
        {
            int int4 = (int) (Math.log( (double) long1 ) / Math.log( 1000.0 ));
            String String5 = new StringBuilder().append( "kMGTPE".charAt( int4 - 1 ) ).toString();
            Object[] Object_1darray6 = new Object[2];

            Object_1darray6[0] = Double.valueOf( (double) long1 / Math.pow( 1000.0, (double) int4 ) );
            Object_1darray6[1] = String5;
            return String.format( "%.1f %sB", Object_1darray6 );
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String a(Context Context1)
    {
    }

    public static String a(Context Context1, String String2, String String3, String String4)
    {
        return Context1.getSharedPreferences( String2, 0 ).getString( String3, String4 );
    }

    public static String a(Context Context1, String String2, Map Map3, boolean boolean4, int int5, int int6, boolean boolean7)
    {
        com.clilystudio.netbook.hpay100.b.c c11;
        String String15;

        b( "dalongTest", new StringBuilder( "http get request url:" ).append( String2 ).toString() );
        if( !j( Context1 ) )
        {
            b( "dalongTest", "net error" );
            return null;
        }
        else
        {
            Object Object8;
            com.clilystudio.netbook.hpay100.b.c c9;
            com.clilystudio.netbook.hpay100.b.d d14;
            Exception Exception16;

            try
            {
                c11 = com.clilystudio.netbook.hpay100.b.c.a( Context1, 30000, 40000, true );
            }
            catch( Exception Exception10 )
            {
                c9 = null;
                try
                {
                    Exception10.printStackTrace();
                }
                finally
                {
                    if( c9 != null )
                        c9.a();
                    throw Object8;
                }
                if( c9 != null )
                    c9.a();
                return null;
            }
            finally
            {
                c9 = null;
                if( c9 != null )
                    c9.a();
                throw Object8;
            }
            try
            {
                d14 = c11.a( Context1, String2, null, null, "utf-8", false );
            }
            catch( Exception Exception12 )
            {
                c9 = c11;
                Exception16 = Exception12;
                Exception16.printStackTrace();
                if( c9 != null )
                    c9.a();
                return null;
            }
            finally
            {
                c9 = c11;
                Object8 = Object13;
                if( c9 != null )
                    c9.a();
                throw Object8;
            }
            if( d14 != null )
            {
                try
                {
                    String15 = d14.a( "UTF-8" );
                    b( "dalongTest", new StringBuilder( "http request result:" ).append( String15 ).toString() );
                }
                catch( Exception Exception17 )
                {
                    c9 = c11;
                    Exception16 = Exception17;
                    Exception16.printStackTrace();
                    if( c9 != null )
                        c9.a();
                    return null;
                }
                finally
                {
                    Object Object18;

                    c9 = c11;
                    Object18 = Object13;
                    if( c9 != null )
                        c9.a();
                    throw Object18;
                }
            }
            else
                String15 = null;
        }
        c11.a();
        return String15;
    }

    private static String a(BookInfo BookInfo1)
    {
        JSONObject JSONObject2 = new JSONObject();

        try
        {
            String[] String_1darray5;

            JSONObject2.put( "bk_name", BookInfo1.getTitle() );
            String_1darray5 = BookInfo1.getTags();
        }
        catch( JSONException JSONException3 )
        {
            JSONException3.printStackTrace();
        }
        return JSONObject2.toString();
    }

    public static String a(Iterable Iterable1, String String2)
    {
        if( Iterable1 != null )
        {
            Iterator Iterator3 = Iterable1.iterator();

            if( Iterator3 != null )
            {
                if( !Iterator3.hasNext() )
                    return "";
                else
                {
                    Object Object4 = Iterator3.next();

                    if( !Iterator3.hasNext() )
                    {
                        if( Object4 == null )
                            return "";
                        else
                            return Object4.toString();
                    }
                    else
                    {
                        StringBuilder StringBuilder5 = new StringBuilder( 256 );

                        if( Object4 != null )
                            StringBuilder5.append( Object4 );
                        while( Iterator3.hasNext() )
                        {
                            Object Object6;

                            if( String2 != null )
                                StringBuilder5.append( String2 );
                            Object6 = Iterator3.next();
                            if( Object6 == null )
                                continue;
                            StringBuilder5.append( Object6 );
                        }
                        return StringBuilder5.toString();
                    }
                }
            }
        }
        return null;
    }

    public static String a(String String1, int int2, String String3, String String4)
    {
        if( int2 == 5 )
            String4 = new StringBuilder( "MIX_TOC_ID" ).append( String1 ).toString();
        else if( int2 != 0 )
        {
            if( !h( int2 ) )
                return null;
            if( int2 == 3 )
            {
                String[] String_1darray5 = O( String3 );

                if( String_1darray5 != null )
                    String3 = String_1darray5[0];
            }
            return new StringBuilder().append( String3 ).append( "_" ).append( String1 ).toString();
        }
        return String4;
    }

    public static String a(String String1, String String2)
    {
        ByteArrayOutputStream ByteArrayOutputStream3 = null;
        ByteArrayOutputStream ByteArrayOutputStream8;
        Cipher Cipher11;
        byte[] byte_1darray12;
        int int13;
        ByteArrayOutputStream ByteArrayOutputStream14;
        int int15;
        String String17;

        try
        {
            Object Object4 = new X509EncodedKeySpec( com.alipay.sdk.c.a.a( String2 ) );
            Object Object10 = KeyFactory.getInstance( "RSA" ).generatePublic( (KeySpec) Object4 );

            Cipher11 = Cipher.getInstance( "RSA/ECB/PKCS1Padding" );
            Cipher11.init( 1, (Key) Object10 );
            byte_1darray12 = String1.getBytes( "UTF-8" );
            int13 = Cipher11.getBlockSize();
            ByteArrayOutputStream14 = new ByteArrayOutputStream();
        }
        catch( Exception Exception7 )
        {
            ByteArrayOutputStream8 = null;
            if( ByteArrayOutputStream8 != null )
            {
                try
                {
                    ByteArrayOutputStream8.close();
                }
                catch( IOException IOException9 )
                {
                    return null;
                }
            }
            return null;
        }
        finally
        {
            if( ByteArrayOutputStream3 != null )
            {
                try
                {
                    ByteArrayOutputStream3.close();
                }
                catch( IOException IOException6 )
                {
                }
            }
            throw Object5;
        }
        int15 = 0;
label_60:
        {
label_55:
            for( ;; )
            {
                int int19;

label_105:
                {
                    try
                    {
                        if( int15 >= byte_1darray12.length )
                            break label_60;
                        if( byte_1darray12.length - int15 >= int13 )
                            break label_105;
                        int19 = byte_1darray12.length - int15;
                        ByteArrayOutputStream14.write( Cipher11.doFinal( byte_1darray12, int15, int19 ) );
                        break label_55;
                    }
                    catch( Exception Exception16 )
                    {
                        ByteArrayOutputStream8 = ByteArrayOutputStream14;
                        if( ByteArrayOutputStream8 != null )
                            ByteArrayOutputStream8.close();
                        return null;
                    }
                    finally
                    {
                        ByteArrayOutputStream3 = ByteArrayOutputStream14;
                        if( ByteArrayOutputStream3 != null )
                            ByteArrayOutputStream3.close();
                        throw Object5;
                    }
                }
                int19 = int13;
            }
            int15 += int13;
        }
        try
        {
            String17 = new String( com.alipay.sdk.c.a.a( ByteArrayOutputStream14.toByteArray() ) );
        }
        catch( Exception Exception20 )
        {
            ByteArrayOutputStream8 = ByteArrayOutputStream14;
            if( ByteArrayOutputStream8 != null )
                ByteArrayOutputStream8.close();
            return null;
        }
        finally
        {
            ByteArrayOutputStream3 = ByteArrayOutputStream14;
            if( ByteArrayOutputStream3 != null )
                ByteArrayOutputStream3.close();
            throw Object5;
        }
        try
        {
            ByteArrayOutputStream14.close();
        }
        catch( IOException IOException18 )
        {
            return String17;
        }
        return String17;
    }

    public static String a(ArrayList ArrayList1)
    {
        StringBuilder StringBuilder2 = new StringBuilder();
        Iterator Iterator3 = ArrayList1.iterator();
        int int4 = 0;

        while( Iterator3.hasNext() )
        {
            com.mob.tools.a.i i5 = (com.mob.tools.a.i) Iterator3.next();
            String String6;
            String String7;

            if( int4 > 0 )
                StringBuilder2.append( '&' );
            String6 = i5.a;
            String7 = (String) i5.b;
            if( String6 == null )
                continue;
            if( String7 == null )
                String7 = "";
            StringBuilder2.append( new StringBuilder().append( j( String6 ) ).append( "=" ).append( j( String7 ) ).toString() );
            ++int4;
        }
        return StringBuilder2.toString();
    }

    public static String a(Map Map1, String String2, String String3)
    {
        if( String3 == null || String3.length() <= 0 )
            return "";
        else
        {
            StringBuilder StringBuilder4 = new StringBuilder();

            StringBuilder4.append( new StringBuilder().append( String3 ).append( ":" ).toString() );
            if( String2 != null && String2.length() > 0 )
            {
                String[] String_1darray6 = String2.split( "," );

                if( String_1darray6 != null && String_1darray6.length > 0 )
                {
                    if( Map1 != null && Map1.size() > 0 )
                    {
                        Set Set7 = Map1.keySet();

                        if( Set7 != null && Set7.size() > 0 )
                        {
                            try
                            {
                                byte[] byte_1darray9 = new byte[1 + String_1darray6.length / 8];
                            }
                            catch( Throwable Throwable8 )
                            {
                            }
                        }
                    }
                }
            }
            return StringBuilder4.toString();
        }
    }

    public static String a(byte[] byte_1darray1)
    {
        byte[] byte_1darray4;
        StringBuffer StringBuffer5;
        int int6;
        String String7;

        try
        {
            MessageDigest MessageDigest3 = MessageDigest.getInstance( "MD5" );

            MessageDigest3.update( byte_1darray1 );
            byte_1darray4 = MessageDigest3.digest();
            StringBuffer5 = new StringBuffer( byte_1darray4.length << 1 );
        }
        catch( NoSuchAlgorithmException NoSuchAlgorithmException2 )
        {
            return "";
        }
        int6 = 0;
label_47:
        for( ;; )
        {
            try
            {
                if( int6 >= byte_1darray4.length )
                    break label_47;
                StringBuffer5.append( Character.forDigit( (0xF0 & byte_1darray4[int6]) >> 4, 16 ) );
                StringBuffer5.append( Character.forDigit( 0xF & byte_1darray4[int6], 16 ) );
            }
            catch( NoSuchAlgorithmException NoSuchAlgorithmException8 )
            {
                return "";
            }
            ++int6;
        }
        try
        {
            String7 = StringBuffer5.toString();
        }
        catch( NoSuchAlgorithmException NoSuchAlgorithmException9 )
        {
            return "";
        }
        return String7;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private static ArrayList a(Context Context1, String String2, String[] String_1darray3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static ArrayList a(Context Context1, String[] String_1darray2)
    {
    }

    public static List a(SQLiteDatabase SQLiteDatabase1)
    {
        Object Object2 = new ArrayList();
        Cursor Cursor3 = null;

        try
        {
            Cursor3 = SQLiteDatabase1.rawQuery( "select * from sqlite_master where type = ?", new String[] { "table" } );
            if( Cursor3.moveToFirst() )
            {
                boolean boolean7;

                do
                {
                    String String6 = Cursor3.getString( Cursor3.getColumnIndexOrThrow( "tbl_name" ) );

                    if( !((List) Object2).contains( String6 ) )
                        ((List) Object2).add( String6 );
                    boolean7 = Cursor3.moveToNext();
                }
                while( boolean7 );
            }
        }
        catch( Exception Exception5 )
        {
            try
            {
                Exception5.printStackTrace();
                throw new DatabaseGenerateException( Exception5.getMessage() );
            }
            finally
            {
                if( Cursor3 != null )
                    Cursor3.close();
                throw Object4;
            }
        }
        finally
        {
            if( Cursor3 != null )
                Cursor3.close();
            throw Object4;
        }
        if( Cursor3 != null )
            Cursor3.close();
        return (List) Object2;
    }

    public static List a(com.integralblue.httpresponsecache.compat.libcore.net.http.C C1, String String2)
    {
        Object Object3 = new ArrayList();
        int int4;

        for( int4 = 0; int4 < C1.e(); ++int4 )
        {
            if( String2.equalsIgnoreCase( C1.a( int4 ) ) )
            {
                String String5 = C1.b( int4 );
                int int6 = 0;

                while( int6 < String5.length() )
                {
                    int int7 = b( String5, int6, " " );
                    String String8 = String5.substring( int6, int7 ).trim();
                    int int9;
                    int int10;
                    String String11;

                    int6 = c( String5, int7 );
                    if( !String5.regionMatches( int6, "realm=\"", 0, 7 ) )
                        continue;
                    int9 = int6 + 7;
                    int10 = b( String5, int9, "\"" );
                    String11 = String5.substring( int9, int10 );
                    int6 = c( String5, 1 + b( String5, int10 + 1, "," ) );
                    ((List) Object3).add( new com.integralblue.httpresponsecache.compat.libcore.net.http.c( String8, String11 ) );
                }
            }
        }
        return (List) Object3;
    }

    public static Map a(Context Context1, int int2, String String3)
    {
        Object Object4 = new HashMap();

        ((Map) Object4).put( "uid", com.clilystudio.netbook.util.e.c( Context1 ) );
        ((Map) Object4).put( "iid", String3 );
        ((Map) Object4).put( "iids", n() );
        ((Map) Object4).put( "num", new StringBuilder( "20" ).toString() );
        return (Map) Object4;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Map a(Context Context1, Map Map2)
    {
    }

    public static JSONObject a(JSONObject JSONObject1, JSONObject JSONObject2)
    {
        JSONObject JSONObject3 = new JSONObject();

        try
        {
            JSONObject[] JSONObject_1darray4 = { JSONObject1, JSONObject2 };
        }
        catch( JSONException JSONException6 )
        {
        }
        return JSONObject3;
    }

    public static short a(byte[] byte_1darray1, int int2, ByteOrder ByteOrder3)
    {
        if( ByteOrder3 == ByteOrder.BIG_ENDIAN )
            return (short) (byte_1darray1[0x0] << 0x8 | 0xFF & byte_1darray1[0x1]);
        else
            return (short) (byte_1darray1[0x1] << 0x8 | 0xFF & byte_1darray1[0x0]);
    }

    public static void a(int int1, int int2, int int3)
    {
        if( (int2 | int3) < 0 || int2 > int1 || int1 - int2 < int3 )
            throw new ArrayIndexOutOfBoundsException( int1, int2, int3 );
        else
            return;
    }

    public static void a(Activity Activity1)
    {
        String[] String_1darray2 = (String[]) com.xiaomi.mipush.sdk.d.b( (Context) Activity1 ).toArray( new String[0] );
        Object Object3 = new ArrayList();
        Object Object4;
        Object Object5;
        List List6;

        if( String_1darray2 != null )
        {
            int int15 = String_1darray2.length;
            int int16;

            for( int16 = 0; int16 < int15; ++int16 )
            {
                String String17 = String_1darray2[int16];
                String String18;

                if( String17 != null && String17.length() > 5 )
                    String18 = String17.substring( 5 );
                else
                    String18 = "";
                ((ArrayList) Object3).add( String18 );
            }
        }
        Object4 = new ArrayList();
        Object5 = new HashSet();
        List6 = BookReadRecord.getAll();
        if( List6 != null )
        {
            Iterator Iterator7 = List6.iterator();
            Iterator Iterator10;
            Iterator Iterator11;

            while( Iterator7.hasNext() )
                ((List) Object4).add( ((BookReadRecord) Iterator7.next()).getBookId() );
            ((Set) Object5).addAll( (Collection) Object3 );
            ((Set) Object5).retainAll( (Collection) Object4 );
            Iterator10 = ((List) Object3).iterator();
            while( Iterator10.hasNext() )
            {
                String String13 = (String) Iterator10.next();

                if( ((Set) Object5).contains( String13 ) )
                    continue;
                t( String13 );
            }
            Iterator11 = ((List) Object4).iterator();
            while( Iterator11.hasNext() )
            {
                String String12 = (String) Iterator11.next();

                if( ((Set) Object5).contains( String12 ) )
                    continue;
                r( String12 );
            }
        }
    }

    public static void a(Activity Activity1, HPaySMS HPaySMS2, com.clilystudio.netbook.hpay100.y y3)
    {
        String String4;
        String String5;

        b( "dalongTest", "startMgdmPay" );
        String4 = HPaySMS2.mOrderidHR;
        String5 = HPaySMS2.mCorpFeeCode;
        b( "dalongTest", new StringBuilder( "oderid:" ).append( String4 ).toString() );
        b( "dalongTest", new StringBuilder( "itemId:" ).append( String5 ).toString() );
        MiguSdk.pay( (Context) Activity1, String5, "assets/billing.xml", "", String4, (MiguSdk$IPayCallback) new b( HPaySMS2, y3, Activity1, String5 ) );
    }

    public static void a(Notification Notification1, Context Context2, CharSequence CharSequence3, CharSequence CharSequence4, CharSequence CharSequence5, int int6, Bitmap Bitmap7, CharSequence CharSequence8, boolean boolean9, long long10, List List12, boolean boolean13, PendingIntent PendingIntent14)
    {
        int int15 = Math.min( List12.size(), 5 );
        int int16;
        RemoteViews RemoteViews17;

        if( int15 <= 3 )
            int16 = R$layout.notification_template_big_media_narrow;
        else
            int16 = R$layout.notification_template_big_media;
        RemoteViews17 = a( Context2, CharSequence3, CharSequence4, CharSequence5, int6, Bitmap7, CharSequence8, boolean9, long10, int16, false );
        RemoteViews17.removeAllViews( R$id.media_actions );
        if( int15 > 0 )
        {
            int int18;

            for( int18 = 0; int18 < int15; ++int18 )
            {
                RemoteViews RemoteViews19 = a( Context2, (NotificationCompatBase$Action) List12.get( int18 ) );

                RemoteViews17.addView( R$id.media_actions, RemoteViews19 );
            }
        }
        if( boolean13 )
        {
            RemoteViews17.setViewVisibility( R$id.cancel_action, 0 );
            RemoteViews17.setInt( R$id.cancel_action, "setAlpha", Context2.getResources().getInteger( R$integer.cancel_button_image_alpha ) );
            RemoteViews17.setOnClickPendingIntent( R$id.cancel_action, PendingIntent14 );
        }
        else
            RemoteViews17.setViewVisibility( R$id.cancel_action, 8 );
        Notification1.bigContentView = RemoteViews17;
        if( boolean13 )
            Notification1.flags = 0x2 | Notification1.flags;
    }

    public static void a(Context Context1, int int2, int int3)
    {
        String String4 = T.a( int2 );

        if( String4 != null )
        {
            if( int3 == 1 )
                com.clilystudio.netbook.umeng.a.b.a( Context1, "share_book_info_platform", String4 );
            else if( int3 == 2 )
            {
                com.clilystudio.netbook.umeng.a.b.a( Context1, "share_post_detail_platform", String4 );
                return;
            }
            else if( int3 == 3 )
            {
                com.clilystudio.netbook.umeng.a.b.a( Context1, "share_book_list_platform", String4 );
                return;
            }
        }
    }

    public static void a(Context Context1, ListView ListView2)
    {
        int int3 = Context1.getResources().getDimensionPixelSize( 2131099926 );
        View View4 = new View( Context1 );

        View4.setLayoutParams( (ViewGroup$LayoutParams) new AbsListView$LayoutParams( -2, int3 ) );
        if( a( Context1, "customer_night_theme", false ) )
            View4.setBackgroundResource( 2130837638 );
        else
            View4.setBackgroundResource( 2130837673 );
        View4.setEnabled( false );
        ListView2.addHeaderView( View4 );
    }

    public static void a(Context Context1, Advert Advert2)
    {
        if( Advert2 == null )
            e( Context1, "ad_shelf_show", null );
        else
        {
            Object Object3 = Advert2.get_id();
            String String4 = d( Context1, "ad_shelf_show", null );

            if( String4 == null || !String4.contains( (CharSequence) Object3 ) )
            {
                com.clilystudio.netbook.umeng.a.b.a( Context1, new StringBuilder( "zssq_ad_show_" ).append( Advert2.getPosition() ).toString(), Advert2.getTitle() );
                e( Context1, "ad_shelf_show", new StringBuilder().append( String4 ).append( (String) Object3 ).toString() );
                return;
            }
        }
    }

    public static void a(Context Context1, BookInfo BookInfo2)
    {
        Object Object3 = new HashMap();
        String String8;

        ((Map) Object3).put( "iid", BookInfo2.getId() );
        ((Map) Object3).put( "title", BookInfo2.getTitle() );
        ((Map) Object3).put( "cat", BookInfo2.getCat() );
        ((Map) Object3).put( "author", BookInfo2.getAuthor() );
        if( BookInfo2.getIsSerial() )
            String8 = "serialize";
        else
            String8 = "end";
        ((Map) Object3).put( "tag", String8 );
        ((Map) Object3).put( "attr", a( BookInfo2 ) );
        com.a.a.a.d( Context1, BookInfo2.getId(), (Map) Object3 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Context Context1, String String2)
    {
    }

    public static void a(Context Context1, String String2, Map Map3)
    {
        SharedPreferences$Editor Editor4 = Context1.getSharedPreferences( String2, 0 ).edit();

        if( Editor4 != null )
        {
            Iterator Iterator6;

            Editor4.clear();
            Iterator6 = Map3.keySet().iterator();
            while( Iterator6.hasNext() )
            {
                String String8 = (String) Iterator6.next();

                Editor4.putString( String8, (String) Map3.get( String8 ) );
            }
            Editor4.commit();
        }
    }

    public static void a(FragmentActivity FragmentActivity1)
    {
        if( FragmentActivity1 != null )
        {
            FragmentManager FragmentManager2 = FragmentActivity1.getSupportFragmentManager();
            FragmentTransaction FragmentTransaction3 = FragmentManager2.beginTransaction();
            Fragment Fragment4 = FragmentManager2.findFragmentByTag( "dialog_gender_intro" );
            DialogUtil$GenderIntroDialog GenderIntroDialog5;

            if( Fragment4 != null )
                FragmentTransaction3.remove( Fragment4 );
            GenderIntroDialog5 = new DialogUtil$GenderIntroDialog();
            GenderIntroDialog5.setCancelable( false );
            GenderIntroDialog5.show( FragmentTransaction3, "dialog_gender_intro" );
        }
    }

    public static void a(FragmentActivity FragmentActivity1, ReaderTocDialog ReaderTocDialog2)
    {
        FragmentManager FragmentManager3 = FragmentActivity1.getSupportFragmentManager();
        FragmentTransaction FragmentTransaction4 = FragmentManager3.beginTransaction();
        Fragment Fragment5 = FragmentManager3.findFragmentByTag( "ReaderTocDialog" );

        if( Fragment5 != null )
            FragmentTransaction4.remove( Fragment5 );
        try
        {
            FragmentTransaction4.add( (Fragment) ReaderTocDialog2, "ReaderTocDialog" );
            FragmentTransaction4.commitAllowingStateLoss();
        }
        catch( IllegalStateException IllegalStateException6 )
        {
            IllegalStateException6.printStackTrace();
            return;
        }
    }

    public static void a(NotificationBuilderWithBuilderAccessor NotificationBuilderWithBuilderAccessor1, Context Context2, CharSequence CharSequence3, CharSequence CharSequence4, CharSequence CharSequence5, int int6, Bitmap Bitmap7, CharSequence CharSequence8, boolean boolean9, long long10, List List12, int[] int_1darray13, boolean boolean14, PendingIntent PendingIntent15)
    {
        RemoteViews RemoteViews16 = a( Context2, CharSequence3, CharSequence4, CharSequence5, int6, Bitmap7, CharSequence8, boolean9, long10, R$layout.notification_template_media, true );
        int int17 = List12.size();
        int int18;

        if( int_1darray13 == null )
            int18 = 0;
        else
            int18 = Math.min( int_1darray13.length, 3 );
        RemoteViews16.removeAllViews( R$id.media_actions );
        if( int18 > 0 )
        {
            int int21 = 0;

            while( int21 < int18 )
            {
                if( int21 >= int17 )
                {
                    Object[] Object_1darray23 = new Object[2];

                    Object_1darray23[0] = Integer.valueOf( int21 );
                    Object_1darray23[1] = Integer.valueOf( int17 - 1 );
                    throw new IllegalArgumentException( String.format( "setShowActionsInCompactView: action %d out of bounds (max %d)", Object_1darray23 ) );
                }
                else
                {
                    RemoteViews RemoteViews22 = a( Context2, (NotificationCompatBase$Action) List12.get( int_1darray13[int21] ) );

                    RemoteViews16.addView( R$id.media_actions, RemoteViews22 );
                    ++int21;
                }
            }
        }
        if( boolean14 )
        {
            RemoteViews16.setViewVisibility( R$id.end_padder, 8 );
            RemoteViews16.setViewVisibility( R$id.cancel_action, 0 );
            RemoteViews16.setOnClickPendingIntent( R$id.cancel_action, PendingIntent15 );
            RemoteViews16.setInt( R$id.cancel_action, "setAlpha", Context2.getResources().getInteger( R$integer.cancel_button_image_alpha ) );
        }
        else
        {
            RemoteViews16.setViewVisibility( R$id.end_padder, 0 );
            RemoteViews16.setViewVisibility( R$id.cancel_action, 8 );
        }
        NotificationBuilderWithBuilderAccessor1.getBuilder().setContent( RemoteViews16 );
        if( boolean14 )
            NotificationBuilderWithBuilderAccessor1.getBuilder().setOngoing( true );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(View View1)
    {
    }

    public static void a(View View1, Runnable Runnable2)
    {
        if( Build$VERSION.SDK_INT >= 16 )
            View1.postOnAnimation( Runnable2 );
        else
            View1.postDelayed( Runnable2, 16L );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(com.alipay.b.a.d d1)
    {
    }

    public static void a(TocSource TocSource1, String String2)
    {
        String String3 = TocSource1.getSource();
        String String4 = TocSource1.getSourceId();
        SourceRecord SourceRecord5 = SourceRecord.get( String2, String3 );

        if( SourceRecord5 == null )
            SourceRecord.create( String2, String3, String4 );
        else if( SourceRecord5.getSourceId() == null )
        {
            SourceRecord5.setSourceId( String4 );
            SourceRecord5.save();
            return;
        }
    }

    public static void a(Closeable Closeable1)
    {
        if( Closeable1 != null )
        {
            try
            {
                Closeable1.close();
            }
            catch( IOException IOException2 )
            {
                return;
            }
        }
    }

    public static void a(File File1)
    {
        if( File1.exists() )
        {
            if( File1.isFile() )
                File1.delete();
            else
            {
                String[] String_1darray2 = File1.list();

                if( String_1darray2 == null || String_1darray2.length <= 0 )
                    File1.delete();
                else
                {
                    int int4 = String_1darray2.length;
                    int int5;

                    for( int5 = 0; int5 < int4; ++int5 )
                    {
                        File File6 = new File( File1, String_1darray2[int5] );

                        if( File6.isDirectory() )
                            a( File6 );
                        else
                            File6.delete();
                    }
                    File1.delete();
                }
            }
        }
    }

    public static void a(FileInputStream FileInputStream1, FileOutputStream FileOutputStream2)
    {
        byte[] byte_1darray3 = new byte[65536];
        int int4;

        for( int4 = FileInputStream1.read( byte_1darray3 ); int4 > 0; int4 = FileInputStream1.read( byte_1darray3 ) )
            FileOutputStream2.write( byte_1darray3, 0, int4 );
        FileInputStream1.close();
        FileOutputStream2.close();
    }

    public static void a(Object Object1, String String2, String String3)
    {
        try
        {
            File File4 = new File( J( String2 ), String3 );
            ObjectOutputStream ObjectOutputStream6;

            if( !File4.exists() )
                File4.createNewFile();
            ObjectOutputStream6 = new ObjectOutputStream( (OutputStream) new FileOutputStream( File4 ) );
            ObjectOutputStream6.writeObject( Object1 );
            ObjectOutputStream6.flush();
            ObjectOutputStream6.close();
        }
        catch( IOException IOException5 )
        {
            IOException5.printStackTrace();
            return;
        }
    }

    public static void a(String String1, Activity Activity2, String String3)
    {
        DownloadManager$Query Query4 = new DownloadManager$Query();
        DownloadManager DownloadManager5 = (DownloadManager) Activity2.getSystemService( "download" );
        Cursor Cursor6 = DownloadManager5.query( Query4 );
        String String7 = null;
        int int8 = 0;

        if( Cursor6 != null )
        {
            while( Cursor6.moveToNext() )
            {
                if( !B( Cursor6.getString( Cursor6.getColumnIndex( "uri" ) ) ) )
                    continue;
                if( Cursor6.getInt( Cursor6.getColumnIndex( "status" ) ) == 8 )
                {
                    int8 = 1;
                    String7 = Cursor6.getString( Cursor6.getColumnIndex( "local_uri" ) );
                }
                else
                {
                    com.clilystudio.netbook.util.e.a( Activity2, "\u6B63\u5728\u4E0B\u8F7D,\u8BF7\u7A0D\u540E" );
                    return;
                }
            }
            Cursor6.close();
        }
        if( int8 != 0 && String7 != null )
        {
            if( !a( (Context) Activity2, new File( Uri.parse( String7 ).getPath() ) ) )
                a( String1, String3, DownloadManager5 );
        }
        else
            a( String1, String3, DownloadManager5 );
    }

    public static void a(String String1, com.koushikdutta.async.http.b.b b2)
    {
        int int3 = 0;

        while( int3 < String1.length() )
        {
            int int4 = b( String1, int3, "=," );
            String String5 = String1.substring( int3, int4 ).trim();

            if( int4 == String1.length() || String1.charAt( int4 ) == 44 )
            {
                int3 = int4 + 1;
                b2.a( String5, null );
            }
            else
            {
                int int6 = c( String1, int4 + 1 );
                String String9;

                if( int6 < String1.length() && String1.charAt( int6 ) == 34 )
                {
                    int int10 = int6 + 1;
                    int int11 = b( String1, int10, "\"" );
                    String String12 = String1.substring( int10, int11 );

                    int3 = int11 + 1;
                    String9 = String12;
                }
                else
                {
                    int int7 = b( String1, int6, "," );
                    String String8 = String1.substring( int6, int7 ).trim();

                    int3 = int7;
                    String9 = String8;
                }
                b2.a( String5, String9 );
            }
        }
    }

    private static void a(String String1, BookSyncRecord$BookModifyType BookModifyType2)
    {
        BookSyncRecord.updateOrCreate( o(), String1, BookSyncRecord.getTypeId( BookModifyType2 ) );
        if( am.e() != null && am.e().getUser() != null )
        {
            String String3 = am.e().getToken();
            String String4 = am.e().getUser().getId();
            List List5 = BookSyncRecord.find( String4, BookSyncRecord.getTypeId( BookModifyType2 ) );

            if( List5 != null && List5.size() != 0 )
            {
                String[] String_1darray6 = new String[List5.size()];
                int int7;

                for( int7 = 0; int7 < List5.size(); ++int7 )
                    String_1darray6[int7] = ((BookSyncRecord) List5.get( int7 )).getBookId();
                new com.clilystudio.netbook.util.X( String4, String3, BookModifyType2, String_1darray6 ).b( new Void[0] );
                return;
            }
        }
    }

    public static void a(String String1, String String2, DownloadManager DownloadManager3)
    {
        DownloadManager$Request Request4 = new DownloadManager$Request( Uri.parse( String1 ) );
        String String6;

        Request4.setTitle( (CharSequence) String2 );
        String6 = N( String1 );
        if( g() )
        {
            Request4.allowScanningByMediaScanner();
            Request4.setNotificationVisibility( 1 );
        }
        Request4.setDestinationInExternalPublicDir( Environment.DIRECTORY_DOWNLOADS, String6 );
        try
        {
        }
        catch( Exception Exception8 )
        {
            Exception8.printStackTrace();
            return;
        }
    }

    public static void a(String String1, Map Map2)
    {
        a( Map2, com.clilystudio.netbook.c.c, String1 );
    }

    public static void a(Socket Socket1)
    {
        if( Socket1 != null )
        {
            try
            {
                Socket1.close();
            }
            catch( Exception Exception2 )
            {
                return;
            }
        }
    }

    public static void a(org.apache.thrift.b b1, byte[] byte_1darray2)
    {
        if( byte_1darray2 == null )
            throw new org.apache.thrift.e( "the message byte is empty." );
        else
        {
            new org.apache.thrift.d().a( b1, byte_1darray2 );
            return;
        }
    }

    public static transient void a(Closeable[] Closeable_1darray1)
    {
        int int2 = Closeable_1darray1.length;
        int int3;

        for( int3 = 0; int3 < int2; ++int3 )
        {
            Closeable Closeable4 = Closeable_1darray1[int3];

            if( Closeable4 != null )
            {
                try
                {
                    Closeable4.close();
                }
                catch( IOException IOException5 )
                {
                }
            }
        }
    }

    public static void a(String[] String_1darray1)
    {
        a( String_1darray1, BookSyncRecord$BookModifyType.SHELF_ADD );
    }

    private static void a(String[] String_1darray1, BookSyncRecord$BookModifyType BookModifyType2)
    {
        int int3 = String_1darray1.length;
        int int4;

        for( int4 = 0; int4 < int3; ++int4 )
        {
            String String11 = String_1darray1[int4];

            BookSyncRecord.updateOrCreate( o(), String11, BookSyncRecord.getTypeId( BookModifyType2 ) );
        }
        if( am.e() != null && am.e().getUser() != null )
        {
            String String5 = am.e().getToken();
            String String6 = am.e().getUser().getId();
            List List7 = BookSyncRecord.find( String6, BookSyncRecord.getTypeId( BookModifyType2 ) );

            if( List7 != null && List7.size() != 0 )
            {
                String[] String_1darray8 = new String[List7.size()];
                int int9;

                for( int9 = 0; int9 < List7.size(); ++int9 )
                    String_1darray8[int9] = ((BookSyncRecord) List7.get( int9 )).getBookId();
                new com.clilystudio.netbook.util.X( String6, String5, BookModifyType2, String_1darray8 ).b( new Void[0] );
                return;
            }
        }
    }

    public static boolean a(byte byte1, int int2)
    {
        if( (byte1 & 0x1 << int2) != 0 )
            return true;
        else
            return false;
    }

    public static boolean a(Context Context1, com.e.a.a.a.a.a a2)
    {
        if( Context1 == null )
        {
            com.e.a.a.b.a.a( "MicroMsg.SDK.MMessage", "send fail, invalid argument" );
            return false;
        }
        else if( com.e.a.a.b.c.a( a2.b ) )
        {
            com.e.a.a.b.a.a( "MicroMsg.SDK.MMessage", "send fail, action is null" );
            return false;
        }
        else
        {
            boolean boolean3 = com.e.a.a.b.c.a( a2.a );
            String String4 = null;
            Object Object5;
            String String6;

            if( !boolean3 )
                String4 = new StringBuilder().append( a2.a ).append( ".permission.MM_MESSAGE" ).toString();
            Object5 = new Intent( a2.b );
            String6 = Context1.getPackageName();
            ((Intent) Object5).putExtra( "_mmessage_sdkVersion", 570425345 );
            ((Intent) Object5).putExtra( "_mmessage_appPackage", String6 );
            ((Intent) Object5).putExtra( "_mmessage_content", a2.c );
            ((Intent) Object5).putExtra( "_mmessage_checksum", a( a2.c, 570425345, String6 ) );
            Context1.sendBroadcast( (Intent) Object5, String4 );
            com.e.a.a.b.a.c( "MicroMsg.SDK.MMessage", new StringBuilder( "send mm message, intent=" ).append( Object5 ).append( ", perm=" ).append( String4 ).toString() );
            return true;
        }
    }

    public static boolean a(Context Context1, com.e.a.a.a.a a2)
    {
        if( Context1 == null )
        {
            com.e.a.a.b.a.a( "MicroMsg.SDK.MMessageAct", "send fail, invalid argument" );
            return false;
        }
        else if( com.e.a.a.b.c.a( a2.a ) )
        {
            com.e.a.a.b.a.a( "MicroMsg.SDK.MMessageAct", new StringBuilder( "send fail, invalid targetPkgName, targetPkgName = " ).append( a2.a ).toString() );
            return false;
        }
        else
        {
            Object Object3;
            String String5;

            if( com.e.a.a.b.c.a( a2.b ) )
                a2.b = new StringBuilder().append( a2.a ).append( ".wxapi.WXEntryActivity" ).toString();
            com.e.a.a.b.a.c( "MicroMsg.SDK.MMessageAct", new StringBuilder( "send, targetPkgName = " ).append( a2.a ).append( ", targetClassName = " ).append( a2.b ).toString() );
            Object3 = new Intent();
            ((Intent) Object3).setClassName( a2.a, a2.b );
            if( a2.e != null )
                ((Intent) Object3).putExtras( a2.e );
            String5 = Context1.getPackageName();
            ((Intent) Object3).putExtra( "_mmessage_sdkVersion", 570425345 );
            ((Intent) Object3).putExtra( "_mmessage_appPackage", String5 );
            ((Intent) Object3).putExtra( "_mmessage_content", a2.c );
            ((Intent) Object3).putExtra( "_mmessage_checksum", a( a2.c, 570425345, String5 ) );
            if( a2.d == -1 )
                ((Intent) Object3).addFlags( 268435456 ).addFlags( 134217728 );
            else
                ((Intent) Object3).setFlags( a2.d );
            try
            {
                Context1.startActivity( (Intent) Object3 );
            }
            catch( Exception Exception11 )
            {
                Object[] Object_1darray12 = new Object[1];

                Object_1darray12[0] = Exception11.getMessage();
                com.e.a.a.b.a.a( "MicroMsg.SDK.MMessageAct", "send fail, ex = %s", Object_1darray12 );
                return false;
            }
            com.e.a.a.b.a.c( "MicroMsg.SDK.MMessageAct", new StringBuilder( "send mm message, intent=" ).append( Object3 ).toString() );
            return true;
        }
    }

    public static boolean a(Context Context1, File File2)
    {
        if( Context1 == null || !File2.exists() )
            return false;
        else
        {
            Intent Intent3 = new Intent( "android.intent.action.VIEW" );

            Intent3.setDataAndType( Uri.parse( new StringBuilder( "file://" ).append( File2.toString() ).toString() ), "application/vnd.android.package-archive" );
            Intent3.setFlags( 268435456 );
            try
            {
                Context1.startActivity( Intent3 );
            }
            catch( ActivityNotFoundException ActivityNotFoundException6 )
            {
                ActivityNotFoundException6.printStackTrace();
                return false;
            }
            return true;
        }
    }

    public static boolean a(Context Context1, String String2, boolean boolean3)
    {
        if( Context1 == null )
            return boolean3;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getBoolean( String2, boolean3 );
    }

    public static boolean a(Intent Intent1)
    {
        if( Intent1.getData() != null )
            return true;
        else
            return false;
    }

    private static boolean a(com.nostra13.universalimageloader.b.c c1, int int2, int int3)
    {
        if( c1 != null && !c1.a( int2, int3 ) && int2 * 100 / int3 < 75 )
            return true;
        else
            return false;
    }

    public static boolean a(InputStream InputStream1, OutputStream OutputStream2, com.nostra13.universalimageloader.b.c c3, int int4)
    {
        int int5 = InputStream1.available();
        byte[] byte_1darray6 = new byte[int4];

        if( !a( c3, 0, int5 ) )
        {
            int int7 = 0;

            do
            {
                int int8 = InputStream1.read( byte_1darray6, 0, int4 );

                if( int8 != -1 )
                {
                    OutputStream2.write( byte_1darray6, 0, int8 );
                    int7 += int8;
                }
                else
                {
                    OutputStream2.flush();
                    return true;
                }
            }
            while( !a( c3, int7, int5 ) );
        }
        return false;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean a(Class Class1)
    {
    }

    public static boolean a(Object Object1, Object Object2)
    {
        if( Object1 == Object2 || Object1 != null && Object1.equals( Object2 ) )
            return true;
        else
            return false;
    }

    public static boolean a(String String1, SQLiteDatabase SQLiteDatabase2)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) && String1.matches( "[0-9a-zA-Z]+_[0-9a-zA-Z]+" ) )
        {
            Cursor Cursor4;

            try
            {
                Cursor Cursor6 = SQLiteDatabase2.query( "table_schema", null, null, null, null, null, null );
            }
            catch( Exception Exception5 )
            {
                Cursor4 = null;
                try
                {
                    Exception5.printStackTrace();
                }
                finally
                {
                    if( Cursor4 != null )
                        Cursor4.close();
                    throw Object3;
                }
                if( Cursor4 != null )
                    Cursor4.close();
            }
            finally
            {
                Cursor4 = null;
                if( Cursor4 != null )
                    Cursor4.close();
                throw Object3;
            }
        }
        return false;
    }

    public static boolean a(String String1, String String2, SQLiteDatabase SQLiteDatabase3)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) || TextUtils.isEmpty( (CharSequence) String2 ) )
            return false;
        else
        {
            boolean boolean5;

            try
            {
                boolean5 = a( (Collection) c( String2, SQLiteDatabase3 ).b(), String1 );
            }
            catch( Exception Exception4 )
            {
                Exception4.printStackTrace();
                return false;
            }
            return boolean5;
        }
    }

    public static boolean a(String String1, String String2, String String3)
    {
        boolean boolean7;

        try
        {
            PublicKey PublicKey5 = KeyFactory.getInstance( "RSA" ).generatePublic( (KeySpec) new X509EncodedKeySpec( com.clilystudio.netbook.pay.a.f.a( String3 ) ) );
            Signature Signature6 = Signature.getInstance( "SHA1WithRSA" );

            Signature6.initVerify( PublicKey5 );
            Signature6.update( String1.getBytes( "utf-8" ) );
            boolean7 = Signature6.verify( com.clilystudio.netbook.pay.a.f.a( String2 ) );
        }
        catch( Exception Exception4 )
        {
            Exception4.printStackTrace();
            return false;
        }
        return boolean7;
    }

    public static boolean a(String String1, String String2, String String3, Chapter Chapter4)
    {
        if( String3 == null )
            return false;
        else
        {
            String String5 = new StringBuilder( "/ZhuiShuShenQi/Chapter" ).append( File.separator ).append( String1 ).append( File.separator ).append( String2 ).toString();
            File File6 = new File( com.clilystudio.netbook.c.a, String5 );

            try
            {
                ObjectOutputStream ObjectOutputStream8;

                if( !File6.exists() )
                    File6.mkdirs();
                ObjectOutputStream8 = new ObjectOutputStream( (OutputStream) new FileOutputStream( new File( File6, String3 ) ) );
                ObjectOutputStream8.writeObject( Chapter4 );
                ObjectOutputStream8.close();
            }
            catch( Exception Exception7 )
            {
                Exception7.printStackTrace();
                return false;
            }
            return true;
        }
    }

    public static boolean a(String String1, String String2, String String3, Toc Toc4)
    {
        if( !d() )
            return false;
        else
        {
            String String5 = new StringBuilder( "/ZhuiShuShenQi/Chapter" ).append( File.separator ).append( String1 ).append( File.separator ).append( String2 ).toString();
            File File6 = new File( com.clilystudio.netbook.c.a, String5 );

            try
            {
                ObjectOutputStream ObjectOutputStream8;

                if( !File6.exists() )
                    File6.mkdirs();
                ObjectOutputStream8 = new ObjectOutputStream( (OutputStream) new FileOutputStream( new File( File6, String3 ) ) );
                ObjectOutputStream8.writeObject( Toc4 );
                ObjectOutputStream8.close();
            }
            catch( Exception Exception7 )
            {
                Exception7.printStackTrace();
                return false;
            }
            return true;
        }
    }

    public static boolean a(Collection Collection1, String String2)
    {
        if( Collection1 == null )
            return false;
        else if( String2 == null )
            return Collection1.contains( null );
        else
        {
            Iterator Iterator3 = Collection1.iterator();
            boolean boolean4;

            while( Iterator3.hasNext() )
            {
                if( !String2.equalsIgnoreCase( (String) Iterator3.next() ) )
                    continue;
                boolean4 = true;
                return boolean4;
            }
            boolean4 = false;
            return boolean4;
        }
    }

    private static boolean a(byte[] byte_1darray1, byte[] byte_1darray2)
    {
        boolean boolean3;

        if( byte_1darray1 == byte_1darray2 )
            boolean3 = true;
        else
        {
            boolean3 = false;
            if( byte_1darray1 != null )
            {
                boolean3 = false;
                if( byte_1darray2 != null )
                {
                    int int4 = byte_1darray1.length;
                    int int5 = byte_1darray2.length;

                    boolean3 = false;
                    if( int4 >= int5 )
                    {
                        int int6;

                        for( int6 = 0; int6 < byte_1darray2.length; ++int6 )
                        {
                            byte byte7 = byte_1darray1[int6];
                            byte byte8 = byte_1darray2[int6];

                            boolean3 = false;
                            if( byte7 != byte8 )
                                return boolean3;
                        }
                        return true;
                    }
                }
            }
        }
        return boolean3;
    }

    public static byte[] a(int int1)
    {
        byte[] byte_1darray2 = new byte[4];
        int int3;
        int int4;

        byte_1darray2[3] = (byte) (int1 % 256);
        int3 = int1 >> 8;
        byte_1darray2[2] = (byte) (int3 % 256);
        int4 = int3 >> 8;
        byte_1darray2[1] = (byte) (int4 % 256);
        byte_1darray2[0] = (byte) ((int4 >> 8) % 256);
        return byte_1darray2;
    }

    public static byte[] a(InputStream InputStream1)
    {
        byte[] byte_1darray4;
        MessageDigest MessageDigest5;
        int int6;
        byte[] byte_1darray7;

        try
        {
            byte_1darray4 = new byte[1024];
            MessageDigest5 = MessageDigest.getInstance( "MD5" );
            int6 = InputStream1.read( byte_1darray4 );
        }
        catch( Throwable Throwable2 )
        {
            com.mob.tools.e.a().w( Throwable2 );
            return null;
        }
        while( int6 != -1 )
        {
            try
            {
                MessageDigest5.update( byte_1darray4, 0, int6 );
                int6 = InputStream1.read( byte_1darray4 );
                continue;
            }
            catch( Throwable Throwable8 )
            {
                com.mob.tools.e.a().w( Throwable8 );
                return null;
            }
        }
        try
        {
            byte_1darray7 = MessageDigest5.digest();
        }
        catch( Throwable Throwable9 )
        {
            com.mob.tools.e.a().w( Throwable9 );
            return null;
        }
        return byte_1darray7;
    }

    public static byte[] a(String String1, int int2, String String3)
    {
        StringBuffer StringBuffer4 = new StringBuffer();

        if( String1 != null )
            StringBuffer4.append( String1 );
        StringBuffer4.append( int2 );
        StringBuffer4.append( String3 );
        StringBuffer4.append( "mMcShCsTr" );
        return am.a( StringBuffer4.toString().substring( 1, 9 ).getBytes() ).getBytes();
    }

    public static byte[] a(org.apache.thrift.b b1)
    {
        if( b1 == null )
            return null;
        else
        {
            byte[] byte_1darray3;

            try
            {
                byte_1darray3 = new org.apache.thrift.g( (org.apache.thrift.protocol.h) new a$a() ).a( b1 );
            }
            catch( org.apache.thrift.e e2 )
            {
                com.xiaomi.a.a.a.b.a( "convertThriftObjectToBytes catch TException.", (Throwable) e2 );
                return null;
            }
            return byte_1darray3;
        }
    }

    public static byte[] a(byte[] byte_1darray1, int int2, int int3)
    {
        int int4 = byte_1darray1.length;
        int int5 = int3 - int2;
        int int6 = Math.min( int5, int4 - int2 );
        byte[] byte_1darray7 = new byte[int5];

        System.arraycopy( byte_1darray1, int2, byte_1darray7, 0, int6 );
        return byte_1darray7;
    }

    public static Object[] a(List List1, Class Class2)
    {
        Object[] Object_1darray3 = (Object[]) reflect.Array.newInstance( Class2, List1.size() );
        int int4;

        for( int4 = 0; int4 < List1.size(); ++int4 )
            Object_1darray3[int4] = List1.get( int4 );
        return Object_1darray3;
    }

    public static String[] a(String String1)
    {
        int int2 = 1 + String1.indexOf( 40 );
        int int3 = String1.lastIndexOf( 41 );

        if( int2 == 0 || int3 == -1 )
            return null;
        else
        {
            Object[] Object_1darray4 = String1.substring( int2, int3 ).split( "," );

            if( Object_1darray4 != null )
            {
                int int5;

                for( int5 = 0; int5 < Object_1darray4.length; ++int5 )
                {
                    if( !android.text.TextUtils.isEmpty( (CharSequence) Object_1darray4[int5] ) )
                    {
                        Object_1darray4[int5] = ((String) Object_1darray4[int5]).trim();
                        Object_1darray4[int5] = ((String) Object_1darray4[int5]).replaceAll( "'", "" ).replaceAll( "\"", "" );
                    }
                }
            }
            return (String[]) Object_1darray4;
        }
    }

    public static byte b(byte byte1, int int2)
    {
        return (byte) (byte1 & (0xFFFFFFFF ^ 0x1 << int2));
    }

    public static int b(Context Context1, int int2, int int3)
    {
        TypedArray TypedArray4 = Context1.obtainStyledAttributes( int3, { int2 } );
        int int5 = TypedArray4.getColor( 0, 0 );

        TypedArray4.recycle();
        return int5;
    }

    public static int b(Context Context1, String String2, String String3)
    {
        int int4 = 0;

        if( Context1 != null )
        {
            boolean boolean5 = TextUtils.isEmpty( (CharSequence) String2 );

            int4 = 0;
            if( !boolean5 )
            {
                boolean boolean6 = TextUtils.isEmpty( (CharSequence) String3 );

                int4 = 0;
                if( !boolean6 )
                {
                    Object Object7 = Context1.getPackageName();
                    boolean boolean8 = TextUtils.isEmpty( (CharSequence) Object7 );

                    int4 = 0;
                    if( !boolean8 )
                    {
                        int4 = Context1.getResources().getIdentifier( String3, String2, (String) Object7 );
                        if( int4 <= 0 )
                            int4 = Context1.getResources().getIdentifier( String3.toLowerCase(), String2, (String) Object7 );
                        if( int4 <= 0 )
                        {
                            System.err.println( new StringBuilder( "failed to parse " ).append( String2 ).append( " resource \"" ).append( String3 ).append( "\"" ).toString() );
                            return int4;
                        }
                    }
                }
            }
        }
        return int4;
    }

    public static int b(File File1)
    {
        File[] File_1darray2 = File1.listFiles();
        int int3 = 0;

        if( File_1darray2 != null )
        {
            int int4 = File_1darray2.length;
            int int5 = File_1darray2.length;
            int int6;

            int3 = int4;
            for( int6 = 0; int6 < int5; ++int6 )
            {
                File File7 = File_1darray2[int6];

                if( File7.isDirectory() )
                    int3 = -1 + (int3 + b( File7 ));
            }
        }
        return int3;
    }

    public static int b(String String1, int int2)
    {
        int int4;

        try
        {
            int4 = Integer.parseInt( String1 );
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return 0;
        }
        return int4;
    }

    private static int b(String String1, int int2, String String3)
    {
        while( int2 < String1.length() && String3.indexOf( String1.charAt( int2 ) ) == -1 )
            ++int2;
        return int2;
    }

    public static Bitmap$CompressFormat b(byte[] byte_1darray1)
    {
        String String2 = g( byte_1darray1 );
        Bitmap$CompressFormat CompressFormat3 = Bitmap$CompressFormat.JPEG;

        if( String2 != null && (String2.endsWith( "png" ) || String2.endsWith( "gif" )) )
            CompressFormat3 = Bitmap$CompressFormat.PNG;
        return CompressFormat3;
    }

    public static com.clilystudio.netbook.ui.game.N b(int int1)
    {
        return new com.clilystudio.netbook.ui.game.N( int1 % 16, int1 / 16 );
    }

    public static Serializable b(String String1, String String2, String String3)
    {
        ObjectInputStream ObjectInputStream4 = null;

        if( String3 == null || !d() )
            return null;
        else
        {
            String String5 = new StringBuilder( "/ZhuiShuShenQi/Chapter" ).append( File.separator ).append( String1 ).append( File.separator ).append( String2 ).toString();
            File File6 = new File( com.clilystudio.netbook.c.a, String5 );
            Object Object8;
            ObjectInputStream ObjectInputStream12;
            File File15;
            Serializable Serializable16;

            try
            {
                if( !File6.exists() )
                    return null;
            }
            catch( Exception Exception11 )
            {
                ObjectInputStream12 = null;
                Object8 = null;
                try
                {
                    Exception11.printStackTrace();
                }
                finally
                {
                    ObjectInputStream4 = ObjectInputStream12;
                    if( ObjectInputStream4 != null )
                    {
                        try
                        {
                            ObjectInputStream4.close();
                        }
                        catch( Exception Exception10 )
                        {
                            Exception10.printStackTrace();
                        }
                    }
                    if( Object8 != null )
                    {
                        try
                        {
                            ((FileInputStream) Object8).close();
                        }
                        catch( Exception Exception9 )
                        {
                            Exception9.printStackTrace();
                        }
                    }
                    throw Object7;
                }
                if( ObjectInputStream12 != null )
                {
                    try
                    {
                        ObjectInputStream12.close();
                    }
                    catch( Exception Exception14 )
                    {
                        Exception14.printStackTrace();
                    }
                }
                if( Object8 != null )
                {
                    try
                    {
                        ((FileInputStream) Object8).close();
                    }
                    catch( Exception Exception13 )
                    {
                        Exception13.printStackTrace();
                    }
                }
                return null;
            }
            finally
            {
                Object8 = null;
                if( ObjectInputStream4 != null )
                    ObjectInputStream4.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                throw Object7;
            }
            try
            {
                File15 = new File( File6, String3 );
                if( !File15.exists() )
                    return null;
            }
            catch( Exception Exception19 )
            {
                ObjectInputStream12 = null;
                Object8 = null;
                Exception19.printStackTrace();
                if( ObjectInputStream12 != null )
                    ObjectInputStream12.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                return null;
            }
            finally
            {
                Object8 = null;
                if( ObjectInputStream4 != null )
                    ObjectInputStream4.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                throw Object7;
            }
            try
            {
                Object8 = new FileInputStream( File15 );
            }
            catch( Exception Exception20 )
            {
                ObjectInputStream12 = null;
                Object8 = null;
                Exception20.printStackTrace();
                if( ObjectInputStream12 != null )
                    ObjectInputStream12.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                return null;
            }
            finally
            {
                Object8 = null;
                if( ObjectInputStream4 != null )
                    ObjectInputStream4.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                throw Object7;
            }
            try
            {
                ObjectInputStream12 = new ObjectInputStream( (InputStream) Object8 );
            }
            catch( Exception Exception21 )
            {
                ObjectInputStream12 = null;
                Exception21.printStackTrace();
                if( ObjectInputStream12 != null )
                    ObjectInputStream12.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                return null;
            }
            finally
            {
                ObjectInputStream4 = null;
                if( ObjectInputStream4 != null )
                    ObjectInputStream4.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                throw Object7;
            }
            try
            {
                Serializable16 = (Serializable) ObjectInputStream12.readObject();
            }
            catch( Exception Exception22 )
            {
                Exception22.printStackTrace();
                if( ObjectInputStream12 != null )
                    ObjectInputStream12.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                return null;
            }
            finally
            {
                ObjectInputStream4 = ObjectInputStream12;
                if( ObjectInputStream4 != null )
                    ObjectInputStream4.close();
                if( Object8 != null )
                    ((FileInputStream) Object8).close();
                throw Object7;
            }
            try
            {
                ObjectInputStream12.close();
            }
            catch( Exception Exception17 )
            {
                Exception17.printStackTrace();
            }
            try
            {
                ((FileInputStream) Object8).close();
            }
            catch( Exception Exception18 )
            {
                Exception18.printStackTrace();
                return Serializable16;
            }
            return Serializable16;
        }
        return null;
    }

    public static String b()
    {
        String String1 = com.clilystudio.netbook.hpay100.config.l.d;

        b( "dalongTest", new StringBuilder( "kfPhone:" ).append( String1 ).toString() );
        return String1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String b(Context Context1)
    {
    }

    public static String b(Context Context1, String String2, Map Map3)
    {
        b( "dalongTest", new StringBuilder( "http post2 request url:" ).append( String2 ).toString() );
        if( !j( Context1 ) )
        {
            b( "dalongTest", "net error" );
            return null;
        }
        else
        {
            com.clilystudio.netbook.hpay100.b.c c5;
            Object Object6;

            try
            {
                com.clilystudio.netbook.hpay100.b.c c8 = com.clilystudio.netbook.hpay100.b.c.a( Context1 );
            }
            catch( Exception Exception7 )
            {
                c5 = null;
                try
                {
                    Exception7.printStackTrace();
                }
                finally
                {
                    if( c5 != null )
                        c5.a();
                    throw Object6;
                }
                if( c5 != null )
                {
                    c5.a();
                    return null;
                }
            }
            finally
            {
                c5 = null;
                Object6 = Object4;
                if( c5 != null )
                    c5.a();
                throw Object6;
            }
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String b(Context Context1, Map Map2)
    {
    }

    public static String b(String String1)
    {
        int int2 = 0;
        StringBuilder StringBuilder6;
        String String7;

        try
        {
            if( am.a( String1 ) )
                return null;
        }
        catch( Exception Exception3 )
        {
            return null;
        }
label_44:
        {
label_42:
            {
                try
                {
                    MessageDigest MessageDigest4 = MessageDigest.getInstance( "SHA-1" );
                    byte[] byte_1darray5;

                    MessageDigest4.update( String1.getBytes( "UTF-8" ) );
                    byte_1darray5 = MessageDigest4.digest();
                    StringBuilder6 = new StringBuilder();
                    while( int2 < byte_1darray5.length )
                    {
                        Object[] Object_1darray8 = new Object[1];

                        Object_1darray8[0] = Byte.valueOf( byte_1darray5[int2] );
                        StringBuilder6.append( String.format( "%02x", Object_1darray8 ) );
                        break label_42;
                    }
                    break label_44;
                }
                catch( Exception Exception9 )
                {
                    return null;
                }
            }
            ++int2;
            return null;
        }
        try
        {
            String7 = StringBuilder6.toString();
        }
        catch( Exception Exception10 )
        {
            return null;
        }
        return String7;
    }

    public static URI b(URL URL1)
    {
        return URL1.toURI();
    }

    public static void b(Activity Activity1)
    {
        Intent Intent2 = new Intent( "android.intent.action.GET_CONTENT" ).setType( "image/*" );

        try
        {
            Activity1.startActivityForResult( Intent2, 9162 );
        }
        catch( ActivityNotFoundException ActivityNotFoundException3 )
        {
            com.clilystudio.netbook.util.e.a( Activity1, "crop pick error" );
            return;
        }
    }

    public static void b(Context Context1, Advert Advert2)
    {
        if( Advert2 != null )
            com.clilystudio.netbook.umeng.a.b.a( Context1, new StringBuilder( "zssq_ad_click_" ).append( Advert2.getPosition() ).toString(), Advert2.getTitle() );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void b(Context Context1, String String2)
    {
    }

    public static void b(Context Context1, String String2, float float3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor4 = P( Context1 );

            Editor4.putFloat( String2, float3 );
            Editor4.apply();
        }
    }

    public static void b(Context Context1, String String2, int int3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor4 = P( Context1 );

            Editor4.putInt( String2, int3 );
            Editor4.apply();
        }
    }

    public static void b(Context Context1, String String2, long long3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor5 = P( Context1 );

            Editor5.putLong( String2, long3 );
            Editor5.apply();
        }
    }

    public static void b(Context Context1, String String2, String String3, String String4)
    {
        d = String2;
        e = String3;
        f = String4;
        e( Context1, "CIPHER_BOOK_ID", String2 );
        e( Context1, "CIPHER_TOC_ID", String3 );
        e( Context1, "CIPHER_CHECKSUM", String4 );
    }

    public static void b(Context Context1, String String2, boolean boolean3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor4 = P( Context1 );

            Editor4.putBoolean( String2, boolean3 );
            Editor4.apply();
        }
    }

    public static void b(Closeable Closeable1)
    {
        if( Closeable1 != null )
        {
            try
            {
                Closeable1.close();
            }
            catch( Exception Exception2 )
            {
                return;
            }
            catch( RuntimeException RuntimeException3 )
            {
                throw RuntimeException3;
            }
        }
    }

    public static void b(String String1, String String2)
    {
        if( com.clilystudio.netbook.hpay100.config.w.b )
            Log.e( String1, String2 );
    }

    public static void b(String[] String_1darray1)
    {
        a( String_1darray1, BookSyncRecord$BookModifyType.FEED_ADD );
    }

    public static boolean b(String String1, SQLiteDatabase SQLiteDatabase2)
    {
        boolean boolean4;

        try
        {
            boolean4 = a( (Collection) a( SQLiteDatabase2 ), String1 );
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return false;
        }
        return boolean4;
    }

    public static int c(Context Context1, String String2, int int3)
    {
        return Context1.getSharedPreferences( "mistat", 0 ).getInt( String2, int3 );
    }

    private static int c(String String1, int int2)
    {
        while( int2 < String1.length() )
        {
            char char3 = String1.charAt( int2 );

            if( char3 != 32 && char3 != 9 )
                break;
            ++int2;
        }
        return int2;
    }

    public static long c(Context Context1, String String2, long long3)
    {
        if( Context1 == null )
            return long3;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getLong( String2, long3 );
    }

    public static String c()
    {
        String String1 = com.clilystudio.netbook.hpay100.config.l.e;

        b( "dalongTest", new StringBuilder( "appname:" ).append( String1 ).toString() );
        return String1;
    }

    public static String c(int int1)
    {
        double double2 = Math.floor( (double) int1 / Math.pow( 1024.0, 2.0 ) );
        DecimalFormat DecimalFormat4 = new DecimalFormat( "0.0" );

        return new StringBuilder().append( DecimalFormat4.format( double2 ) ).append( "MB" ).toString();
    }

    public static String c(Context Context1, String String2)
    {
        return new com.mob.tools.a.l().downloadCache( Context1, String2, "images", true, null );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String c(Context Context1, Map Map2)
    {
    }

    public static String c(byte[] byte_1darray1)
    {
        int int2 = byte_1darray1.length;
        StringBuffer StringBuffer3 = new StringBuffer();

        if( byte_1darray1 != null )
        {
            int int4;

            for( int4 = 0; int4 < int2; ++int4 )
            {
                Object[] Object_1darray5 = new Object[1];

                Object_1darray5[0] = Byte.valueOf( byte_1darray1[int4] );
                StringBuffer3.append( String.format( "%02x", Object_1darray5 ) );
            }
        }
        return StringBuffer3.toString();
    }

    public static ArrayList c(File File1)
    {
        ArrayList ArrayList2 = new ArrayList();
        File[] File_1darray3 = File1.listFiles();

        if( File_1darray3 != null )
        {
            int int4 = File_1darray3.length;
            int int5;

            for( int5 = 0; int5 < int4; ++int5 )
                ArrayList2.add( File_1darray3[int5].getName() );
        }
        return ArrayList2;
    }

    public static org.litepal.d.a.b c(String String1, SQLiteDatabase SQLiteDatabase2)
    {
        Cursor Cursor3 = null;
        org.litepal.d.a.b b4;
        String String5;

        if( !b( String1, SQLiteDatabase2 ) )
            throw new DatabaseGenerateException( new StringBuilder( "Table doesn't exist when executing " ).append( String1 ).toString() );
        b4 = new org.litepal.d.a.b();
        b4.a( String1 );
        String5 = new StringBuilder( "pragma table_info(" ).append( String1 ).append( ")" ).toString();
        try
        {
            Cursor3 = SQLiteDatabase2.rawQuery( String5, null );
            if( Cursor3.moveToFirst() )
            {
                boolean boolean8;

                do
                {
                    b4.a( Cursor3.getString( Cursor3.getColumnIndexOrThrow( "name" ) ), Cursor3.getString( Cursor3.getColumnIndexOrThrow( "type" ) ) );
                    boolean8 = Cursor3.moveToNext();
                }
                while( boolean8 );
            }
        }
        catch( Exception Exception7 )
        {
            try
            {
                Exception7.printStackTrace();
                throw new DatabaseGenerateException( Exception7.getMessage() );
            }
            finally
            {
                if( Cursor3 != null )
                    Cursor3.close();
                throw Object6;
            }
        }
        finally
        {
            if( Cursor3 != null )
                Cursor3.close();
            throw Object6;
        }
        if( Cursor3 != null )
            Cursor3.close();
        return b4;
    }

    public static void c(Context Context1, String String2, String String3)
    {
        Object Object4 = new HashMap();

        ((Map) Object4).put( "uid", com.clilystudio.netbook.util.e.c( Context1 ) );
        com.a.a.a.a( Context1, String3, String2, (Map) Object4 );
    }

    public static void c(Closeable Closeable1)
    {
        try
        {
            Closeable1.close();
        }
        catch( Exception Exception2 )
        {
            return;
        }
    }

    public static void c(String String1, String String2)
    {
        Log.w( "PullToRefresh", new StringBuilder( "You're using the deprecated " ).append( String1 ).append( " attr, please switch over to " ).append( String2 ).toString() );
    }

    public static transient void c(String[] String_1darray1)
    {
        if( String_1darray1 != null )
        {
            int int2 = String_1darray1.length;

            if( int2 > 0 )
            {
                Object Object3 = String_1darray1[0];
                boolean boolean4 = TextUtils.isEmpty( (CharSequence) Object3 );
                int int5 = 0;

                if( !boolean4 )
                {
                    boolean boolean6 = TextUtils.isEmpty( (CharSequence) "?" );

                    int5 = 0;
                    if( !boolean6 )
                    {
                        int int7 = ((String) Object3).indexOf( "?" );
                        Object Object8 = Object3;

                        while( int7 != -1 )
                        {
                            int int9 = int5 + 1;
                            String String10 = ((String) Object8).substring( int7 + "?".length() );
                            int int11 = String10.indexOf( "?" );

                            Object8 = String10;
                            int7 = int11;
                            int5 = int9;
                        }
                    }
                }
                if( int2 != int5 + 1 )
                    throw new DataSupportException( "The parameters in conditions are incorrect." );
            }
        }
    }

    public static boolean c(Context Context1)
    {
        try
        {
            String String3 = a( Context1, "vkeyid_settings", "log_switch", "" );

            if( am.a( String3 ) )
        }
        catch( Throwable Throwable2 )
        {
        }
        return true;
    }

    public static boolean c(String String1)
    {
        boolean boolean2;

        if( String1 != null )
        {
            int int3 = String1.length();

            if( int3 != 0 )
            {
                int int4;

                for( int4 = 0; int4 < int3; ++int4 )
                {
                    boolean boolean5 = Character.isWhitespace( String1.charAt( int4 ) );

                    boolean2 = false;
                    if( !boolean5 )
                        return boolean2;
                }
                return true;
            }
        }
        boolean2 = true;
        return boolean2;
    }

    public static int d(int int1)
    {
        switch( int1 )
        {
            case 50:
            default:
                return 2;
            case 10:
                return 0;
            case 20:
                return 1;
            case 100:
                return 3;
            case 200:
                return 4;
        }
    }

    public static int d(Context Context1, String String2)
    {
        return b( Context1, "drawable", String2 );
    }

    public static long d(Context Context1)
    {
        try
        {
            String String3 = Context1.getSharedPreferences( "vkeyid_settings", 0 ).getString( "vkey_valid", "" );

            if( am.a( String3 ) )
        }
        catch( Throwable Throwable2 )
        {
        }
        return 0L;
    }

    public static String d(Context Context1, String String2, String String3)
    {
        if( Context1 == null )
            return String3;
        else
            return PreferenceManager.getDefaultSharedPreferences( Context1 ).getString( String2, String3 );
    }

    public static String d(String String1)
    {
        StringBuilder StringBuilder2 = new StringBuilder();

        try
        {
            if( !( new File( String1 ).exists() ) )
        }
        catch( IOException IOException3 )
        {
            BufferedReader BufferedReader4 = null;

            if( BufferedReader4 != null )
            {
                try
                {
                    BufferedReader4.close();
                }
                catch( Throwable Throwable5 )
                {
                }
            }
        }
        finally
        {
            BufferedReader BufferedReader7 = null;
            Object Object8 = Object6;

            if( BufferedReader7 != null )
            {
                try
                {
                    BufferedReader7.close();
                }
                catch( Throwable Throwable9 )
                {
                }
            }
            throw Object8;
        }
        return StringBuilder2.toString();
    }

    public static String d(byte[] byte_1darray1)
    {
        if( byte_1darray1 != null )
        {
            byte[] byte_1darray2 = e( byte_1darray1 );

            if( byte_1darray2 != null )
                return com.mob.tools.b.d.a( byte_1darray2 );
        }
        return null;
    }

    public static void d(Context Context1, String String2, int int3)
    {
        SharedPreferences$Editor Editor4 = Context1.getSharedPreferences( "mistat", 0 ).edit();

        Editor4.putInt( String2, int3 );
        Editor4.commit();
    }

    public static void d(Context Context1, String String2, long long3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor5 = P( Context1 );

            Editor5.putLong( String2, long3 );
            Editor5.apply();
        }
    }

    public static boolean d()
    {
        return "mounted".equals( Environment.getExternalStorageState() );
    }

    public static byte[] d(String String1, String String2)
    {
        if( String1 == null || String2 == null )
            return null;
        else
        {
            byte[] byte_1darray3 = String1.getBytes( "UTF-8" );
            byte[] byte_1darray4 = new byte[16];
            byte[] byte_1darray5;
            Object Object6;
            Cipher Cipher7;
            byte[] byte_1darray8;

            System.arraycopy( byte_1darray3, 0, byte_1darray4, 0, Math.min( byte_1darray3.length, 16 ) );
            byte_1darray5 = String2.getBytes( "UTF-8" );
            Object6 = new SecretKeySpec( byte_1darray4, "AES" );
            Cipher7 = Cipher.getInstance( "AES/ECB/PKCS7Padding", "BC" );
            Cipher7.init( 1, (Key) Object6 );
            byte_1darray8 = new byte[Cipher7.getOutputSize( byte_1darray5.length )];
            Cipher7.doFinal( byte_1darray8, Cipher7.update( byte_1darray5, 0, byte_1darray5.length, byte_1darray8, 0 ) );
            return byte_1darray8;
        }
    }

    public static int e(int int1)
    {
        switch( int1 )
        {
            case 2:
            default:
                return 50;
            case 0:
                return 10;
            case 1:
                return 20;
            case 3:
                return 100;
            case 4:
                return 200;
        }
    }

    public static int e(Context Context1, String String2)
    {
        return b( Context1, "string", String2 );
    }

    public static int e(String String1)
    {
        long long3;

        try
        {
            long3 = Long.parseLong( String1 );
        }
        catch( NumberFormatException NumberFormatException2 )
        {
            return -1;
        }
        if( long3 > 2147483647L )
            return 2147483647;
        else if( long3 < 0L )
            return 0;
        else
            return (int) long3;
    }

    public static long e()
    {
        long long3;

        if( !d() )
            return -1L;
        try
        {
            StatFs StatFs1 = new StatFs( Environment.getExternalStorageDirectory().getPath() );

            long3 = (long) StatFs1.getBlockSize() * (long) StatFs1.getAvailableBlocks() / 1024L;
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return 0L;
        }
        return long3;
    }

    public static long e(Context Context1, String String2, long long3)
    {
        return Context1.getSharedPreferences( "mistat", 0 ).getLong( String2, long3 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String e(Context Context1)
    {
    }

    public static String e(String String1, String String2)
    {
        Object Object3 = null;

        if( String1 != null )
        {
            Object3 = null;
            if( String2 != null )
            {
                String String6;

                try
                {
                    Object3 = Base64.encodeToString( d( String2, String1 ), 0 );
                    if( TextUtils.isEmpty( (CharSequence) Object3 ) || !((String) Object3).contains( (CharSequence) "\n" ) )
                        return (String) Object3;
                    String6 = ((String) Object3).replace( (CharSequence) "\n", (CharSequence) "" );
                }
                catch( Throwable Throwable4 )
                {
                    com.mob.tools.e.a().w( Throwable4 );
                    return (String) Object3;
                }
                return String6;
            }
        }
        return (String) Object3;
    }

    public static void e(Context Context1, String String2, String String3)
    {
        if( Context1 != null )
        {
            SharedPreferences$Editor Editor4 = P( Context1 );

            Editor4.putString( String2, String3 );
            Editor4.apply();
        }
    }

    public static byte[] e(byte[] byte_1darray1)
    {
        if( byte_1darray1 == null )
            return null;
        else
        {
            byte[] byte_1darray5;

            try
            {
                Object Object2 = new ByteArrayInputStream( byte_1darray1 );

                byte_1darray5 = a( (InputStream) Object2 );
                ((ByteArrayInputStream) Object2).close();
            }
            catch( Throwable Throwable3 )
            {
                com.mob.tools.e.a().w( Throwable3 );
                byte_1darray5 = null;
            }
            return byte_1darray5;
        }
    }

    public static int f(Context Context1, String String2)
    {
        return b( Context1, "layout", String2 );
    }

    public static Bitmap f(String String1)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            File File2 = new File( String1 );

            if( File2.exists() )
            {
                Object Object3 = new FileInputStream( File2 );
                Bitmap Bitmap4 = a( (InputStream) Object3, 1 );

                ((FileInputStream) Object3).close();
                return Bitmap4;
            }
        }
        return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static String f(Context Context1)
    {
    }

    public static String f(Context Context1, String String2, String String3)
    {
        return Context1.getSharedPreferences( "mistat", 0 ).getString( String2, String3 );
    }

    public static String f(String String1, String String2)
    {
        Object Object3 = URLEncoder.encode( String1, String2 );

        if( TextUtils.isEmpty( (CharSequence) Object3 ) )
            return (String) Object3;
        else
            return ((String) Object3).replace( (CharSequence) "+", (CharSequence) "%20" );
    }

    public static List f()
    {
        Object Object1 = new ArrayList();
        File[] File_1darray2 = J( com.clilystudio.netbook.c.g ).listFiles();

        if( File_1darray2 != null )
        {
            int int3 = File_1darray2.length;
            int int4;

            for( int4 = 0; int4 < int3; ++int4 )
            {
                File File5 = File_1darray2[int4];
                Object Object6 = new BookFile();

                ((BookFile) Object6).setSize( a( File5.length(), true ) );
                ((BookFile) Object6).setName( File5.getName() );
                ((List) Object1).add( Object6 );
            }
        }
        return (List) Object1;
    }

    public static void f(Context Context1, String String2, long long3)
    {
        SharedPreferences$Editor Editor5 = Context1.getSharedPreferences( "mistat", 0 ).edit();

        Editor5.putLong( String2, long3 );
        Editor5.commit();
    }

    public static boolean f(int int1)
    {
        if( int1 == 4 || int1 == 1 || int1 == 2 )
            return true;
        else
            return false;
    }

    public static byte[] f(byte[] byte_1darray1)
    {
        Deflater Deflater2;
        byte[] byte_1darray3;
        ByteArrayOutputStream ByteArrayOutputStream4;
        Object Object5;

label_35:
        {
            if( byte_1darray1 == null || byte_1darray1.length <= 0 )
                return null;
            else
            {
                Deflater2 = new Deflater();
                Deflater2.setInput( byte_1darray1 );
                Deflater2.finish();
                byte_1darray3 = new byte[8192];
                a = 0;
                try
                {
                    ByteArrayOutputStream4 = new ByteArrayOutputStream();
                }
                finally
                {
                    Object5 = Object7;
                    ByteArrayOutputStream4 = null;
                    if( ByteArrayOutputStream4 != null )
                        ByteArrayOutputStream4.close();
                    throw Object5;
                }
                for( ;; )
                {
                    try
                    {
                        if( !Deflater2.finished() )
                            break label_35;
                        Deflater2.end();
                    }
                    finally
                    {
                        if( ByteArrayOutputStream4 != null )
                            ByteArrayOutputStream4.close();
                        throw Object5;
                    }
                    ByteArrayOutputStream4.close();
                    return ByteArrayOutputStream4.toByteArray();
                }
            }
        }
        try
        {
            int int6 = Deflater2.deflate( byte_1darray3 );

            a = int6 + a;
label_25:
            ByteArrayOutputStream4.write( byte_1darray3, 0, int6 );
            break label_25;
        }
        finally
        {
            if( ByteArrayOutputStream4 != null )
                ByteArrayOutputStream4.close();
            throw Object5;
        }
    }

    public static int g(Context Context1, String String2)
    {
        return b( Context1, "id", String2 );
    }

    public static Bitmap$CompressFormat g(String String1)
    {
        String String2 = String1.toLowerCase();

        if( String2.endsWith( "png" ) || String2.endsWith( "gif" ) )
            return Bitmap$CompressFormat.PNG;
        else if( String2.endsWith( "jpg" ) || String2.endsWith( "jpeg" ) || String2.endsWith( "bmp" ) || String2.endsWith( "tif" ) )
            return Bitmap$CompressFormat.JPEG;
        else
        {
            String String3 = W( String1 );

            if( String3.endsWith( "png" ) || String3.endsWith( "gif" ) )
                return Bitmap$CompressFormat.PNG;
            else
                return Bitmap$CompressFormat.JPEG;
        }
    }

    public static String g(int int1)
    {
        switch( int1 )
        {
            default:
                return "mix";
            case 5:
                return "mix";
            case 0:
                return "zhineng";
            case 4:
                return "shenma";
            case 1:
                return "baidu";
            case 2:
                return "tieba";
            case 6:
                return "soso";
            case 7:
                return "sogou";
            case 8:
                return "leidian";
            case 3:
                return "easou";
            case 9:
                return "zhuishuvip";
        }
    }

    private static String g(byte[] byte_1darray1)
    {
        byte[] byte_1darray2 = { -1, -40, -1, -32 };
        byte[] byte_1darray3 = { -1, -40, -1, -31 };

        if( a( byte_1darray1, byte_1darray2 ) || a( byte_1darray1, byte_1darray3 ) )
            return "jpg";
        else if( a( byte_1darray1, new byte[] { -119, 80, 78, 71 } ) )
            return "png";
        else if( a( byte_1darray1, "GIF".getBytes() ) )
            return "gif";
        else if( a( byte_1darray1, "BM".getBytes() ) )
            return "bmp";
        else
        {
            byte[] byte_1darray4 = { 73, 73, 42 };
            byte[] byte_1darray5 = { 77, 77, 42 };

            if( a( byte_1darray1, byte_1darray4 ) || a( byte_1darray1, byte_1darray5 ) )
                return "tif";
            else
                return null;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Map g(Context Context1)
    {
    }

    public static void g(Context Context1, String String2, String String3)
    {
        SharedPreferences$Editor Editor4 = Context1.getSharedPreferences( "mistat", 0 ).edit();

        Editor4.putString( String2, String3 );
        Editor4.commit();
    }

    public static boolean g()
    {
        if( Build$VERSION.SDK_INT >= 11 )
            return true;
        else
            return false;
    }

    public static boolean g(String String1, String String2)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) || TextUtils.isEmpty( (CharSequence) String2 ) || !( new File( String1 ).exists() ) )
            return false;
        else
        {
            try
            {
                a( new FileInputStream( String1 ), new FileOutputStream( String2 ) );
            }
            catch( Throwable Throwable3 )
            {
                return false;
            }
            return true;
        }
    }

    public static com.alipay.security.mobile.module.http.a h(Context Context1)
    {
        if( Context1 == null )
            return null;
        else
            return (com.alipay.security.mobile.module.http.a) com.alipay.security.mobile.module.http.b.a( Context1 );
    }

    public static String h(Context Context1, String String2)
    {
        String String3 = new StringBuilder().append( Context1.getFilesDir().getAbsolutePath() ).append( "/Mob/cache/" ).toString();
        com.mob.tools.b.a a4 = com.mob.tools.b.a.a( Context1 );
        File File5;

        if( com.mob.tools.b.a.p() )
            String3 = new StringBuilder().append( Environment.getExternalStorageDirectory().getAbsolutePath() ).append( "/Mob/" ).append( a4.k() ).append( "/cache/" ).toString();
        if( !android.text.TextUtils.isEmpty( (CharSequence) String2 ) )
            String3 = new StringBuilder().append( String3 ).append( String2 ).append( "/" ).toString();
        File5 = new File( String3 );
        if( !File5.exists() )
            File5.mkdirs();
        return String3;
    }

    public static String h(String String1)
    {
        if( String1 != null )
        {
            byte[] byte_1darray2 = i( String1 );

            if( byte_1darray2 != null )
                return com.mob.tools.b.d.a( byte_1darray2 );
        }
        return null;
    }

    public static String h(String String1, String String2)
    {
        String String5;

        try
        {
            String String4 = ByteString.of( new StringBuilder().append( String1 ).append( ":" ).append( String2 ).toString().getBytes( "ISO-8859-1" ) ).base64();

            String5 = new StringBuilder( "Basic " ).append( String4 ).toString();
        }
        catch( UnsupportedEncodingException UnsupportedEncodingException3 )
        {
            throw new AssertionError();
        }
        return String5;
    }

    public static boolean h()
    {
        if( Build$VERSION.SDK_INT >= 14 )
            return true;
        else
            return false;
    }

    public static boolean h(int int1)
    {
        if( int1 == 6 || int1 == 7 || int1 == 8 || int1 == 3 )
            return true;
        else
            return false;
    }

    public static int i(Context Context1)
    {
        ConnectivityManager ConnectivityManager2 = (ConnectivityManager) Context1.getSystemService( "connectivity" );
        NetworkInfo NetworkInfo4;

        try
        {
            NetworkInfo4 = ConnectivityManager2.getActiveNetworkInfo();
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return -1;
        }
        if( NetworkInfo4 == null )
            return -1;
        else if( NetworkInfo4.getState() == NetworkInfo$State.CONNECTED )
        {
            if( NetworkInfo4.getType() == 1 )
                return 6;
            else
            {
                Object Object10;

                if( NetworkInfo4.getType() != 0 )
                    return 1;
                Object10 = NetworkInfo4.getExtraInfo();
                if( TextUtils.isEmpty( (CharSequence) Object10 ) )
                    return 1;
                else
                {
                    String String11 = ((String) Object10).toLowerCase();

                    if( String11.equals( "cmwap" ) )
                        return 0;
                    else if( String11.equals( "cmnet" ) )
                        return 1;
                    else if( String11.equals( "3gwap" ) )
                        return 7;
                    else if( String11.equals( "3gnet" ) )
                        return 8;
                    else if( String11.equals( "uniwap" ) )
                        return 2;
                    else if( String11.equals( "uninet" ) )
                        return 3;
                    else if( String11.equals( "ctwap" ) )
                        return 4;
                    else if( String11.equals( "ctnet" ) || String11.equals( "#777" ) )
                        return 5;
                    else
                        return 1;
                }
            }
        }
        else
        {
            NetworkInfo[] NetworkInfo_1darray5 = ConnectivityManager2.getAllNetworkInfo();

            if( NetworkInfo_1darray5 != null )
            {
                int int6 = NetworkInfo_1darray5.length;
                int int7 = 0;

                while( int7 < int6 )
                {
                    if( NetworkInfo_1darray5[int7].getState() == NetworkInfo$State.CONNECTED && NetworkInfo_1darray5[int7].getType() == 0 )
                    {
                        Object Object8 = NetworkInfo4.getExtraInfo();

                        if( TextUtils.isEmpty( (CharSequence) Object8 ) )
                            return 1;
                        else
                        {
                            String String9 = ((String) Object8).toLowerCase();

                            if( String9.equals( "cmwap" ) )
                                return 0;
                            else if( String9.equals( "cmnet" ) )
                                return 1;
                            else if( String9.equals( "3gwap" ) )
                                return 7;
                            else if( String9.equals( "3gnet" ) )
                                return 8;
                            else if( String9.equals( "uniwap" ) )
                                return 2;
                            else if( String9.equals( "uninet" ) )
                                return 3;
                            else if( String9.equals( "ctwap" ) )
                                return 4;
                            else if( String9.equals( "ctnet" ) || String9.equals( "#777" ) )
                                return 5;
                            else
                                return 1;
                        }
                    }
                    else
                    {
                        ++int7;
                        continue;
                    }
                }
            }
            return -1;
        }
    }

    public static String i(int int1)
    {
        if( int1 / 10000 > 0 )
            return new StringBuilder().append( int1 / 10000 ).append( "\u4E07" ).toString();
        else if( int1 / 1000 > 0 )
            return new StringBuilder().append( int1 / 1000 ).append( "\u5343" ).toString();
        else if( int1 / 100 > 0 )
            return new StringBuilder().append( int1 / 100 ).append( "\u767E" ).toString();
        else
            return String.valueOf( int1 );
    }

    public static JSONObject i(String String1, String String2)
    {
        int int3 = 0;
        JSONObject JSONObject4 = new JSONObject();

label_36:
        {
            try
            {
                String[] String_1darray6 = String1.split( String2 );

                while( int3 < String_1darray6.length )
                {
                    String[] String_1darray7 = String_1darray6[int3].split( "=" );

                    JSONObject4.put( String_1darray7[0], String_1darray6[int3].substring( 1 + String_1darray7[0].length() ) );
                    break label_36;
                }
            }
            catch( Exception Exception5 )
            {
                Exception5.printStackTrace();
            }
            return JSONObject4;
        }
        ++int3;
    }

    public static void i(Context Context1, String String2)
    {
        Object Object3 = new HashMap();

        ((Map) Object3).put( "uid", com.clilystudio.netbook.util.e.c( Context1 ) );
        com.a.a.a.a( Context1, String2, (Map) Object3 );
    }

    public static boolean i()
    {
        if( Build$VERSION.SDK_INT >= 19 )
            return true;
        else
            return false;
    }

    public static byte[] i(String String1)
    {
        if( String1 == null )
            return null;
        else
        {
            byte[] byte_1darray4;

            try
            {
                byte_1darray4 = e( String1.getBytes( "utf-8" ) );
            }
            catch( Throwable Throwable2 )
            {
                com.mob.tools.e.a().w( Throwable2 );
                return null;
            }
            return byte_1darray4;
        }
    }

    public static int j(int int1)
    {
        if( Build$VERSION.SDK_INT < 11 )
            ;
        return 0xFF & int1 >> 0x8;
    }

    public static String j(String String1)
    {
        String String4;

        try
        {
            String4 = f( String1, "utf-8" );
        }
        catch( Throwable Throwable2 )
        {
            com.mob.tools.e.a().w( Throwable2 );
            return null;
        }
        return String4;
    }

    public static ArrayList j(String String1, String String2)
    {
        String String3 = new StringBuilder( "/ZhuiShuShenQi/Chapter" ).append( File.separator ).append( String1 ).append( File.separator ).append( String2 ).toString();

        return c( new File( com.clilystudio.netbook.c.a, String3 ) );
    }

    public static boolean j()
    {
        if( Build$VERSION.SDK_INT == 19 )
            return true;
        else
            return false;
    }

    public static boolean j(Context Context1)
    {
        if( i( Context1 ) == -1 )
            return false;
        else
            return true;
    }

    public static boolean j(Context Context1, String String2)
    {
        PackageManager PackageManager3 = Context1.getPackageManager();

        try
        {
            PackageManager3.getPackageInfo( String2, 128 );
        }
        catch( PackageManager$NameNotFoundException NameNotFoundException4 )
        {
            return false;
        }
        return true;
    }

    public static long k(String String1)
    {
        long long6;

        try
        {
            Date Date2 = new Date( String1 );
            Calendar Calendar5 = Calendar.getInstance();

            Calendar5.setTime( Date2 );
            long6 = Calendar5.getTimeInMillis();
        }
        catch( Throwable Throwable3 )
        {
            com.mob.tools.e.a().w( Throwable3 );
            return 0L;
        }
        return long6;
    }

    public static Bitmap k(Context Context1, String String2)
    {
        Object Object4;
        Object Object5;
        Bitmap Bitmap7;

        try
        {
            Object Object10 = Context1.openFileInput( String2 );
        }
        catch( FileNotFoundException FileNotFoundException3 )
        {
            Object4 = null;
            try
            {
                ((Throwable) FileNotFoundException3).printStackTrace();
            }
            finally
            {
                if( Object4 != null )
                {
                    try
                    {
                        ((FileInputStream) Object4).close();
                    }
                    catch( Exception Exception6 )
                    {
                        Exception6.printStackTrace();
                    }
                }
                throw Object5;
            }
            Bitmap7 = null;
            if( Object4 != null )
            {
                try
                {
                    ((FileInputStream) Object4).close();
                }
                catch( Exception Exception8 )
                {
                    Exception8.printStackTrace();
                    return null;
                }
                return null;
            }
        }
        catch( OutOfMemoryError OutOfMemoryError13 )
        {
            Object4 = null;
            ((Throwable) OutOfMemoryError13).printStackTrace();
            Bitmap7 = null;
            if( Object4 != null )
            {
                ((FileInputStream) Object4).close();
                return null;
            }
        }
        finally
        {
            Object4 = null;
            Object5 = Object9;
            if( Object4 != null )
                ((FileInputStream) Object4).close();
            throw Object5;
        }
        return Bitmap7;
    }

    public static Object k(String String1, String String2)
    {
        File File3;
        Object Object6;

        try
        {
            File3 = new File( J( String1 ), String2 );
            if( !File3.exists() )
                return Object6;
        }
        catch( IOException IOException5 )
        {
            IOException5.printStackTrace();
            return null;
        }
        catch( ClassNotFoundException ClassNotFoundException4 )
        {
            ClassNotFoundException4.printStackTrace();
            return null;
        }
        try
        {
            Object6 = new ObjectInputStream( (InputStream) new FileInputStream( File3 ) ).readObject();
        }
        catch( IOException IOException7 )
        {
            IOException7.printStackTrace();
            return null;
        }
        catch( ClassNotFoundException ClassNotFoundException8 )
        {
            ClassNotFoundException8.printStackTrace();
            return null;
        }
        return Object6;
    }

    public static boolean k()
    {
        boolean boolean2;

        try
        {
            boolean2 = ((Boolean) Class.forName( "android.os.Build" ).getMethod( "hasSmartBar", new Class[0] ).invoke( null, new Object[0] )).booleanValue();
        }
        catch( Exception Exception1 )
        {
            return Build.DEVICE.equals( "mx2" );
        }
        return boolean2;
    }

    public static boolean k(Context Context1)
    {
        int int2 = i( Context1 );
        boolean boolean3;

        if( int2 != 0 && int2 != 1 && int2 != 7 && int2 != 8 && int2 != 9 )
        {
            boolean3 = false;
            if( int2 != 10 )
                return boolean3;
        }
        boolean3 = true;
        return boolean3;
    }

    public static Bundle l(String String1)
    {
        int int2 = String1.indexOf( "://" );
        String String3;
        Bundle Bundle7;

        if( int2 >= 0 )
            String3 = new StringBuilder( "http://" ).append( String1.substring( int2 + 1 ) ).toString();
        else
            String3 = new StringBuilder( "http://" ).append( String1 ).toString();
        try
        {
            URL URL4 = new URL( String3 );

            Bundle7 = m( URL4.getQuery() );
            Bundle7.putAll( m( URL4.getRef() ) );
        }
        catch( Throwable Throwable5 )
        {
            com.mob.tools.e.a().w( Throwable5 );
            return new Bundle();
        }
        return Bundle7;
    }

    public static String l(String String1, String String2)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) || TextUtils.isEmpty( (CharSequence) String2 ) )
            return null;
        if( String1.toLowerCase().compareTo( String2.toLowerCase() ) <= 0 )
            return new StringBuilder( String.valueOf( String1 ) ).append( "_" ).append( String2 ).toString();
        else
            return new StringBuilder( String.valueOf( String2 ) ).append( "_" ).append( String1 ).toString();
    }

    public static boolean l()
    {
        if( !"0".equals( com.clilystudio.netbook.umeng.a.b.b( (Context) MyApplication.a(), "force_encrypt_chapter" ) ) )
            return true;
        else
            return false;
    }

    public static boolean l(Context Context1, String String2)
    {
        return a( Context1, String2, true );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static int[] l(Context Context1)
    {
    }

    public static Bundle m(String String1)
    {
        Bundle Bundle2 = new Bundle();

        if( String1 != null )
        {
            String[] String_1darray3 = String1.split( "&" );
            int int4 = String_1darray3.length;
            int int5;

            for( int5 = 0; int5 < int4; ++int5 )
            {
                String[] String_1darray6 = String_1darray3[int5].split( "=" );

                if( String_1darray6.length < 2 || String_1darray6[1] == null )
                    Bundle2.putString( URLDecoder.decode( String_1darray6[0] ), "" );
                else
                    Bundle2.putString( URLDecoder.decode( String_1darray6[0] ), URLDecoder.decode( String_1darray6[1] ) );
            }
        }
        return Bundle2;
    }

    public static File m(Context Context1)
    {
        return a( Context1, true );
    }

    private static String m()
    {
        String String1 = am.d( "deviceid_v2" );
        String String4;

        try
        {
            String String3 = new JSONObject( String1 ).getString( "device" );

            String4 = com.alipay.security.mobile.module.a.a.b.b( com.alipay.security.mobile.module.a.a.b.a(), String3 );
        }
        catch( Exception Exception2 )
        {
            return null;
        }
        return String4;
    }

    public static void m(Context Context1, String String2)
    {
        if( String2 == null )
            e( Context1, "ad_splash_show", null );
        else
        {
            String String3 = d( Context1, "ad_splash_show", null );

            if( String3 == null || !String3.contains( (CharSequence) String2 ) )
            {
                com.clilystudio.netbook.umeng.a.b.a( Context1, "ad_splash_show", String2 );
                e( Context1, "ad_splash_show", new StringBuilder().append( String3 ).append( String2 ).toString() );
                return;
            }
        }
    }

    public static int n(String String1)
    {
        int int2 = 1;

        if( String1 == null )
            throw X( String1 );
        else
        {
            int int3 = String1.length();

            if( int3 == 0 )
                throw X( String1 );
            else
            {
                int int4;
                int int5;
                int int6;
                int int7;

                if( String1.charAt( 0 ) == 45 )
                    int4 = int2;
                else
                    int4 = 0;
                if( int4 != 0 )
                {
                    if( int2 == int3 )
                        throw X( String1 );
                }
                else
                    int2 = 0;
                int5 = String1.length();
                int6 = int2;
                int7 = 0;
                while( int6 < int5 )
                {
                    int int8 = int6 + 1;
                    int int9 = a( String1.charAt( int6 ), 10 );

                    if( int9 == -1 )
                        throw X( String1 );
                    else if( -214748364 > int7 )
                        throw X( String1 );
                    else
                    {
                        int int10 = int7 * 10 - int9;

                        if( int10 > int7 )
                            throw X( String1 );
                        else
                        {
                            int7 = int10;
                            int6 = int8;
                        }
                    }
                }
                if( int4 == 0 )
                {
                    int7 = -int7;
                    if( int7 < 0 )
                        throw X( String1 );
                }
                return int7;
            }
        }
    }

    public static File n(Context Context1)
    {
        File File2 = a( Context1, true );
        File File3 = new File( File2, "uil-images" );

        if( !File3.exists() && !File3.mkdir() )
            return File2;
        else
            return File3;
    }

    private static String n()
    {
        List List1 = BookReadRecord.getAll();
        StringBuilder StringBuilder2 = new StringBuilder();

        if( List1.size() > 0 )
        {
            Iterator Iterator3 = List1.iterator();

            while( Iterator3.hasNext() )
            {
                StringBuilder2.append( ((BookReadRecord) Iterator3.next()).getBookId() );
                StringBuilder2.append( "|" );
            }
            StringBuilder2.deleteCharAt( -1 + StringBuilder2.length() );
        }
        return StringBuilder2.toString();
    }

    public static void n(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "home_ab_menu_click", String2 );
    }

    public static long o(String String1)
    {
        int int2 = 1;

        if( String1 == null )
            throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
        else
        {
            int int3 = String1.length();

            if( int3 == 0 )
                throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
            else
            {
                boolean boolean4;

                if( String1.charAt( 0 ) == 45 )
                    boolean4 = int2;
                else
                    boolean4 = false;
                if( boolean4 )
                {
                    if( int2 == int3 )
                        throw new Throwable( new StringBuilder( "Invalid long: \"" ).append( String1 ).append( "\"" ).toString() );
                }
                else
                    int2 = 0;
                return a( String1, int2, 10, boolean4 );
            }
        }
    }

    private static String o()
    {
        if( am.e() != null && am.e().getUser() != null )
            return am.e().getUser().getId();
        else
            return "";
    }

    public static Map o(Context Context1)
    {
        Map Map2 = p( Context1 );

        Map2.put( "iid", n() );
        return Map2;
    }

    public static void o(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "splash_ad_click", String2 );
    }

    public static Map p(Context Context1)
    {
        Object Object2 = new HashMap();

        ((Map) Object2).put( "uid", com.clilystudio.netbook.util.e.c( Context1 ) );
        return (Map) Object2;
    }

    public static void p(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "book_category_major_click", String2 );
    }

    public static boolean p(String String1)
    {
        if( String1.equals( "POST" ) || String1.equals( "PUT" ) || String1.equals( "PATCH" ) )
            return true;
        else
            return false;
    }

    public static void q(Context Context1)
    {
        d = d( Context1, "CIPHER_BOOK_ID", null );
        e = d( Context1, "CIPHER_TOC_ID", null );
        f = d( Context1, "CIPHER_CHECKSUM", null );
    }

    public static void q(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "reader_menu_event", String2 );
    }

    public static boolean q(String String1)
    {
        if( p( String1 ) || String1.equals( "DELETE" ) )
            return true;
        else
            return false;
    }

    public static int r(Context Context1)
    {
        NetworkInfo NetworkInfo2 = ((ConnectivityManager) Context1.getSystemService( "connectivity" )).getActiveNetworkInfo();

        if( NetworkInfo2 == null )
            return 0;
        else
        {
            int int3 = NetworkInfo2.getType();
            int int4;

            if( int3 == 0 )
            {
                String String5 = NetworkInfo2.getExtraInfo();

                if( !Q( String5 ) )
                {
                    if( String5.toLowerCase().equals( "cmnet" ) )
                        int4 = 3;
                    else
                        int4 = 2;
                    return int4;
                }
            }
            else if( int3 == 1 )
            {
                int4 = 1;
                return int4;
            }
            int4 = 0;
            return int4;
        }
    }

    public static void r(String String1)
    {
        String String2 = s( String1 );

        BookSubRecord.create( String2 );
        com.xiaomi.mipush.sdk.d.b( (Context) MyApplication.a(), String2, null );
    }

    public static boolean r(Context Context1, String String2)
    {
        return "1".equals( com.clilystudio.netbook.umeng.a.b.b( Context1, String2 ) );
    }

    public static String s(String String1)
    {
        return new StringBuilder( "book:" ).append( String1 ).toString();
    }

    public static void s(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "post_official_open", String2 );
    }

    public static boolean s(Context Context1)
    {
        if( r( Context1 ) == 1 )
            return true;
        else
            return false;
    }

    public static void t(Context Context1, String String2)
    {
        com.clilystudio.netbook.umeng.a.b.a( Context1, "HOT_KEY_WORD_CLICK", String2 );
    }

    public static void t(String String1)
    {
        String String2 = s( String1 );

        BookUnSubRecord.create( String2 );
        com.xiaomi.mipush.sdk.d.c( (Context) MyApplication.a(), String2, null );
    }

    public static boolean t(Context Context1)
    {
        ConnectivityManager ConnectivityManager2 = (ConnectivityManager) Context1.getSystemService( "connectivity" );

        if( ConnectivityManager2 == null )
            return false;
        else
        {
            NetworkInfo NetworkInfo3 = ConnectivityManager2.getActiveNetworkInfo();

            if( NetworkInfo3 != null && NetworkInfo3.isConnectedOrConnecting() )
                return true;
            else
                return false;
        }
    }

    public static float u(Context Context1, String String2)
    {
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, String2 );
        float float5;

        try
        {
            float5 = Float.parseFloat( String3 );
        }
        catch( Exception Exception4 )
        {
            return 0.0F;
        }
        return float5;
    }

    public static void u(Context Context1)
    {
        int int2 = com.clilystudio.netbook.util.t.a();

        if( int2 != a( Context1, "key_all_post_open_by_day", 0 ) )
        {
            com.clilystudio.netbook.umeng.a.b.a( Context1, "all_post_open_by_day" );
            b( Context1, "key_all_post_open_by_day", int2 );
        }
    }

    public static void u(String String1)
    {
        a( String1, BookSyncRecord$BookModifyType.SHELF_ADD );
    }

    public static float v(Context Context1, String String2)
    {
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, String2 );
        float float5;

        try
        {
            float5 = Float.parseFloat( String3 );
        }
        catch( Exception Exception4 )
        {
            return 1.0F;
        }
        return float5;
    }

    public static void v(Context Context1)
    {
        int int2 = com.clilystudio.netbook.util.t.a();

        if( int2 != a( Context1, "key_audiobook_listen_count", 0 ) )
        {
            com.clilystudio.netbook.umeng.a.b.a( Context1, "audiobook_listen_count" );
            b( Context1, "key_audiobook_listen_count", int2 );
        }
    }

    public static void v(String String1)
    {
        a( String1, BookSyncRecord$BookModifyType.SHELF_REMOVE );
    }

    public static void w(String String1)
    {
        a( String1, BookSyncRecord$BookModifyType.FEED_ADD );
    }

    public static boolean w(Context Context1)
    {
        if( !"com.clilystudio.netbooktest".equals( "com.clilystudio.netbook" ) )
        {
            String String2 = am.n( Context1 );
            int int3 = b( com.clilystudio.netbook.umeng.a.b.b( Context1, "home_game_center_toggle" ), 0 );
            boolean boolean4;

            if( am.f( Context1 ) < int3 )
                boolean4 = true;
            else
                boolean4 = false;
            if( !"Anzhi".equals( String2 ) && !"Taobao".equals( String2 ) && !"Uc".equals( String2 ) && !"Zhihuiyun".equals( String2 ) && !"Tencent".equals( String2 ) )
                return boolean4;
            if( !boolean4 || !android.support.design.widget.am.o( Context1 ) )
                return false;
        }
        return true;
    }

    public static boolean w(Context Context1, String String2)
    {
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, String2 );
        float float5;

        try
        {
            float5 = Float.parseFloat( String3 );
        }
        catch( Exception Exception4 )
        {
            return true;
        }
        if( Math.random() < (double) float5 )
            return true;
        else
            return false;
    }

    public static void x(String String1)
    {
        a( String1, BookSyncRecord$BookModifyType.FEED_REMOVE );
    }

    public static boolean x(Context Context1)
    {
        String String2 = am.n( Context1 );
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, "game_center_disabled_at_channel" );

        if( String3 != null && String3.length() > 0 )
        {
            String[] String_1darray4 = String3.split( "," );
            int int5 = String_1darray4.length;
            int int6 = 0;

            while( int6 < int5 )
            {
                if( String_1darray4[int6].equals( String2 ) )
                    return false;
                else
                    ++int6;
            }
        }
        return true;
    }

    public static boolean x(Context Context1, String String2)
    {
        return Context1.getSharedPreferences( "mistat", 0 ).contains( String2 );
    }

    public static String y(String String1)
    {
        String String2;
        String String3;
        String String4;

        if( String1 != null )
            String2 = String1.replaceAll( "(?m)^[ \u3000\t]+", "" );
        else
            String2 = null;
        if( String2 != null )
            String3 = String2.replaceAll( "(?m)^", "\u3000\u3000" );
        else
            String3 = null;
        if( String3 != null )
        {
            String String5 = String3.replaceAll( "&nbsp", "\u3000" ).replaceAll( "&quot", "\"" );

            String4 = null;
            if( String5 != null )
                String4 = String5.replaceAll( "^\u3000{3,}", "\u3000\u3000" ).replaceAll( "\n\u3000{3,}", "\n\u3000\u3000" );
        }
        else
            String4 = String3;
        if( String4 == null || String4.length() == 0 || String4.charAt( -1 + String4.length() ) == 10 )
            return String4;
        else
            return new StringBuilder().append( String4 ).append( '\n' ).toString();
    }

    public static boolean y(Context Context1)
    {
        return "1".equals( com.clilystudio.netbook.umeng.a.b.b( Context1, "show_remove_ad" ) );
    }

    public static String z(String String1)
    {
        if( String1 != null )
            return String1.replaceAll( "\\n[\\s]+", "\n" ).trim();
        else
            return null;
    }

    public static boolean z(Context Context1)
    {
        String String2 = am.n( Context1 );
        String String3 = com.clilystudio.netbook.umeng.a.b.b( Context1, "one_yuan_disabled_channel" );

        if( String3 != null && String3.length() > 0 )
        {
            String[] String_1darray4 = String3.split( "," );
            int int5 = String_1darray4.length;
            int int6 = 0;

            while( int6 < int5 )
            {
                if( String_1darray4[int6].equals( String2 ) )
                    return false;
                else
                    ++int6;
            }
        }
        return true;
    }

    public void a(am am1)
    {
        b.setCurrentItem( am1.a() );
    }
}
