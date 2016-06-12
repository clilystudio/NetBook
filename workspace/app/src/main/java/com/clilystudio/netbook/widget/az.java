
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class az implements CompoundButton$OnCheckedChangeListener {

    az(SettingCheckBox SettingCheckBox1)
    {
        a = SettingCheckBox1;
    }

    private SettingCheckBox a;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( a.getContext(), SettingCheckBox.a( a ), boolean2 );
        if( boolean2 )
            CompoundButton1.setContentDescription( (CharSequence) "\u5DF2\u5F00\u542F" );
        else
            CompoundButton1.setContentDescription( (CharSequence) "\u5DF2\u5173\u95ED" );
    }
}
