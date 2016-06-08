package com.clilystudio.netbook.reader;

import android.widget.CompoundButton;

final class cW
        implements CompoundButton.OnCheckedChangeListener {
    cW(SettingWidget paramSettingWidget) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        SettingWidget.b(this.a).b(paramBoolean);
    }
}

