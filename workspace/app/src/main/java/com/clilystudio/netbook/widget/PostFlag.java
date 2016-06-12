package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

import butterknife.ButterKnife;

public class PostFlag extends FrameLayout {

    TextView mDistillateFlag;
    TextView mHotFlag;
    public PostFlag(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        LayoutInflater.from(Context1).inflate(2130903351, (ViewGroup) this);
        ButterKnife.inject((View) this);
    }

    public static boolean b(String String1) {
        String[] String_1darray2 = {"distillate", "focus", "hot"};
        int int3 = 0;

        while (int3 < 3) {
            if (String_1darray2[int3].equals(String1))
                return true;
            else
                ++int3;
        }
        return false;
    }

    public final boolean a(String String1) {
        if ("hot".equals(String1) || "focus".equals(String1)) {
            mHotFlag.setVisibility(0);
            mDistillateFlag.setVisibility(8);
        } else {
            if (!"distillate".equals(String1))
                return false;
            mDistillateFlag.setVisibility(0);
            mHotFlag.setVisibility(8);
        }
        return true;
    }
}
