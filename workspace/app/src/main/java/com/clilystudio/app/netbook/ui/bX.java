package com.clilystudio.app.netbook.ui;

import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class bX
        implements CompoundButton.OnCheckedChangeListener {
    bX(SettingsActivity paramSettingsActivity, SwitchCompat paramSwitchCompat) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.b, "save_bandwidth", paramBoolean);
        SettingsActivity.a_initContentView(this.b, this.a, paramBoolean);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bX
 * JD-Core Version:    0.6.2
 */