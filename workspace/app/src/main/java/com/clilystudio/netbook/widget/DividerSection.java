package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;

public class DividerSection extends RelativeLayout {
    private final FrameLayout a;
    private final View b;
    private final Drawable c;

    public DividerSection(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new View(context);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.DividerSection);
        this.c = typedArray.getDrawable(R.styleable.DividerSection_divider_drawable);
        if (this.c != null) {
            this.b.setBackgroundDrawable(this.c);
        } else if (TempUtil.getBoolPref(this.getContext(), "customer_night_theme", false)) {
            this.b.setBackgroundResource(R.drawable.shelf_dark_divider);
        } else {
            this.b.setBackgroundResource(R.drawable.shelf_divider);
        }
        typedArray.recycle();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 1);
        layoutParams.addRule(12);
        this.b.setLayoutParams(layoutParams);
        this.addView(this.b);
        this.a = new FrameLayout(context);
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.addView(this.a);
        this.a.setVisibility(View.GONE);
    }

    public final FrameLayout a() {
        this.a.setVisibility(View.VISIBLE);
        return this.a;
    }

    public void setDividerMatchParent() {
        this.b.setBackgroundColor(this.getResources().getColor(R.color.list_divider));
    }
}
