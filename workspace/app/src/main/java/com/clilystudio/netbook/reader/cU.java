package com.clilystudio.netbook.reader;

import android.view.View;

final class cU
        implements View.OnClickListener {
    cU(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.b(this.a).e();
        SettingWidget.a(this.a);
    }
}

