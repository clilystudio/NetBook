
package com.clilystudio.netbook.hpay100;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.k;
import org.json.JSONException;
import org.json.JSONObject;

final class u implements k {

    public u(HPaySdkActivity HPaySdkActivity1, int int2)
    {
        b = HPaySdkActivity1;
        a = 0;
        a = 3;
    }

    private int a;
    private HPaySdkActivity b;

    public final void a(String String1)
    {
        HPaySdkActivity.b( b );
        if( TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
            HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
            com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", "4001", a );
        }
        else
        {
            JSONObject JSONObject2;

            try
            {
                JSONObject2 = new JSONObject( String1 );
            }
            catch( JSONException JSONException9 )
            {
                JSONException9.printStackTrace();
                JSONObject2 = null;
            }
            if( JSONObject2 == null )
            {
                HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
                HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
                com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", "4002", a );
            }
            else
            {
                int int3 = JSONObject2.optInt( "status", -1 );
                Object Object4 = JSONObject2.optString( "msg", "" );

                if( int3 != 0 )
                {
                    if( !android.text.TextUtils.isEmpty( (CharSequence) Object4 ) )
                        HPaySdkActivity.c( b ).setText( (CharSequence) Object4 );
                    else
                        HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
                    HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
                    com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", new StringBuilder( String.valueOf( int3 ) ).toString(), a );
                }
                else
                {
                    Object Object5 = JSONObject2.optString( "res", "" );

                    if( TextUtils.isEmpty( (CharSequence) Object5 ) )
                    {
                        HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
                        HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
                        com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", "4003", a );
                    }
                    else
                    {
                        Object Object7;

                        try
                        {
                            Object Object8 = android.support.v7.app.f.b( (String) Object5, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a" );
                        }
                        catch( Exception Exception6 )
                        {
                            Exception6.printStackTrace();
                            Object7 = "";
                        }
                        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "resdes:" ).append( (String) Object7 ).toString() );
                        if( TextUtils.isEmpty( (CharSequence) Object7 ) )
                        {
                            HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
                            HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
                            com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", "4004", a );
                        }
                        else
                        {
                            HPaySdkActivity.a( b, com.clilystudio.netbook.hpay100.config.a.a( (String) Object7 ) );
                            if( HPaySdkActivity.h( b ) == null )
                            {
                                HPaySdkActivity.c( b ).setText( (CharSequence) "\u83B7\u53D6\u9A8C\u8BC1\u7801\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
                                HPaySdkActivity.a( b, HPaySdkActivity.d( b ), false );
                                com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.e( b ), "", HPaySdkActivity.a(), HPaySdkActivity.f( b ), "", "", HPaySdkActivity.g( b ), "2", "4005", a );
                            }
                            else
                            {
                                HPaySdkActivity.h( b ).mOrderidAPP = HPaySdkActivity.e( b );
                                HPaySdkActivity.h( b ).mPayName = HPaySdkActivity.i( b );
                                HPaySdkActivity.h( b ).mPayId = HPaySdkActivity.f( b );
                                com.clilystudio.netbook.hpay100.config.b.a( (com.clilystudio.netbook.hpay100.config.j) new t( b, (byte) 0 ) );
                                HPaySdkActivity.a( b, false );
                                HPaySdkActivity.j( b );
                                com.clilystudio.netbook.hpay100.config.a.a( b.getApplicationContext(), HPaySdkActivity.h( b ).mOrderidAPP, HPaySdkActivity.h( b ).mOrderidHR, HPaySdkActivity.h( b ).mScheme, HPaySdkActivity.h( b ).mPayId, HPaySdkActivity.h( b ).mChType, HPaySdkActivity.h( b ).mChID, HPaySdkActivity.h( b ).mAmount, "1", "", a );
                            }
                        }
                    }
                }
            }
        }
    }
}
