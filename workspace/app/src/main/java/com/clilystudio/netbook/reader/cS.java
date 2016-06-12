
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class cS implements View$OnClickListener {

    cS(SettingWidget SettingWidget1, dc dc2)
    {
        b = SettingWidget1;
        a = dc2;
    }

    private dc a;
    private SettingWidget b;

    public final void onClick(View View1)
    {
        com.clilystudio.netbook.umeng.a.b.a( b.getContext(), "auto_read_start" );
        com.clilystudio.netbook.hpay100.a.a.D( b.getContext() );
        a.a();
    }
}
