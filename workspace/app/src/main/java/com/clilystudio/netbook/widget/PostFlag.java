package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PostFlag extends FrameLayout {
    @InjectView(value = 2131493423)
    TextView mDistillateFlag;
    @InjectView(value = 2131493180)
    TextView mHotFlag;

    public PostFlag(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(2130903351, (ViewGroup) this);
        ButterKnife.inject(this);
    }

    public static boolean b(String string) {
        String[] arrstring = new String[]{"distillate", "focus", "hot"};
        for (int i = 0; i < 3; ++i) {
            if (!arrstring[i].equals(string)) continue;
            return true;
        }
        return false;
    }

    public final boolean a(String string) {
        if ("hot".equals(string) || "focus".equals(string)) {
            this.mHotFlag.setVisibility(0);
            this.mDistillateFlag.setVisibility(8);
            return true;
        }
        if ("distillate".equals(string)) {
            this.mDistillateFlag.setVisibility(0);
            this.mHotFlag.setVisibility(8);
            return true;
        }
        return false;
    }
}
