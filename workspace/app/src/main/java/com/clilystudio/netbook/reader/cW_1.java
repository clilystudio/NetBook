package com.clilystudio.netbook.reader;

import android.widget.CompoundButton;

final class cW
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SettingWidget a;

    cW(SettingWidget settingWidget) {
        this.a = settingWidget;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        SettingWidget.b(this.a).b(bl);
    }
}
