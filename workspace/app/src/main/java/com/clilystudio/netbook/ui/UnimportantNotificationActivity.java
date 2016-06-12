
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import com.clilystudio.netbook.util.J;

public class UnimportantNotificationActivity extends BaseActivity {

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903139 );
        b( "\u901A\u77E5" );
    }

    public void onPause()
    {
        super.onPause();
        J.a( (Context) this ).d();
    }
}
