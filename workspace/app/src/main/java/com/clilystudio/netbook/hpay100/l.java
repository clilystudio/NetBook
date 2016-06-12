
package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View$OnClickListener;

final class l implements View$OnClickListener {

    l(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onClick(View View1)
    {
        HPaySdkActivity.a( a, 5 );
    }
}
