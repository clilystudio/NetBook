
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.p;
import com.clilystudio.netbook.widget.PaySectionItem;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class PayAccountActivity extends BaseActivity implements View$OnClickListener {

    private String a;
    private PaySectionItem b;
    private PaySectionItem c;
    private String e;
    private TextView f;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }

    static String a(PayAccountActivity PayAccountActivity1)
    {
        return PayAccountActivity1.a;
    }

    static PaySectionItem b(PayAccountActivity PayAccountActivity1)
    {
        return PayAccountActivity1.b;
    }

    static PaySectionItem c(PayAccountActivity PayAccountActivity1)
    {
        return PayAccountActivity1.c;
    }

    static TextView d(PayAccountActivity PayAccountActivity1)
    {
        return PayAccountActivity1.f;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onClick(View View1)
    {
    }

    protected void onCreate(Bundle Bundle1)
    {
        PaySectionItem PaySectionItem2;
        PaySectionItem PaySectionItem3;
        PaySectionItem PaySectionItem4;
        TextView TextView5;
        I I6;
        String[] String_1darray7;
        J J9;
        String[] String_1darray10;

        super.onCreate( Bundle1 );
        i.a().a( this );
        setContentView( 2130903329 );
        b( "\u6211\u7684\u8D26\u6237" );
        b = (PaySectionItem) findViewById( 2131493802 );
        c = (PaySectionItem) findViewById( 2131493803 );
        PaySectionItem2 = (PaySectionItem) findViewById( 2131493804 );
        PaySectionItem3 = (PaySectionItem) findViewById( 2131493805 );
        PaySectionItem4 = (PaySectionItem) findViewById( 2131493807 );
        TextView5 = (TextView) findViewById( 2131493806 );
        if( com.clilystudio.netbook.hpay100.a.a.y( (Context) this ) )
        {
            TextView5.setVisibility( 0 );
            PaySectionItem4.setVisibility( 0 );
        }
        b.setBalanceDefault();
        c.setBalanceDefault();
        b.b().setOnClickListener( this );
        c.setOnClickListener( this );
        PaySectionItem2.setOnClickListener( this );
        PaySectionItem3.setOnClickListener( this );
        PaySectionItem4.setOnClickListener( this );
        f = (TextView) PaySectionItem4.findViewById( 2131493481 );
        a = getIntent().getStringExtra( "key_token" );
        I6 = new I( this, (Activity) this );
        String_1darray7 = new String[1];
        String_1darray7[0] = a;
        I6.b( String_1darray7 );
        J9 = new J( this );
        String_1darray10 = new String[1];
        String_1darray10[0] = a;
        J9.b( String_1darray10 );
    }

    protected void onDestroy()
    {
        super.onDestroy();
        i.a().b( this );
    }

    public void onHideAdEvent(s s1)
    {
        if( f != null && s1.a() != null )
        {
            SimpleDateFormat SimpleDateFormat2 = new SimpleDateFormat( "yyyy-MM-dd", Locale.CHINA );

            f.setText( (CharSequence) new StringBuilder( "\u622A\u6B62\u81F3" ).append( SimpleDateFormat2.format( s1.a() ) ).toString() );
            f.setVisibility( 0 );
        }
    }

    public void onPayFinish(com.clilystudio.netbook.event.y y1)
    {
        if( y1.a() )
        {
            H H2 = new H( this, (Activity) this, "\u6B63\u5728\u67E5\u8BE2\u652F\u4ED8\u7ED3\u679C..." );
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = e;
            H2.b( String_1darray3 );
        }
    }

    public void onPayStart(z z1)
    {
        e = z1.a();
    }
}
