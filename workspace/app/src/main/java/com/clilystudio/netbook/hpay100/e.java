
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.k;
import com.clilystudio.netbook.hpay100.config.l;
import com.clilystudio.netbook.hpay100.web.HPayWebActivity;
import org.json.JSONException;
import org.json.JSONObject;

final class e implements k {

    public e(Activity Activity1, int int2, String String3, String String4, int int5, String String6, int int7, y y8)
    {
        a = Activity1;
        b = int2;
        c = String3;
        d = String4;
        e = int5;
        f = String6;
        g = int7;
        h = y8;
    }

    private Activity a = null;
    private int b = 0;
    private String c = "";
    private String d = "";
    private int e = 0;
    private String f = "";
    private int g = 0;
    private y h = null;

    public final void a(String String1)
    {
        if( TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            z z19;

            a.a( a );
            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", "4001", 0 );
            z19 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
            if( h != null )
                h.a( z19 );
        }
        else
        {
            JSONObject JSONObject2;

            try
            {
                JSONObject2 = new JSONObject( String1 );
            }
            catch( JSONException JSONException18 )
            {
                JSONException18.printStackTrace();
                JSONObject2 = null;
            }
            if( JSONObject2 == null )
            {
                z z17;

                a.a( a );
                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", "4002", 0 );
                z17 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                if( h != null )
                {
                    h.a( z17 );
                    return;
                }
            }
            else
            {
                int int3 = JSONObject2.optInt( "status", -1 );
                Object Object4 = JSONObject2.optString( "msg", "" );

                if( int3 != 0 )
                {
                    Object Object15;
                    z z16;

                    a.a( a );
                    com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", new StringBuilder( String.valueOf( int3 ) ).toString(), 0 );
                    if( TextUtils.isEmpty( (CharSequence) Object4 ) )
                        Object15 = "\u7CFB\u7EDF\u7E41\u5FD9";
                    else
                        Object15 = Object4;
                    z16 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, int3, (String) Object15 );
                    if( h != null )
                    {
                        h.a( z16 );
                        return;
                    }
                }
                else
                {
                    Object Object5 = JSONObject2.optString( "res", "" );

                    if( TextUtils.isEmpty( (CharSequence) Object5 ) )
                    {
                        z z14;

                        a.a( a );
                        com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", "4003", 0 );
                        z14 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                        if( h != null )
                        {
                            h.a( z14 );
                            return;
                        }
                    }
                    else
                    {
                        Object Object7;

                        try
                        {
                            Object Object13 = android.support.v7.app.f.b( (String) Object5, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" );
                        }
                        catch( Exception Exception6 )
                        {
                            Exception6.printStackTrace();
                            Object7 = "";
                        }
                        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "resdes:" ).append( (String) Object7 ).toString() );
                        if( TextUtils.isEmpty( (CharSequence) Object7 ) )
                        {
                            z z12;

                            a.a( a );
                            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", "4004", 0 );
                            z12 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                            if( h != null )
                            {
                                h.a( z12 );
                                return;
                            }
                        }
                        else
                        {
                            HPaySMS HPaySMS8 = com.clilystudio.netbook.hpay100.config.a.a( (String) Object7 );

                            if( HPaySMS8 == null )
                            {
                                z z11;

                                a.a( a );
                                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), c, "", g, d, "", "", e, "2", "4005", 0 );
                                z11 = com.clilystudio.netbook.hpay100.config.a.a( e, c, b, f, d, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                                if( h != null )
                                {
                                    h.a( z11 );
                                    return;
                                }
                            }
                            else
                            {
                                HPaySMS8.mOrderidAPP = c;
                                HPaySMS8.mPayName = f;
                                HPaySMS8.mPayId = d;
                                com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), HPaySMS8.mOrderidAPP, HPaySMS8.mOrderidHR, HPaySMS8.mScheme, HPaySMS8.mPayId, HPaySMS8.mChType, HPaySMS8.mChID, HPaySMS8.mAmount, "1", "", 0 );
                                if( g == 2 )
                                {
                                    a.a( a );
                                    if( HPaySMS8.mSdkFeeType == 16 )
                                    {
                                        if( TextUtils.isEmpty( (CharSequence) HPaySMS8.mOpenUrl ) )
                                        {
                                            z z10;

                                            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), HPaySMS8.mOrderidAPP, HPaySMS8.mOrderidHR, HPaySMS8.mScheme, HPaySMS8.mPayId, HPaySMS8.mChType, HPaySMS8.mChID, HPaySMS8.mAmount, "2", "4006", 0 );
                                            z10 = com.clilystudio.netbook.hpay100.config.a.a( HPaySMS8, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                                            if( h != null )
                                            {
                                                h.a( z10 );
                                                return;
                                            }
                                        }
                                        else
                                        {
                                            HPayWebActivity.a( a, HPaySMS8, (String) Object7, h );
                                            return;
                                        }
                                    }
                                    else if( TextUtils.isEmpty( (CharSequence) HPaySMS8.mFeeUrl ) )
                                    {
                                        z z9;

                                        com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), HPaySMS8.mOrderidAPP, HPaySMS8.mOrderidHR, HPaySMS8.mScheme, HPaySMS8.mPayId, HPaySMS8.mChType, HPaySMS8.mChID, HPaySMS8.mAmount, "2", "4006", 0 );
                                        z9 = com.clilystudio.netbook.hpay100.config.a.a( HPaySMS8, 6106, "\u7CFB\u7EDF\u7E41\u5FD9" );
                                        if( h != null )
                                        {
                                            h.a( z9 );
                                            return;
                                        }
                                    }
                                    else
                                    {
                                        HPayWebActivity.a( a, HPaySMS8, (String) Object7, h );
                                        return;
                                    }
                                }
                                else
                                {
                                    if( HPaySMS8.mSdkFeeType == 8 )
                                    {
                                        a.a( a );
                                        com.clilystudio.netbook.hpay100.a.a.a( a, HPaySMS8, h );
                                    }
                                    else if( l.h == 0 )
                                    {
                                        a.a( a );
                                        HPaySdkActivity.a( a, g, HPaySMS8, h );
                                    }
                                    else
                                        a.a( a, HPaySMS8, h, 0 );
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
