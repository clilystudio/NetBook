package com.clilystudio.netbook.widget;

import android.widget.CompoundButton;

final class az
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SettingCheckBox a;

    az(SettingCheckBox settingCheckBox) {
        this.a = settingCheckBox;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b(this.a.getContext(), SettingCheckBox.a(this.a), bl);
        if (bl) {
            compoundButton.setContentDescription("\u5df2\u5f00\u542f");
            return;
        }
        compoundButton.setContentDescription("\u5df2\u5173\u95ed");
    }
}
