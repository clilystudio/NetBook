package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.R;

public class CoverLoadingView extends CoverView {
    private final float a;

    public CoverLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.CoverLoadingView);
        this.a = typedArray.getDimension(R.styleable.CoverLoadingView_cornerRadius, 0.0f);
        typedArray.recycle();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        CoverLoadingLayer b = new CoverLoadingLayer(this.getContext());
        b.setCornerRadius(this.a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        b.setLayoutParams(layoutParams);
        b.setId(R.id.cover_loading);
        this.addView(b);
    }
}
