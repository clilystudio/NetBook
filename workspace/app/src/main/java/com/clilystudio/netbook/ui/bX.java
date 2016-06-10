package com.clilystudio.netbook.ui;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class bX
        implements CompoundButton.OnCheckedChangeListener {
    bX(SettingsActivity paramSettingsActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "save_bandwidth", paramBoolean);
        SettingsActivity.a(this.b, this.a, paramBoolean);
    }
}

