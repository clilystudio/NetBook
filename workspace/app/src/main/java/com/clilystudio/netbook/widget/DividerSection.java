package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;

import com.clilystudio.netbook.R$styleable;

public class DividerSection extends RelativeLayout {

    private FrameLayout a;     // final access specifier removed
    private View b;     // final access specifier removed
    private Drawable c;     // final access specifier removed
    public DividerSection(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        Object Object4;
        TypedArray TypedArray3;

        b = new View(Context1);
        TypedArray3 = Context1.obtainStyledAttributes(AttributeSet2, R$styleable.DividerSection);
        c = TypedArray3.getDrawable(0);
        if (c != null)
            b.setBackgroundDrawable(c);
        else if (com.clilystudio.netbook.hpay100.a.a.a(getContext(), "customer_night_theme", false))
            b.setBackgroundResource(2130838147);
        else
            b.setBackgroundResource(2130838151);
        TypedArray3.recycle();
        Object4 = new RelativeLayout$LayoutParams(-1, 1);
        ((RelativeLayout$LayoutParams) Object4).addRule(12);
        b.setLayoutParams((ViewGroup$LayoutParams) Object4);
        addView(b);
        a = new FrameLayout(Context1);
        a.setLayoutParams((ViewGroup$LayoutParams) new RelativeLayout$LayoutParams(-1, -1));
        addView((View) a);
        a.setVisibility(8);
    }

    public final FrameLayout a() {
        a.setVisibility(0);
        return a;
    }

    public void setDividerMatchParent() {
        b.setBackgroundColor(getResources().getColor(2131427454));
    }
}
