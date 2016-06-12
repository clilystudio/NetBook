
package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;
import android.view.View;
import com.clilystudio.netbook.widget.av;

final class Q implements av {

    Q(PayConsumeActivity PayConsumeActivity1)
    {
        a = PayConsumeActivity1;
    }

    private PayConsumeActivity a;

    public final void a()
    {
        Z Z1;
        String[] String_1darray2;

        PayConsumeActivity.d( a ).setVisibility( 0 );
        Z1 = new Z( a, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = PayConsumeActivity.g( a );
        Z1.b( String_1darray2 );
    }
}
