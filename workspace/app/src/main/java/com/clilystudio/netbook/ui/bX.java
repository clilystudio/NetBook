
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class bX implements CompoundButton$OnCheckedChangeListener {

    bX(SettingsActivity SettingsActivity1, SwitchCompat SwitchCompat2)
    {
        b = SettingsActivity1;
        a = SwitchCompat2;
    }

    private SwitchCompat a;
    private SettingsActivity b;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( (Context) b, "save_bandwidth", boolean2 );
        SettingsActivity.a( b, (View) a, boolean2 );
    }
}
