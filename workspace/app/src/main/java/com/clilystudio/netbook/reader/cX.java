package com.clilystudio.netbook.reader;

import android.view.View;

final class cX
        implements View.OnClickListener {
    private /* synthetic */ SettingWidget a;

    cX(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onClick(View view) {
        SettingWidget.d(this.a).setSelected(true);
        SettingWidget.e(this.a).setSelected(false);
        SettingWidget.f(this.a).setSelected(false);
        SettingWidget.b(this.a).a(1);
        SettingWidget.g(this.a).a();
    }
}
