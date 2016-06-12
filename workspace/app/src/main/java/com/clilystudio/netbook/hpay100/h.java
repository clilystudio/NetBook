
package com.clilystudio.netbook.hpay100;

import android.app.Dialog;

final class h implements Runnable {

    h(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void run()
    {
        try
        {
            if( HPaySdkActivity.w( a ) != null && HPaySdkActivity.w( a ).isShowing() )
            {
                HPaySdkActivity.w( a ).dismiss();
                HPaySdkActivity.a( a, null );
            }
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return;
        }
    }
}
