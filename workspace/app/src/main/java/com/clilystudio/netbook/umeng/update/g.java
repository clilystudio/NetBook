
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.widget.Toast;

final class g implements Runnable {

    g(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void run()
    {
        Toast.makeText( a, (CharSequence) "Please add Service in AndroidManifest!", 1 ).show();
    }
}
