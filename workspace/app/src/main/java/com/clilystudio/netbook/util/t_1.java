
package com.clilystudio.netbook.util;

import android.text.format.DateUtils;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public final class t {

    private static final SimpleDateFormat a = new SimpleDateFormat( "yyyyMMdd", Locale.CHINA );
    private static final SimpleDateFormat b = new SimpleDateFormat( "yyyy-MM-dd HH:mm", Locale.CHINA );
    private static final SimpleDateFormat c = new SimpleDateFormat( "yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA );

    public static int a()
    {
        Date Date1 = new Date();

        return com.clilystudio.netbook.hpay100.a.a.b( a.format( Date1 ), 0 );
    }

    public static String a(long long1)
    {
        long long3 = Math.abs( System.currentTimeMillis() - long1 );

        if( long3 <= 60000L )
            return "\u521A\u521A";
        else if( long3 <= 604800000L )
            return DateUtils.getRelativeTimeSpanString( long1 ).toString();
        else if( long3 <= 2592000000L )
        {
            long long9 = long3 / 86400000L;

            return new StringBuilder().append( long9 ).append( " \u5929\u524D" ).toString();
        }
        else if( long3 <= 31536000000L )
        {
            long long7 = long3 / 2592000000L;

            return new StringBuilder().append( long7 ).append( " \u6708\u524D" ).toString();
        }
        else
        {
            long long5;

            if( long3 > 94608000000L )
                return DateUtils.getRelativeTimeSpanString( long1 ).toString();
            long5 = long3 / 31536000000L;
            return new StringBuilder().append( long5 ).append( " \u5E74\u524D" ).toString();
        }
    }

    public static String a(Date Date1)
    {
        return a.format( Date1 );
    }

    public static Date a(String String1)
    {
        Date Date4;

        try
        {
            Date4 = b.parse( String1 );
        }
        catch( ParseException ParseException3 )
        {
            ParseException3.printStackTrace();
            return new Date();
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return new Date();
        }
        return Date4;
    }

    public static transient boolean a(Date Date1, Date[] Date_1darray2)
    {
        if( Date1 != null )
        {
            if( Date_1darray2.length == 1 )
            {
                if( Date1.getTime() >= f( Date_1darray2[0] ).getTime() && Date1.getTime() <= g( Date_1darray2[0] ).getTime() )
                    return true;
            }
            else if( Date_1darray2.length == 2 && Date1.getTime() >= f( Date_1darray2[0] ).getTime() && Date1.getTime() <= g( Date_1darray2[1] ).getTime() )
                return true;
        }
        return false;
    }

    public static String b(long long1)
    {
        StringBuilder StringBuilder3 = new StringBuilder();
        long long4 = long1 % 86400000L / 3600000L;
        long long6 = long1 % 3600000L / 60000L;
        long long8 = long1 % 60000L / 1000L;

        if( long4 > 0L )
            StringBuilder3.append( new StringBuilder().append( long4 ).append( ":" ).toString() );
        if( long6 < 10L )
            StringBuilder3.append( "0" );
        StringBuilder3.append( new StringBuilder().append( long6 ).append( ":" ).toString() );
        if( long8 < 10L )
            StringBuilder3.append( "0" );
        StringBuilder3.append( long8 );
        return StringBuilder3.toString();
    }

    public static String b(Date Date1)
    {
        if( Date1 == null )
            return null;
        else
            return new SimpleDateFormat( "yyyy.MM.dd", Locale.CHINA ).format( Date1 );
    }

    public static Date b(String String1)
    {
        String String2 = String1.replace( (CharSequence) "Z", (CharSequence) "+0000" );

        return c.parse( String2, new ParsePosition( 0 ) );
    }

    public static String c(Date Date1)
    {
        if( Date1 == null )
            return null;
        else
            return new SimpleDateFormat( "yyyy-MM-dd", Locale.CHINA ).format( Date1 );
    }

    public static String d(Date Date1)
    {
        if( Date1 == null )
            return null;
        else
            return new SimpleDateFormat( "MM-dd hh:mm", Locale.CHINA ).format( Date1 );
    }

    public static String e(Date Date1)
    {
        if( Date1 != null )
            return a( Date1.getTime() );
        else
            return "\u6682\u65E0";
    }

    private static Date f(Date Date1)
    {
        Calendar Calendar2 = Calendar.getInstance();

        Calendar2.setTime( Date1 );
        Calendar2.set( 11, 0 );
        Calendar2.set( 12, 0 );
        Calendar2.set( 13, 0 );
        Calendar2.set( 14, 0 );
        return Calendar2.getTime();
    }

    private static Date g(Date Date1)
    {
        Calendar Calendar2 = Calendar.getInstance();

        Calendar2.setTime( Date1 );
        Calendar2.set( 11, 23 );
        Calendar2.set( 12, 59 );
        Calendar2.set( 13, 59 );
        Calendar2.set( 14, 999 );
        return Calendar2.getTime();
    }
}
