
package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.hpay100.config.HPaySMS;

final class g implements View$OnClickListener {

    g(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onClick(View View1)
    {
        if( HPaySdkActivity.o( a ) != null )
        {
            HPaySdkActivity.a( a, "\u652F\u4ED8\u8FDB\u884C\u4E2D,\u8BF7\u60A8\u8010\u5FC3\u7B49\u5F85" );
            HPaySdkActivity.a( a, HPaySdkActivity.o( a ), 2 );
        }
    }
}
