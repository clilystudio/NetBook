package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;

public class SettingCheckBox extends SwitchCompat {
    private final String a;
    private final boolean b;

    public SettingCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.SettingCheckBox);
        this.a = typedArray.getString(0);
        this.b = typedArray.getBoolean(1, false);
        typedArray.recycle();
    }

    static /* synthetic */ String a(SettingCheckBox settingCheckBox) {
        return settingCheckBox.a;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setChecked(a.a(this.getContext(), this.a, this.b));
        this.setOnCheckedChangeListener(new az(this));
    }
}
