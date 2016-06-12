
package com.clilystudio.netbook.ui.feed;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedIntroActivity extends BaseActivity {

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903098 );
        b( 2131034381 );
        ((Button) findViewById( 2131493126 )).setOnClickListener( (View$OnClickListener) new d( this ) );
    }

    public void onPause()
    {
        super.onPause();
        a.b( (Context) this, "feed_intro", false );
    }
}
