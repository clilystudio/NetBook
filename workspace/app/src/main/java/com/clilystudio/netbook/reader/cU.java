package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cU implements View$OnClickListener {

    private SettingWidget a;

    cU(SettingWidget SettingWidget1) {
        a = SettingWidget1;
    }

    public final void onClick(View View1) {
        SettingWidget.b(a).e();
        SettingWidget.a(a);
    }
}
