package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdBottomLayout
        extends RelativeLayout {
    private K a;
    private float b = 0.0f;

    public AdBottomLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                return super.onTouchEvent(motionEvent);
            }
            case 0:
        }
        motionEvent.getRawX();
        return true;
    }

    public void setAreaBound(float f) {
        this.b = f;
    }

    public void setSkipAd$500ea8a7(K k) {
        this.a = k;
    }
}
