package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;

public class MenuGameTitle extends LinearLayout {

    TextView mSlmReaderAppName;
    TextView mSlmReaderAppSize;
    public MenuGameTitle(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        a(Context1);
        if (isInEditMode()) {
            setTitle("wefijwefijweifjwiefjwefiwjefi", "12312");
            setOrientation(1);
        }
    }

    public MenuGameTitle(Context Context1) {
        super(Context1);
        a(Context1);
    }

    static float a(MenuGameTitle MenuGameTitle1, int int2) {
        return MenuGameTitle1.getResources().getDisplayMetrics().density * (float) 3;
    }

    private void a(Context Context1) {
        LayoutInflater.from(Context1).inflate(2130903361, (ViewGroup) this);
        ButterKnife.inject((View) this);
    }

    public void setTitle(String String1, String String2) {
        String String3 = new StringBuilder("(").append(String2).append(")").toString();

        getViewTreeObserver().addOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener) new ai(this, String1, String3));
    }
}
