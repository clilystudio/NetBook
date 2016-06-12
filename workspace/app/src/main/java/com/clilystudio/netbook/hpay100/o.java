
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.hpay100.config.l;

final class o implements View$OnClickListener {

    o(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onClick(View View1)
    {
        HPaySdkActivity.a( a, "\u6B63\u5728\u83B7\u53D6\u9A8C\u8BC1\u7801\uFF0C\u8BF7\u7A0D\u540E" );
        HPaySdkActivity.k( a ).setText( (CharSequence) "" );
        l.a( (Activity) a, HPaySdkActivity.e( a ), HPaySdkActivity.a(), HPaySdkActivity.f( a ), HPaySdkActivity.g( a ), HPaySdkActivity.i( a ), HPaySdkActivity.r( a ), HPaySdkActivity.s( a ), (com.clilystudio.netbook.hpay100.config.k) new v( a, 4 ) );
    }
}
