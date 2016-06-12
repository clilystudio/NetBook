
package com.clilystudio.netbook.hpay100.web;

import android.view.View;
import android.view.View$OnClickListener;

final class f implements View$OnClickListener {

    f(HPayWebActivity HPayWebActivity1)
    {
        a = HPayWebActivity1;
    }

    private HPayWebActivity a;

    public final void onClick(View View1)
    {
        HPayWebActivity.d( a );
    }
}
