package com.clilystudio.app.netbook.widget;

import android.widget.CompoundButton;

import com.arcsoft.hpay100.a.a;

final class az
        implements CompoundButton.OnCheckedChangeListener {
    az(SettingCheckBox paramSettingCheckBox) {
    }

    public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
        a.b(this.a.getContext(), SettingCheckBox.a(this.a), paramBoolean);
        if (paramBoolean) {
            paramCompoundButton.setContentDescription("已开启");
            return;
        }
        paramCompoundButton.setContentDescription("已关闭");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.az
 * JD-Core Version:    0.6.2
 */