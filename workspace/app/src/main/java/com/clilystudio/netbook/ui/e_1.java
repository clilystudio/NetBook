
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class e implements DialogInterface$OnClickListener {

    e(AdWebViewActivity AdWebViewActivity1, String String2)
    {
        b = AdWebViewActivity1;
        a = String2;
    }

    private String a;
    private AdWebViewActivity b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        String String3;

        com.clilystudio.netbook.util.e.a( (Activity) b, "\u5F00\u59CB\u4E0B\u8F7D" );
        String3 = com.clilystudio.netbook.hpay100.a.a.N( a );
        AdWebViewActivity.a( b, a, String3 );
    }
}
