package com.clilystudio.netbook.reader;

import android.view.View;

final class cZ
        implements View.OnClickListener {
    cZ(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.d(this.a).setSelected(false);
        SettingWidget.e(this.a).setSelected(false);
        SettingWidget.f(this.a).setSelected(true);
        SettingWidget.b(this.a).a(3);
        SettingWidget.g(this.a).a();
    }
}

