
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class B implements View$OnClickListener {

    B(A A1)
    {
        a = A1;
    }

    private A a;

    public final void onClick(View View1)
    {
        if( AudiobookInfoActivity.b( a.b ) )
        {
            a.a.setMaxLines( 4 );
            AudiobookInfoActivity.a( a.b, false );
        }
        else
        {
            a.a.setMaxLines( 2147483647 );
            AudiobookInfoActivity.a( a.b, true );
        }
    }
}
