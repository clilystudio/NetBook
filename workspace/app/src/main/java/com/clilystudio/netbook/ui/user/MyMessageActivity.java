
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import com.clilystudio.netbook.ui.BaseActivity;

public class MyMessageActivity extends BaseActivity {

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903115 );
        b( "\u6211\u7684\u6D88\u606F" );
    }

    public void onPause()
    {
        super.onPause();
        am.j( (Context) this );
    }
}
