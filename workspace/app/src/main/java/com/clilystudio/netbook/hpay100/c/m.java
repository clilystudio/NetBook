
package com.clilystudio.netbook.hpay100.c;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;

final class m implements Runnable {

    m(Activity Activity1, String String2, int int3)
    {
        a = Activity1;
        b = String2;
        c = int3;
    }

    private Activity a;     // final access specifier removed
    private String b;     // final access specifier removed
    private int c;     // final access specifier removed

    public final void run()
    {
        Toast.makeText( (Context) a, (CharSequence) b, c ).show();
    }
}
