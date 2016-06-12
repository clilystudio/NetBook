
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cT implements View$OnClickListener {

    cT(SettingWidget SettingWidget1)
    {
        a = SettingWidget1;
    }

    private SettingWidget a;

    public final void onClick(View View1)
    {
        SettingWidget.b( a ).d();
        SettingWidget.a( a );
    }
}
