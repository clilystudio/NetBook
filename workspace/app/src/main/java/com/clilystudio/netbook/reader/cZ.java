package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cZ implements View$OnClickListener {

    private SettingWidget a;

    cZ(SettingWidget SettingWidget1) {
        a = SettingWidget1;
    }

    public final void onClick(View View1) {
        SettingWidget.d(a).setSelected(false);
        SettingWidget.e(a).setSelected(false);
        SettingWidget.f(a).setSelected(true);
        SettingWidget.b(a).a(3);
        SettingWidget.g(a).a();
    }
}
