package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.widget.CompoundButton;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;

public class SettingCheckBox extends SwitchCompat {
    private final String a;
    private final boolean b;

    public SettingCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.SettingCheckBox);
        this.a = typedArray.getString(R.styleable.SettingCheckBox_pref_name);
        this.b = typedArray.getBoolean(R.styleable.SettingCheckBox_pref_default, false);
        typedArray.recycle();
    }

    static /* synthetic */ String a(SettingCheckBox settingCheckBox) {
        return settingCheckBox.a;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setChecked(TempUtil.getBoolPref(this.getContext(), this.a, this.b));
        this.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                TempUtil.putBoolPref(getContext(), SettingCheckBox.a(SettingCheckBox.this), isChecked);
                if (isChecked) {
                    buttonView.setContentDescription("已开启");
                } else {
                    buttonView.setContentDescription("已关闭");
                }
            }
        });
    }
}
