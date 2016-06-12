
package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import com.clilystudio.netbook.hpay100.config.j;

final class p implements View$OnClickListener {

    p(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onClick(View View1)
    {
        if( HPaySdkActivity.m( a ) )
            HPaySdkActivity.b( a, 5 );
        else
        {
            com.clilystudio.netbook.hpay100.config.b.a( null );
            HPaySdkActivity.a( a, true );
            HPaySdkActivity.t( a );
            HPaySdkActivity.p( a ).setEnabled( true );
            HPaySdkActivity.u( a );
        }
    }
}
