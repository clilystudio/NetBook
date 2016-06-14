package com.clilystudio.netbook.ui;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

final class bW implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SwitchCompat a;
    private /* synthetic */ SettingsActivity b;

    bW(SettingsActivity settingsActivity, SwitchCompat switchCompat) {
        this.b = settingsActivity;
        this.a = switchCompat;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.b, "update_notice_key", bl);
        SettingsActivity.a(this.b, bl);
        SettingsActivity.a(this.b, this.a, bl);
    }
}
