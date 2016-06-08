package com.clilystudio.netbook.reader;

import android.view.View;

final class cT
        implements View.OnClickListener {
    cT(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.b(this.a).d();
        SettingWidget.a(this.a);
    }
}

