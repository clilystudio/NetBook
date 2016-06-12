
package com.clilystudio.netbook.hpay100.c;

import android.app.Activity;
import android.os.IBinder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.clilystudio.netbook.hpay100.a.a;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class j {

    public static int a()
    {
        return Integer.parseInt( DateFormat.format( (CharSequence) "yyyyMMdd", new Date() ).toString() );
    }

    public static String a(String String1)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) )
            return "";
        else
        {
            String String3;

            try
            {
                Matcher Matcher4 = Pattern.compile( "(?<=http://|\\.)[^.]*?\\.(com|cn|net|org|biz|info|cc|tv|top)", 2 ).matcher( (CharSequence) String1 );
                String String6;

                Matcher4.find();
                String6 = Matcher4.group();
            }
            catch( Exception Exception2 )
            {
                String3 = "";
                Exception2.printStackTrace();
            }
            a.b( "dalongTest", new StringBuilder( "domain:" ).append( String3 ).toString() );
            return String3;
        }
    }

    public static void a(Activity Activity1)
    {
        if( Activity1 != null )
        {
            View View3;

            try
            {
                View3 = Activity1.getWindow().peekDecorView();
            }
            catch( Exception Exception2 )
            {
                return;
            }
            if( View3 != null && View3.getWindowToken() != null )
            {
                ((InputMethodManager) Activity1.getSystemService( "input_method" )).hideSoftInputFromWindow( View3.getWindowToken(), 0 );
                return;
            }
        }
    }

    public static void a(Activity Activity1, int int2, int int3)
    {
        if( Activity1 != null )
        {
            reflect.Method Method4 = b();

            if( Method4 != null )
            {
                Object[] Object_1darray5 = new Object[2];

                Object_1darray5[0] = Integer.valueOf( int2 );
                Object_1darray5[1] = Integer.valueOf( int3 );
                try
                {
                    Method4.invoke( Activity1, Object_1darray5 );
                }
                catch( Exception Exception6 )
                {
                    return;
                }
                return;
            }
        }
    }

    public static String b(String String1)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) )
            return null;
        else
        {
            String String3;

            try
            {
                Matcher Matcher4 = Pattern.compile( "\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b" ).matcher( (CharSequence) String1 );
                String String6;

                Matcher4.find();
                String6 = Matcher4.group();
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                String3 = null;
            }
            a.b( "dalongTest", new StringBuilder( "ip:" ).append( String3 ).toString() );
            return String3;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    private static reflect.Method b()
    {
    }
}
