
package com.clilystudio.netbook.umeng.update;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.TextView;
import java.io.File;
import java.io.Serializable;

public class UpdateDialogActivity extends Activity {

    private UpdateResponse c;
    int a = 6;
    boolean b = false;
    private File d = null;

    protected void onCreate(Bundle Bundle1)
    {
        boolean boolean2 = true;
        String String4;
        boolean boolean5;
        int int6;
        int int7;
        int int8;
        int int9;
        int int10;
        int int11;
        int int12;
        Object Object13;
        Object Object14;
        Object Object15;
        TextView TextView16;

        super.onCreate( Bundle1 );
        requestWindowFeature( boolean2 );
        setContentView( u.a.c.a( (Context) this ).c( "umeng_update_dialog" ) );
        c = (UpdateResponse) getIntent().getExtras().getSerializable( "response" );
        String4 = getIntent().getExtras().getString( "file" );
        boolean5 = getIntent().getExtras().getBoolean( "force" );
        if( String4 == null )
            boolean2 = false;
        if( boolean2 )
            d = new File( String4 );
        int6 = u.a.c.a( (Context) this ).a( "umeng_update_content" );
        int7 = u.a.c.a( (Context) this ).a( "umeng_update_wifi_indicator" );
        int8 = u.a.c.a( (Context) this ).a( "umeng_update_id_ok" );
        int9 = u.a.c.a( (Context) this ).a( "umeng_update_id_cancel" );
        int10 = u.a.c.a( (Context) this ).a( "umeng_update_id_ignore" );
        int11 = u.a.c.a( (Context) this ).a( "umeng_update_id_close" );
        int12 = u.a.c.a( (Context) this ).a( "umeng_update_id_check" );
        Object13 = new l( this, int8, int10 );
        Object14 = new m( this );
        if( int7 > 0 )
        {
            int int18;

            if( u.a.a.c( (Context) this ) )
                int18 = 8;
            else
                int18 = 0;
            findViewById( int7 ).setVisibility( int18 );
        }
        if( boolean5 )
            findViewById( int12 ).setVisibility( 8 );
        findViewById( int8 ).setOnClickListener( (View$OnClickListener) Object13 );
        findViewById( int9 ).setOnClickListener( (View$OnClickListener) Object13 );
        findViewById( int10 ).setOnClickListener( (View$OnClickListener) Object13 );
        findViewById( int11 ).setOnClickListener( (View$OnClickListener) Object13 );
        ((CheckBox) findViewById( int12 )).setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) Object14 );
        Object15 = c.a( (Context) this, boolean2 );
        TextView16 = (TextView) findViewById( int6 );
        TextView16.requestFocus();
        TextView16.setText( (CharSequence) Object15 );
    }

    protected void onDestroy()
    {
        super.onDestroy();
        b.a( a, (Context) this, c, d );
    }
}
