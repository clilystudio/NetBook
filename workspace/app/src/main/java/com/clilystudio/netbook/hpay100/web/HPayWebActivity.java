
package com.clilystudio.netbook.hpay100.web;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnTouchListener;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.y;
import com.clilystudio.netbook.hpay100.z;
import java.io.Serializable;

public class HPayWebActivity extends Activity {

    private static y a;
    private HPayWebView b;
    private ImageView c;
    private TextView d;
    private ProgressBar e;
    private LinearLayout f;
    private ImageView g;
    private static String i = "";
    private HPaySMS h = null;
    private Handler j = new b( this );
    private m k = new c( this );

    static LinearLayout a(HPayWebActivity HPayWebActivity1)
    {
        return HPayWebActivity1.f;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Activity Activity1, HPaySMS HPaySMS2, String String3, y y4)
    {
    }

    static TextView b(HPayWebActivity HPayWebActivity1)
    {
        return HPayWebActivity1.d;
    }

    static ProgressBar c(HPayWebActivity HPayWebActivity1)
    {
        return HPayWebActivity1.e;
    }

    static void d(HPayWebActivity HPayWebActivity1)
    {
        if( HPayWebActivity1.b.canGoBack() )
            HPayWebActivity1.b.goBack();
        else
        {
            if( HPayWebActivity1.h != null )
            {
                HPaySMS HPaySMS2 = HPayWebActivity1.h;
                z z3 = new z();

                z3.a( 3 );
                z3.a = HPaySMS2.mChID;
                z3.b = HPaySMS2.mChType;
                z3.b( HPaySMS2.mOrderidHR );
                z3.c( HPaySMS2.mOrderidAPP );
                z3.c( HPaySMS2.mScheme );
                z3.d = HPaySMS2.mPayId;
                z3.c = HPaySMS2.mPayName;
                z3.d( HPaySMS2.mAmount );
                z3.e( HPaySMS2.mRealAmount );
                z3.e = HPaySMS2.mCodeType;
                if( a != null )
                    a.a( z3 );
                com.clilystudio.netbook.hpay100.config.a.a( HPayWebActivity1.getApplicationContext(), HPayWebActivity1.h.mOrderidAPP, HPayWebActivity1.h.mOrderidHR, HPayWebActivity1.h.mChType, HPayWebActivity1.h.mChID, HPayWebActivity1.h.mScheme, HPayWebActivity1.h.mPayId, HPayWebActivity1.h.mAmount, "1", "", 11 );
            }
            HPayWebActivity1.finish();
        }
    }

    static HPayWebView e(HPayWebActivity HPayWebActivity1)
    {
        return HPayWebActivity1.b;
    }

    static HPaySMS f(HPayWebActivity HPayWebActivity1)
    {
        return HPayWebActivity1.h;
    }

    public void finish()
    {
        super.finish();
        com.clilystudio.netbook.hpay100.c.j.a( this, com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "anim", "hpay_push_right_in" ), com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "anim", "hpay_push_right_out" ) );
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle Bundle1)
    {
        Intent Intent4;
        String String5;

        super.onCreate( Bundle1 );
        requestWindowFeature( 1 );
        requestWindowFeature( 2 );
        getWindow().addFlags( 128 );
        setContentView( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "layout", "hpay_act_wap_full" ) );
        c = (ImageView) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_btnback" ) );
        d = (TextView) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_tvTitle" ) );
        d.setText( (CharSequence) "\u77ED\u4FE1\u5145\u503C" );
        b = (HPayWebView) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_webview" ) );
        e = (ProgressBar) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_progressbar" ) );
        f = (LinearLayout) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_net_error" ) );
        f.setOnClickListener( null );
        g = (ImageView) findViewById( com.clilystudio.netbook.hpay100.a.a.a( getApplicationContext(), "id", "hpay_error_image_retry" ) );
        e.setVisibility( 4 );
        b.setOnLongClickListener( (View$OnLongClickListener) new d( this ) );
        b.setOnTouchListener( (View$OnTouchListener) new e( this ) );
        c.setOnClickListener( (View$OnClickListener) new f( this ) );
        g.setOnClickListener( (View$OnClickListener) new g( this ) );
        HPayWebView.a = 0;
        Intent4 = getIntent();
label_152:
        {
            if( Intent4 != null )
            {
                Bundle Bundle6 = Intent4.getExtras();

                if( Bundle6 != null )
                {
                    h = (HPaySMS) Bundle6.getSerializable( "hpaysms" );
                    if( h != null )
                    {
                        if( h.mSdkFeeType == 16 )
                            String5 = h.mOpenUrl;
                        else
                            String5 = h.mFeeUrl;
                        break label_152;
                    }
                }
            }
            String5 = "";
        }
        if( b != null )
            b.a( this, j, h, i, a, k );
        b.clearHistory();
        b.loadUrl( String5 );
        com.clilystudio.netbook.hpay100.config.b.a( (com.clilystudio.netbook.hpay100.config.j) new h( this ) );
    }

    protected void onDestroy()
    {
        super.onDestroy();
        a = null;
        i = "";
        com.clilystudio.netbook.hpay100.config.b.a( null );
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
    }
}
