
package com.clilystudio.netbook.ui;

import android.view.View$OnClickListener;
import android.widget.TextView;

final class A implements Runnable {

    A(AudiobookInfoActivity AudiobookInfoActivity1, TextView TextView2)
    {
        b = AudiobookInfoActivity1;
        a = TextView2;
    }

    TextView a;     // final access specifier removed
    AudiobookInfoActivity b;     // final access specifier removed

    public final void run()
    {
        if( a.getLineCount() > 4 )
        {
            a.setMaxLines( 4 );
            a.setOnClickListener( (View$OnClickListener) new B( this ) );
        }
    }
}
