
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.clilystudio.netbook.hpay100.config.k;
import com.clilystudio.netbook.hpay100.config.l;
import org.json.JSONException;
import org.json.JSONObject;

final class f implements k {

    public f(Activity Activity1, String String2, String String3, String String4, int int5, int int6, y y7)
    {
        a = Activity1;
        b = String2;
        c = String3;
        d = String4;
        e = int5;
        f = int6;
        g = y7;
    }

    private Activity a;
    private y g;
    private String b = "";
    private String c = "";
    private String d = "";
    private int e = 0;
    private int f = 0;

    public final void a(String String1)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            z z20;

            a.a( a );
            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", "2006", 0 );
            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", "4000", 0 );
            z20 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
            if( g != null )
                g.a( z20 );
        }
        else
        {
            JSONObject JSONObject2;

            try
            {
                JSONObject2 = new JSONObject( String1 );
            }
            catch( JSONException JSONException19 )
            {
                JSONException19.printStackTrace();
                JSONObject2 = null;
            }
            if( JSONObject2 == null )
            {
                z z18;

                a.a( a );
                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", "2007", 0 );
                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", "4201", 0 );
                z18 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                if( g != null )
                {
                    g.a( z18 );
                    return;
                }
            }
            else
            {
                int int3 = JSONObject2.optInt( "status", -1 );
                Object Object4 = JSONObject2.optString( "msg", "" );

                if( int3 != 0 )
                {
                    Object Object16;
                    z z17;

                    a.a( a );
                    com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", new StringBuilder( String.valueOf( int3 ) ).toString(), 0 );
                    com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", new StringBuilder( String.valueOf( int3 ) ).toString(), 0 );
                    if( TextUtils.isEmpty( (CharSequence) Object4 ) )
                        Object16 = "\u7CFB\u7EDF\u7E41\u5FD9";
                    else
                        Object16 = Object4;
                    z17 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, int3, (String) Object16 );
                    if( g != null )
                    {
                        g.a( z17 );
                        return;
                    }
                }
                else
                {
                    Object Object5 = JSONObject2.optString( "res", "" );

                    if( TextUtils.isEmpty( (CharSequence) Object5 ) )
                    {
                        z z15;

                        a.a( a );
                        com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", "2008", 0 );
                        com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", "4202", 0 );
                        z15 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                        if( g != null )
                        {
                            g.a( z15 );
                            return;
                        }
                    }
                    else
                    {
                        Object Object7;

                        try
                        {
                            Object Object14 = android.support.v7.app.f.b( (String) Object5, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" );
                        }
                        catch( Exception Exception6 )
                        {
                            Exception6.printStackTrace();
                            Object7 = "";
                        }
                        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "resdes:" ).append( (String) Object7 ).toString() );
                        if( TextUtils.isEmpty( (CharSequence) Object7 ) )
                        {
                            z z13;

                            a.a( a );
                            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", "2009", 0 );
                            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", "4203", 0 );
                            z13 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                            if( g != null )
                            {
                                g.a( z13 );
                                return;
                            }
                        }
                        else
                        {
                            com.clilystudio.netbook.hpay100.config.g g8 = com.clilystudio.netbook.hpay100.config.a.b( a.getApplicationContext(), (String) Object7 );

                            if( g8 == null )
                            {
                                z z12;

                                a.a( a );
                                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, -1, "2", "2010", 0 );
                                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, "", -1, c, "", "", f, "2", "4204", 0 );
                                z12 = com.clilystudio.netbook.hpay100.config.a.a( f, b, e, d, c, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                                if( g != null )
                                {
                                    g.a( z12 );
                                    return;
                                }
                            }
                            else
                            {
                                int int9 = g8.a;

                                com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "scheme--:" ).append( int9 ).toString() );
                                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, c, f, int9, "1", "", 0 );
                                if( int9 == 3 )
                                {
                                    String String11 = l.e( a.getApplicationContext() );

                                    l.a( a, b, int9, c, f, d, String11, e, (k) new e( a, e, b, c, f, d, int9, g ) );
                                    com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, int9, c, f, "1", "", 0 );
                                    return;
                                }
                                else if( int9 == 1 )
                                {
                                    a.a( a );
                                    HPaySdkActivity.a( a, b, int9, c, f, d, e, g );
                                    return;
                                }
                                else if( int9 == 2 )
                                {
                                    String String10 = l.e( a.getApplicationContext() );

                                    l.a( a, b, int9, c, f, d, String10, e, (k) new e( a, e, b, c, f, d, int9, g ) );
                                    com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), b, int9, c, f, "1", "", 0 );
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
