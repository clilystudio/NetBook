
package android.support.design.widget;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager$RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.Intent$ShortcutIconResource;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Process;
import android.provider.Settings$Secure;
import android.telephony.TelephonyManager;
import android.text.ClipboardManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.db.BookDlRecord;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.User;
import com.ushaqi.zhuishushenqi.ui.AdWebViewActivity;
import com.ushaqi.zhuishushenqi.ui.SplashActivity;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;
import com.ushaqi.zhuishushenqi.util.H;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
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
import org.json.JSONException;
import org.json.JSONObject;

public class am {

    am(TabLayout TabLayout1)
    {
        c = TabLayout1;
    }

    private CharSequence a;
    private TabLayout c;     // final access specifier removed
    private int b = -1;

    private static String A(Context Context1)
    {
        String String2 = com.arcsoft.hpay100.a.a.a( Context1, "vkeyid_profiles_v3", "deviceid", "" );

        if( a( String2 ) )
            return null;
        else
            return com.alipay.security.mobile.module.a.a.b.b( com.alipay.security.mobile.module.a.a.b.a(), String2 );
    }

    private static String B(Context Context1)
    {
        String String3;

        try
        {
            String3 = Context1.getPackageManager().getPackageInfo( Context1.getPackageName(), 16 ).versionName;
        }
        catch( Exception Exception2 )
        {
            return "0.0.0";
        }
        return String3;
    }

    private static PackageInfo C(Context Context1)
    {
        PackageInfo PackageInfo3;

        try
        {
            PackageInfo3 = Context1.getPackageManager().getPackageInfo( Context1.getPackageName(), 0 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PackageInfo3;
    }

    public static int a(Context Context1, int int2)
    {
        TypedArray TypedArray3 = Context1.getTheme().obtainStyledAttributes( { int2 } );
        int int4 = TypedArray3.getColor( 0, 0 );

        TypedArray3.recycle();
        return int4;
    }

    public static int a(String String1, int int2)
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

    public static int a(String String1, int int2, String String3)
    {
        while( int2 < String1.length() && String3.indexOf( String1.charAt( int2 ) ) == -1 )
            ++int2;
        return int2;
    }

    public static Bitmap a(int int1, int int2, int int3, Context Context4)
    {
        Bitmap Bitmap5 = BitmapFactory.decodeResource( Context4.getResources(), int1 );
        NinePatchDrawable NinePatchDrawable6 = new NinePatchDrawable( Bitmap5, Bitmap5.getNinePatchChunk(), new Rect(), null );
        Bitmap Bitmap7;

        NinePatchDrawable6.setBounds( 0, 0, int2, int3 );
        Bitmap7 = Bitmap.createBitmap( int2, int3, Bitmap$Config.ARGB_8888 );
        NinePatchDrawable6.draw( new Canvas( Bitmap7 ) );
        return Bitmap7;
    }

    static TabLayout a(am am1)
    {
        return am1.c;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static com.alipay.b.a.d a(Context Context1)
    {
    }

    public static Account a(Activity Activity1)
    {
        if( Activity1 == null )
            return null;
        else
        {
            Account Account2 = e();

            if( Account2 != null )
                return Account2;
            else
            {
                com.ushaqi.zhuishushenqi.util.e.a( Activity1, "\u8BF7\u767B\u5F55\u540E\u518D\u64CD\u4F5C" );
                Activity1.startActivity( AuthLoginActivity.a( (Context) Activity1 ) );
                return null;
            }
        }
    }

    public static String a(Map Map1, String String2, String String3)
    {
        if( Map1 != null )
        {
            String String4 = (String) Map1.get( String2 );

            if( String4 != null )
                return String4;
        }
        return String3;
    }

    public static String a(byte[] byte_1darray1)
    {
        int int2 = 0;
        char[] char_1darray3 = { 
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 
            'f'
            };
        byte[] byte_1darray6;
        int int7;
        char[] char_1darray8;
        int int9;
        String String12;

        try
        {
            MessageDigest MessageDigest5 = MessageDigest.getInstance( "MD5" );

            MessageDigest5.update( byte_1darray1 );
            byte_1darray6 = MessageDigest5.digest();
            int7 = byte_1darray6.length;
            char_1darray8 = new char[int7 << 1];
        }
        catch( Exception Exception4 )
        {
            return null;
        }
        int9 = 0;
        while( int2 < int7 )
        {
            byte byte10;
            int int11;

            try
            {
                byte10 = byte_1darray6[int2];
            }
            catch( Exception Exception13 )
            {
                return null;
            }
            int11 = int9 + 1;
            try
            {
                char_1darray8[int9] = char_1darray3[0xF & byte10 >>> 0x4];
            }
            catch( Exception Exception14 )
            {
                return null;
            }
            int9 = int11 + 1;
            try
            {
                char_1darray8[int11] = char_1darray3[byte10 & 0xF];
            }
            catch( Exception Exception15 )
            {
                return null;
            }
            ++int2;
        }
        try
        {
            String12 = new String( char_1darray8 );
        }
        catch( Exception Exception16 )
        {
            return null;
        }
        return String12;
    }

    public static void a(Activity Activity1, String String2, String String3)
    {
        Intent Intent4 = new Intent( "android.intent.action.VIEW", Uri.parse( String2 ) );

        try
        {
            Activity1.startActivity( Intent4 );
        }
        catch( ActivityNotFoundException ActivityNotFoundException5 )
        {
            ActivityNotFoundException5.printStackTrace();
            if( String3 != null )
            {
                com.ushaqi.zhuishushenqi.util.e.a( Activity1, String3 );
                return;
            }
        }
    }

    public static void a(Context Context1, long long2)
    {
        com.arcsoft.hpay100.a.a.e( Context1, "pref_new_imp_notif_time", String.valueOf( long2 ) );
    }

    public static void a(Context Context1, View View2)
    {
        ((InputMethodManager) Context1.getSystemService( "input_method" )).hideSoftInputFromWindow( View2.getWindowToken(), 0 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Context Context1, com.alipay.b.a.d d2)
    {
    }

    public static void a(Context Context1, Game Game2)
    {
        Object Object3 = (List) com.arcsoft.hpay100.a.a.k( com.ushaqi.zhuishushenqi.c.h, "played_game.txt" );
        Object Object4;
        Iterator Iterator5;
        Object Object6;

        if( Object3 == null )
            Object4 = new ArrayList();
        else
            Object4 = Object3;
        Iterator5 = ((List) Object4).iterator();
label_27:
        {
            while( Iterator5.hasNext() )
            {
                Object6 = (Game) Iterator5.next();
                if( !((Game) Object6).get_id().equals( Game2.get_id() ) )
                    continue;
                else
                    break label_27;
            }
            Object6 = null;
        }
        if( Object6 != null )
            ((List) Object4).remove( Object6 );
        ((List) Object4).add( 0, Game2 );
        com.arcsoft.hpay100.a.a.a( Object4, com.ushaqi.zhuishushenqi.c.h, "played_game.txt" );
        b( Context1, Game2 );
    }
