package com.clilystudio.netbook.reader;

import android.view.View;

final class cY
        implements View.OnClickListener {
    cY(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.d(this.a).setSelected(false);
        SettingWidget.e(this.a).setSelected(true);
        SettingWidget.f(this.a).setSelected(false);
        SettingWidget.b(this.a).a(2);
        SettingWidget.g(this.a).a();
    }
}

