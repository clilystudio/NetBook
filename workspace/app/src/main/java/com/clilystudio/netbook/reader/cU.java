package com.clilystudio.netbook.reader;

import android.view.View;

final class cU implements View.OnClickListener {
    private /* synthetic */ SettingWidget a;

    cU(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onClick(View view) {
        SettingWidget.b(this.a).e();
        SettingWidget.a(this.a);
    }
}
