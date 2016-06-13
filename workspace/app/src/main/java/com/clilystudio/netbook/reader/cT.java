package com.clilystudio.netbook.reader;

import android.view.View;

final class cT
        implements View.OnClickListener {
    private /* synthetic */ SettingWidget a;

    cT(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onClick(View view) {
        SettingWidget.b(this.a).d();
        SettingWidget.a(this.a);
    }
}
