
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ah;
import android.support.v7.widget.ao;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.D;

public class RemoveAdActivity extends BaseLoadingActivity {

    al a;
    private RecyclerView b;

    protected final void b()
    {
        i();
        new aj( this, (byte) 0 ).b( new Void[0] );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        a( 2130903125 );
        b( "\u514D\u5E7F\u544A" );
        b = (RecyclerView) findViewById( 2131493175 );
        b.setLayoutManager( (ao) new D( (Context) this ) );
        a = new al( this );
        b.setAdapter( (ah) a );
        com.clilystudio.netbook.event.i.a().a( this );
        b();
        if( com.clilystudio.netbook.hpay100.a.a.r( (Context) this, "switch_share_remove_ad" ) )
        {
            findViewById( 2131493176 ).setVisibility( 0 );
            findViewById( 2131493177 ).setVisibility( 0 );
            findViewById( 2131493179 ).setOnClickListener( (View$OnClickListener) new ai( this ) );
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }
}
