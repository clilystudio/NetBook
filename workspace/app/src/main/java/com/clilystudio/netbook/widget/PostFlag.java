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
    TextView mDistillateFlag;
    TextView mHotFlag;

    public PostFlag(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.post_flags, (ViewGroup) this);
        this.mHotFlag = (TextView) findViewById(R.id.hot_flag);
        this.mDistillateFlag = (TextView) findViewById(R.id.distillate_flag);
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
            this.mHotFlag.setVisibility(View.VISIBLE);
            this.mDistillateFlag.setVisibility(View.GONE);
            return true;
        }
        if ("distillate".equals(string)) {
            this.mDistillateFlag.setVisibility(View.VISIBLE);
            this.mHotFlag.setVisibility(View.GONE);
            return true;
        }
        return false;
    }
}
