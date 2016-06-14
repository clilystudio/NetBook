package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdContainerLayout extends RelativeLayout {
    private boolean a = false;
    private f b;

    public AdContainerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                return super.onInterceptTouchEvent(motionEvent);
            }
            case 0:
        }
        if (this.a) {
            if (this.b == null) return true;
            this.b.a();
            return true;
        }
        if (this.b == null) return super.onInterceptTouchEvent(motionEvent);
        this.b.b();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setIsShowConfirm(boolean bl) {
        this.a = bl;
    }

    public void setSplashAdContainerClickListener(f f2) {
        this.b = f2;
    }
}
