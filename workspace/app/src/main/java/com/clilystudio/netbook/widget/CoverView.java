package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

import com.clilystudio.netbook.ui.CornerImageView;

public class CoverView extends RelativeLayout {
    private final int b;
    private CornerImageView a;

    public CoverView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoverView);
        this.b = localTypedArray.getResourceId(0, 0);
        localTypedArray.getResourceId(1, 2130838144);
        localTypedArray.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = new CornerImageView(getContext());
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        FrameLayout localFrameLayout = new FrameLayout(getContext());
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
        localFrameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.a.setLayoutParams(localLayoutParams);
        if (this.b != 0)
            this.a.setImageResource(this.b);
        addView(this.a);
        addView(localFrameLayout);
    }

    public void setImageResource(int paramInt) {
        this.a.setImageResource(paramInt);
    }

    public void setImageUrl(String paramString) {
        this.a.setImageUrl(paramString);
    }

    public void setImageUrl(String paramString, int paramInt) {
        this.a.setImageUrl(paramString, paramInt);
    }
}

