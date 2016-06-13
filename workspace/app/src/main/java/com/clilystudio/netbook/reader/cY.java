package com.clilystudio.netbook.reader;

import android.view.View;

final class cY
        implements View.OnClickListener {
    private /* synthetic */ SettingWidget a;

    cY(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onClick(View view) {
        SettingWidget.d(this.a).setSelected(false);
        SettingWidget.e(this.a).setSelected(true);
        SettingWidget.f(this.a).setSelected(false);
        SettingWidget.b(this.a).a(2);
        SettingWidget.g(this.a).a();
    }
}
