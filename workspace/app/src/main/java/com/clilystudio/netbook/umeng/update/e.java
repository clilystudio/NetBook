
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class e implements Runnable {

    e(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void run()
    {
        Toast.makeText( a, (CharSequence) "Please set umeng appkey!", 1 ).show();
    }
}
