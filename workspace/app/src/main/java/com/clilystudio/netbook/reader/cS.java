package com.clilystudio.netbook.reader;

import android.view.View;

final class cS
        implements View.OnClickListener {
    private /* synthetic */ dc a;
    private /* synthetic */ SettingWidget b;

    cS(SettingWidget settingWidget, dc dc2) {
        this.b = settingWidget;
        this.a = dc2;
    }

    @Override
    public final void onClick(View view) {
        b.a(this.b.getContext(), "auto_read_start");
        a.D(this.b.getContext());
        this.a.a();
    }
}
