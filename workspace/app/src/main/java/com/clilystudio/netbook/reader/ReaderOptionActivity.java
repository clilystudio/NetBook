
package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.widget.SettingItem;
import uk.me.lewisdeane.ldialogs.h;

public class ReaderOptionActivity extends BaseActivity {

    private TextView b;
    private String[] c;
    private int[] e;
    private int a = 0;

    static int a(ReaderOptionActivity ReaderOptionActivity1, int int2)
    {
        ReaderOptionActivity1.a = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1)
    {
    }

    static void a(ReaderOptionActivity ReaderOptionActivity1)
    {
        int int2 = 0;
        h h3 = new h( (Context) ReaderOptionActivity1 );
        int[] int_1darray4 = { 2131493977, 2131493978, 2131493979, 2131493980 };
        View View5 = ReaderOptionActivity1.getLayoutInflater().inflate( 2130903385, null, false );
        AlertDialog AlertDialog6 = h3.a( 2131034438 ).a( View5 ).b( "\u53D6\u6D88", null ).a();

        ((RadioGroup) View5.findViewById( 2131493976 )).check( int_1darray4[ReaderOptionActivity1.a] );
        while( int2 < 4 )
        {
            ((RadioButton) View5.findViewById( int_1darray4[int2] )).setOnClickListener( (View$OnClickListener) new bP( ReaderOptionActivity1, AlertDialog6, int2 ) );
            ++int2;
        }
        AlertDialog6.show();
    }

    static void a(ReaderOptionActivity ReaderOptionActivity1, View View2, boolean boolean3)
    {
        if( boolean3 )
            View2.setContentDescription( (CharSequence) "\u5DF2\u5F00\u542F" );
        else
            View2.setContentDescription( (CharSequence) "\u5DF2\u5173\u95ED" );
    }

    static int b(ReaderOptionActivity ReaderOptionActivity1)
    {
        return ReaderOptionActivity1.a;
    }

    static String[] c(ReaderOptionActivity ReaderOptionActivity1)
    {
        return ReaderOptionActivity1.c;
    }

    static TextView d(ReaderOptionActivity ReaderOptionActivity1)
    {
        return ReaderOptionActivity1.b;
    }

    static int[] e(ReaderOptionActivity ReaderOptionActivity1)
    {
        return ReaderOptionActivity1.e;
    }

    public void onCreate(Bundle Bundle1)
    {
        SwitchCompat SwitchCompat2;
        SwitchCompat SwitchCompat3;
        SwitchCompat SwitchCompat4;
        SwitchCompat SwitchCompat5;
        SwitchCompat SwitchCompat6;
        View View7;
        boolean boolean8;
        boolean boolean9;
        boolean boolean10;
        boolean boolean11;
        boolean boolean12;
        int int13;
        int int14;
        SettingItem SettingItem15;

        super.onCreate( Bundle1 );
        setContentView( 2130903366 );
        b( 2131034461 );
        if( com.clilystudio.netbook.hpay100.a.a.l( (Context) this, "reader_orientation" ) )
            setRequestedOrientation( 1 );
        else
            setRequestedOrientation( 0 );
        SwitchCompat2 = (SwitchCompat) findViewById( 2131493896 );
        SwitchCompat3 = (SwitchCompat) findViewById( 2131493898 );
        SwitchCompat4 = (SwitchCompat) findViewById( 2131493899 );
        SwitchCompat5 = (SwitchCompat) findViewById( 2131493903 );
        SwitchCompat6 = (SwitchCompat) findViewById( 2131493906 );
        View7 = findViewById( 2131493904 );
        b = (TextView) findViewById( 2131493905 );
        c = getResources().getStringArray( 2131361803 );
        e = getResources().getIntArray( 2131361804 );
        boolean8 = com.clilystudio.netbook.hpay100.a.a.l( (Context) this, "volume_keys_flip" );
        boolean9 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "click_flip_animation", false );
        boolean10 = com.clilystudio.netbook.hpay100.a.a.l( (Context) this, "reader_opt_full_screen" );
        boolean11 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "convert_t", false );
        boolean12 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, new StringBuilder( "auto_buy_chapter" ).append( I.a ).toString(), false );
        SwitchCompat2.setChecked( boolean8 );
        SwitchCompat3.setChecked( boolean9 );
        SwitchCompat4.setChecked( boolean10 );
        SwitchCompat5.setChecked( boolean11 );
        SwitchCompat6.setChecked( boolean12 );
        int13 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "reader_screen_off_time", 120000 );
        int14 = 0;
        while( int14 < c.length )
        {
            if( int13 == e[int14] )
            {
                a = int14;
                b.setText( (CharSequence) c[int14] );
                break;
            }
            else
                ++int14;
        }
        SwitchCompat2.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bI( this, SwitchCompat2 ) );
        SwitchCompat3.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bJ( this, SwitchCompat3 ) );
        SwitchCompat4.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bK( this, SwitchCompat4 ) );
        SwitchCompat5.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bL( this, SwitchCompat5 ) );
        View7.setOnClickListener( (View$OnClickListener) new bM( this ) );
        SwitchCompat6.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new bN( this, SwitchCompat6 ) );
        SettingItem15 = (SettingItem) findViewById( 2131493901 );
        if( bH.a( (Context) this ) )
        {
            SettingItem15.setVisibility( 8 );
            findViewById( 2131493900 ).setVisibility( 8 );
        }
        else
        {
            SettingItem15.setChecked( com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "key_enable_imersive_mode", false ) );
            SettingItem15.setCheckListener( (CompoundButton$OnCheckedChangeListener) new bO( this ) );
        }
    }
}
