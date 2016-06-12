package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdBottomLayout extends RelativeLayout {

    private K a;
    private float b = 0.0F;
    public AdBottomLayout(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1) {
        switch (MotionEvent1.getAction()) {
            default:
                return super.onTouchEvent(MotionEvent1);
            case 0:
                MotionEvent1.getRawX();
                return true;
        }
    }

    public void setAreaBound(float float1) {
        b = float1;
    }

    public void setSkipAd$500ea8a7(K K1) {
        a = K1;
    }
}
