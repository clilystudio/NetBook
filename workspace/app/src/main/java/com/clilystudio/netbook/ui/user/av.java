
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;

final class av extends Handler {

    av(SmsVerifyActivity SmsVerifyActivity1)
    {
        a = SmsVerifyActivity1;
    }

    private SmsVerifyActivity a;

    public final void handleMessage(Message Message1)
    {
        switch( Message1.what )
        {
            default:
                return;
            case 1:
                SmsVerifyActivity.a( a, Message1.arg1 );
                return;
        }
    }
}
