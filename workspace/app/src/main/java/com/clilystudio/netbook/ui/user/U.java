
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.ImageView;
import com.clilystudio.netbook.model.PayConsumeRecord$Order;

final class U implements Runnable {

    U(T T1)
    {
        a = T1;
    }

    private T a;

    public final void run()
    {
        S.a( a.e, a.b, (View) a.c, a.d, a.a );
    }
}
