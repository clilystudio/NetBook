
package com.clilystudio.netbook.hpay100.web;

import android.view.View;
import android.view.View$OnClickListener;

final class g implements View$OnClickListener {

    g(HPayWebActivity HPayWebActivity1)
    {
        a = HPayWebActivity1;
    }

    private HPayWebActivity a;

    public final void onClick(View View1)
    {
        if( HPayWebActivity.e( a ) != null )
        {
            HPayWebActivity.e( a ).stopLoading();
            HPayWebActivity.e( a ).reload();
        }
    }
}
