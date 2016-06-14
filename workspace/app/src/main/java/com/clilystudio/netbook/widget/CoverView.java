package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.R$styleable;
import com.clilystudio.netbook.ui.CornerImageView;

public class CoverView extends RelativeLayout {
    private final int b;
    private CornerImageView a;

    public CoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.CoverView);
        this.b = typedArray.getResourceId(0, 0);
        typedArray.getResourceId(1, 2130838144);
        typedArray.recycle();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = new CornerImageView(this.getContext());
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        FrameLayout frameLayout = new FrameLayout(this.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.a.setLayoutParams(layoutParams);
        if (this.b != 0) {
            this.a.setImageResource(this.b);
        }
        this.addView(this.a);
        this.addView(frameLayout);
    }

    public void setImageResource(int n) {
        this.a.setImageResource(n);
    }

    public void setImageUrl(String string) {
        this.a.setImageUrl(string);
    }

    public void setImageUrl(String string, int n) {
        this.a.setImageUrl(string, n);
    }
}
