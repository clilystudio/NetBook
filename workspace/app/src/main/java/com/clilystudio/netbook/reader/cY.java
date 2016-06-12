package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cY implements View$OnClickListener {

    private SettingWidget a;

    cY(SettingWidget SettingWidget1) {
        a = SettingWidget1;
    }

    public final void onClick(View View1) {
        SettingWidget.d(a).setSelected(false);
        SettingWidget.e(a).setSelected(true);
        SettingWidget.f(a).setSelected(false);
        SettingWidget.b(a).a(2);
        SettingWidget.g(a).a();
    }
}
