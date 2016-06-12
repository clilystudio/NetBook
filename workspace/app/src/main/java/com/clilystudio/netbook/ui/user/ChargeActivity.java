
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.clilystudio.netbook.adapter.x;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.widget.ScrollGridView;
import java.io.Serializable;

public class ChargeActivity extends BaseLoadingActivity {

    private ChargeType a;
    private x b;
    private String e;
    private com.clilystudio.netbook.pay.a.a f;
    private com.clilystudio.netbook.pay.weixin.a g;
    private com.clilystudio.netbook.pay.b.a h;
    private boolean c = false;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, ChargeType ChargeType2)
    {
    }

    static void a(ChargeActivity ChargeActivity1)
    {
        if( "alipay".equals( ChargeActivity1.a.getType() ) && ChargeActivity1.f == null )
            ChargeActivity1.f = new com.clilystudio.netbook.pay.a.a( (Context) ChargeActivity1 );
        else if( "weixinpay".equals( ChargeActivity1.a.getType() ) && ChargeActivity1.g == null )
        {
            ChargeActivity1.g = new com.clilystudio.netbook.pay.weixin.a( (Context) ChargeActivity1 );
            return;
        }
        else if( "youyifupay".equals( ChargeActivity1.a.getType() ) && ChargeActivity1.h == null )
        {
            ChargeActivity1.h = new com.clilystudio.netbook.pay.b.a( (Context) ChargeActivity1 );
            return;
        }
    }

    static x b(ChargeActivity ChargeActivity1)
    {
        return ChargeActivity1.b;
    }

    static String c(ChargeActivity ChargeActivity1)
    {
        return ChargeActivity1.e;
    }

    public final void a(ChargePlan ChargePlan1)
    {
        if( !c )
        {
            c = true;
            if( "alipay".equals( a.getType() ) )
            {
                if( f == null )
                    f = new com.clilystudio.netbook.pay.a.a( (Context) this );
                f.a( ChargePlan1 );
            }
            else if( "weixinpay".equals( a.getType() ) )
            {
                if( g == null )
                    g = new com.clilystudio.netbook.pay.weixin.a( (Context) this );
                g.a( ChargePlan1 );
            }
            else if( "youyifupay".equals( a.getType() ) )
            {
                if( h == null )
                    h = new com.clilystudio.netbook.pay.b.a( (Context) this );
                h.a( ChargePlan1 );
            }
            com.clilystudio.netbook.umeng.a.b.a( (Context) this, "charge_money_click", ChargePlan1.getPriceDsc() );
        }
    }

    protected final void b()
    {
        i();
        new j( this, (byte) 0 ).b( new Void[0] );
    }

    protected void onCreate(Bundle Bundle1)
    {
        TextView TextView2;
        TextView TextView3;
        TextView TextView4;
        View View5;

        super.onCreate( Bundle1 );
        a( 2130903118 );
        com.clilystudio.netbook.event.i.a().a( this );
        b = new x( (Activity) this, LayoutInflater.from( (Context) this ) );
        ((ScrollGridView) findViewById( 2131493151 )).setAdapter( (ListAdapter) b );
        a = (ChargeType) getIntent().getSerializableExtra( "key_pay_type" );
        if( a != null )
        {
            String String10 = a.getType();
            String String12;

            if( "alipay".equals( String10 ) )
                String12 = "\u652F\u4ED8\u5B9D";
            else if( "weixinpay".equals( String10 ) )
                String12 = "\u5FAE\u4FE1\u652F\u4ED8";
            else
            {
                boolean boolean11 = "youyifupay".equals( String10 );

                String12 = null;
                if( boolean11 )
                    String12 = "\u77ED\u4FE1\u652F\u4ED8";
            }
            a( String12, 2131034362, (aa) new g( this ) );
            b.a( a.getPlan() );
        }
        else
            b();
        TextView2 = (TextView) findViewById( 2131493152 );
        TextView3 = (TextView) findViewById( 2131493153 );
        TextView4 = (TextView) findViewById( 2131493155 );
        View5 = findViewById( 2131493154 );
        if( a.getType().equals( "youyifupay" ) )
        {
            String String8 = getString( 2131034346 );
            Object[] Object_1darray9 = new Object[1];

            Object_1darray9[0] = Integer.valueOf( 50 );
            TextView2.setText( (CharSequence) String.format( String8, Object_1darray9 ) );
            TextView3.setText( 2131034347 );
            TextView4.setText( (CharSequence) getString( 2131034348 ) );
        }
        else
        {
            String String6 = getString( 2131034345 );
            Object[] Object_1darray7 = new Object[1];

            Object_1darray7[0] = Integer.valueOf( 100 );
            TextView2.setText( (CharSequence) String.format( String6, Object_1darray7 ) );
            TextView3.setText( (CharSequence) getString( 2131034348 ) );
            View5.setVisibility( 8 );
        }
    }

    protected void onDestroy()
    {
        com.clilystudio.netbook.event.i.a().b( this );
        super.onDestroy();
    }

    public void onPayFinish(y y1)
    {
        c = false;
        if( y1.a() )
            finish();
        else if( e != null )
        {
            new i( this, (byte) 0 ).b( new Void[0] );
            return;
        }
    }

    public void onPayStart(z z1)
    {
        e = z1.a();
    }

    public void onResume()
    {
        super.onResume();
        c = false;
        new Handler().postDelayed( (Runnable) new h( this ), 1000L );
    }
}
