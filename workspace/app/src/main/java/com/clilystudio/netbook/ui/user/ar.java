
package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class ar implements DialogInterface$OnClickListener {

    ar(SmsSendActivity SmsSendActivity1)
    {
        a = SmsSendActivity1;
    }

    private SmsSendActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        SmsSendActivity.e( a );
    }
}
