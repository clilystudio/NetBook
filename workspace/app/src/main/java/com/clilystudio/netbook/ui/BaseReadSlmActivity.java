
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;

public class BaseReadSlmActivity extends SlidingFragmentActivity {

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setBehindContentView( getLayoutInflater().inflate( 2130903327, null ) );
    }

    public void onPause()
    {
        super.onPause();
        com.clilystudio.netbook.umeng.a.b.a( (Context) this );
    }

    public void onResume()
    {
        super.onResume();
        com.clilystudio.netbook.umeng.a.b.b( (Context) this );
    }
}
