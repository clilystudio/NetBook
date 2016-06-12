
package com.clilystudio.netbook.reader;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class cW implements CompoundButton$OnCheckedChangeListener {

    cW(SettingWidget SettingWidget1)
    {
        a = SettingWidget1;
    }

    private SettingWidget a;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        SettingWidget.b( a ).b( boolean2 );
    }
}
