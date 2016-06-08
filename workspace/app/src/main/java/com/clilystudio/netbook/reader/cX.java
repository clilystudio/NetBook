package com.clilystudio.netbook.reader;

import android.view.View;

final class cX
        implements View.OnClickListener {
    cX(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.d(this.a).setSelected(true);
        SettingWidget.e(this.a).setSelected(false);
        SettingWidget.f(this.a).setSelected(false);
        SettingWidget.b(this.a).a(1);
        SettingWidget.g(this.a).a();
    }
}

