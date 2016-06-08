package com.clilystudio.netbook.ui;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bW
        implements CompoundButton.OnCheckedChangeListener {
    bW(SettingsActivity paramSettingsActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "update_notice_key", paramBoolean);
        SettingsActivity.a(this.b, paramBoolean);
        SettingsActivity.a(this.b, this.a, paramBoolean);
    }
}

