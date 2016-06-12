
package com.clilystudio.netbook.api;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build;
import android.os.Build$VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.clilystudio.netbook.MyApplication;
import java.util.ArrayList;
import java.util.Locale;

public class f {

    private static f b = null;
    private String a = null;
    private String c = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2";
    private String d = "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";
    private String e = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30";

    public static f a()
    {
        if( b == null )
            b = new f();
        return b;
    }

    private static String a(String String1)
    {
        if( String1 == null )
            String1 = "not-found";
        else
        {
            switch( String1.length() )
            {
                case 0:
                    break;
                default:
                    return new StringBuilder().append( Character.toUpperCase( String1.charAt( 0 ) ) ).append( String1.substring( 1 ) ).toString();
                case 1:
                    return String1.toUpperCase();
            }
        }
        return String1;
    }

    public final String a(int int1)
    {
        switch( int1 )
        {
            case 4:
            case 5:
            default:
                return null;
            case 6:
                return "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3";
            case 7:
                return c;
            case 8:
                return d;
            case 3:
                return e;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final String b()
    {
    }
}
