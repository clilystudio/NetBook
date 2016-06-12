
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v7.app.j;
import android.support.v7.app.k;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import uk.me.lewisdeane.ldialogs.h;

public class SettingsActivity extends BaseActivity implements View$OnClickListener {

    private int a;

    private static void a(View View1, boolean boolean2)
    {
        if( boolean2 )
            View1.setContentDescription( (CharSequence) "\u5DF2\u5F00\u542F" );
        else
            View1.setContentDescription( (CharSequence) "\u5DF2\u5173\u95ED" );
    }

    static void a(SettingsActivity SettingsActivity1)
    {
        h h2 = new h( (Context) SettingsActivity1 );

        h2.a( 2131034580 );
        h2.b( 2131034581 );
        h2.b( 2131034129, null );
        h2.a( 2131034579, (DialogInterface$OnClickListener) new bZ( SettingsActivity1 ) );
        h2.a().show();
    }

    static void a(SettingsActivity SettingsActivity1, int int2, String String3)
    {
        if( SettingsActivity1.a != int2 )
        {
            SettingsActivity1.a = int2;
            com.clilystudio.netbook.hpay100.a.a.b( (Context) SettingsActivity1, "key_shelf_sort", SettingsActivity1.a );
            ((TextView) SettingsActivity1.findViewById( 2131493198 )).setText( (CharSequence) String3 );
            i.a().c( new com.clilystudio.netbook.event.g() );
        }
    }

    static void a(SettingsActivity SettingsActivity1, View View2, boolean boolean3)
    {
        a( View2, boolean3 );
    }

    static void a(SettingsActivity SettingsActivity1, boolean boolean2)
    {
        if( boolean2 )
            com.xiaomi.mipush.sdk.d.a( SettingsActivity1.getApplicationContext(), "2882303761517133731", "5941713373731" );
        else
            com.xiaomi.mipush.sdk.d.e( SettingsActivity1.getApplicationContext() );
    }

    static void b(SettingsActivity SettingsActivity1)
    {
        Object Object2 = am.n( (Context) SettingsActivity1 );

        if( !android.text.TextUtils.isEmpty( (CharSequence) Object2 ) )
        {
            k k3 = new k( (Context) SettingsActivity1 );

            k3.b( (CharSequence) Object2 );
            k3.a( (CharSequence) "OK", null );
            k3.c();
        }
    }

    static void c(SettingsActivity SettingsActivity1)
    {
        com.clilystudio.netbook.util.e.a( (Activity) SettingsActivity1, "\u5DF2\u767B\u51FA" );
        new Thread( (Runnable) new ca( SettingsActivity1, am.e().getToken() ) ).start();
        MyApplication.a().a( new String[] { "account.token", "user.id", "user.name", "user.avatar", "user.lv", "user.gender" } );
        com.clilystudio.netbook.hpay100.a.a.e( (Context) SettingsActivity1, "pref_new_unimp_notif_time", "0" );
        com.clilystudio.netbook.hpay100.a.a.e( (Context) SettingsActivity1, "pref_new_imp_notif_time", "0" );
        com.clilystudio.netbook.hpay100.a.a.b( (Context) SettingsActivity1, "remove_ad_duration", 0L );
        SettingsActivity1.finish();
        i.a().c( new u() );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onClick(View View1)
    {
    }

    public void onCreate(Bundle Bundle1)
    {
        TextView TextView2;
        StringBuilder StringBuilder3;
        String String4;
        String String5;
        boolean boolean6;
        boolean boolean7;
        Object Object8;
        Object Object9;
        Object Object10;

        super.onCreate( Bundle1 );
        setContentView( 2130903129 );
        if( getIntent().getBooleanExtra( "from_user_info", false ) )
            a( 2131034485, "\u9000\u51FA\u767B\u5F55", (aa) new bU( this ) );
        else
            b( 2131034485 );
        findViewById( 2131493197 ).setOnClickListener( this );
        findViewById( 2131493202 ).setOnClickListener( this );
        findViewById( 2131493205 ).setOnClickListener( this );
        findViewById( 2131493206 ).setOnClickListener( this );
        TextView2 = (TextView) findViewById( 2131493207 );
        StringBuilder3 = new StringBuilder().append( am.g( (Context) this ) ).append( "(" );
        String4 = (String) am.c( (Context) this, "COMMIT_ID" );
        if( String4 != null && String4.length() > 8 )
            String5 = String4.substring( 0, 8 );
        else
            String5 = null;
        TextView2.setText( (CharSequence) StringBuilder3.append( String5 ).append( ")" ).toString() );
        TextView2.setOnLongClickListener( (View$OnLongClickListener) new bV( this ) );
        boolean6 = com.clilystudio.netbook.hpay100.a.a.l( (Context) this, "update_notice_key" );
        boolean7 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "save_bandwidth", false );
        Object8 = (SwitchCompat) findViewById( 2131493200 );
        Object9 = (SwitchCompat) findViewById( 2131493201 );
        ((SwitchCompat) Object8).setChecked( boolean6 );
        a( (View) Object8, boolean6 );
        ((SwitchCompat) Object9).setChecked( boolean7 );
        a( (View) Object9, boolean7 );
        ((SwitchCompat) Object8).setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bW( this, (SwitchCompat) Object8 ) );
        ((SwitchCompat) Object9).setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bX( this, (SwitchCompat) Object9 ) );
        if( "1".equals( com.clilystudio.netbook.umeng.a.b.b( (Context) this, "enable_job" ) ) )
        {
            View View11 = findViewById( 2131493203 );

            View11.setVisibility( 0 );
            View11.setOnClickListener( this );
            findViewById( 2131493204 ).setVisibility( 0 );
        }
        a = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "key_shelf_sort", 1 );
        Object10 = getResources().getStringArray( 2131361805 )[a];
        ((TextView) findViewById( 2131493198 )).setText( (CharSequence) Object10 );
    }
}
