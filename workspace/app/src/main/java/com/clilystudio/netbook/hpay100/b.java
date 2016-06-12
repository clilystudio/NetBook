
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.app.Dialog;
import android.support.design.widget.K;
import com.clilystudio.netbook.hpay100.c.c;

final class b implements Runnable {

    b(Activity Activity1, String String2)
    {
        a = Activity1;
        b = String2;
    }

    private Activity a;     // final access specifier removed
    private String b;     // final access specifier removed

    public final void run()
    {
        try
        {
            a.a( a );
            a.a( c.a( a, b, false, null ) );
            if( a.a() != null )
                a.a().show();
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
