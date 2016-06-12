package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cX implements View$OnClickListener {

    private SettingWidget a;

    cX(SettingWidget SettingWidget1) {
        a = SettingWidget1;
    }

    public final void onClick(View View1) {
        SettingWidget.d(a).setSelected(true);
        SettingWidget.e(a).setSelected(false);
        SettingWidget.f(a).setSelected(false);
        SettingWidget.b(a).a(1);
        SettingWidget.g(a).a();
    }
}
