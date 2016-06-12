
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;
import com.alipay.sdk.b.b;

final class d implements Runnable {

    d(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void run()
    {
        Toast.makeText( a, b.e( a ), 0 ).show();
    }
}
