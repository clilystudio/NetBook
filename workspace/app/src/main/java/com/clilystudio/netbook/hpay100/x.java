
package com.clilystudio.netbook.hpay100;

import android.os.CountDownTimer;
import android.widget.Button;

final class x extends CountDownTimer {

    public x(HPaySdkActivity HPaySdkActivity1, long long2, long long4)
    {
        super( 60000L, 1000L );
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onFinish()
    {
        HPaySdkActivity.a( a ).setEnabled( true );
        HPaySdkActivity.a( a ).setText( (CharSequence) "\u91CD\u65B0\u53D1\u9001" );
    }

    public final void onTick(long long1)
    {
        HPaySdkActivity.a( a ).setEnabled( false );
        HPaySdkActivity.a( a ).setText( (CharSequence) new StringBuilder( "\u91CD\u65B0\u53D1\u9001(" ).append( long1 / 1000L ).append( ")" ).toString() );
    }
}
