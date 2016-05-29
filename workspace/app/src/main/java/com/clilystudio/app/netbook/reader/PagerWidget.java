package com.clilystudio.app.netbook.reader;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class PagerWidget extends ReaderViewPager {
    private int a;
    private com.umeng.update.a b;
    private M c;
    private boolean d;
    private float e;
    private float f;
    private boolean g;
    private float h = 20.0F;
    private int i = 0;
    private AutoReaderTextView j;
    private boolean k = false;

    public PagerWidget(Context paramContext) {
        super(paramContext);
        d();
    }

    public PagerWidget(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        d();
    }

    private static MotionEvent a(MotionEvent paramMotionEvent) {
        MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
        try {
            localMotionEvent.setAction(0);
            return localMotionEvent;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return localMotionEvent;
    }

    private Object a(String paramString) {
        try {
            Object localObject = org.apache.commons.lang3.a.a.a(ReaderViewPager.class.getDeclaredField(paramString), this, true);
            return localObject;
        } catch (IllegalAccessException localIllegalAccessException) {
            localIllegalAccessException.printStackTrace();
            return null;
        } catch (NoSuchFieldException localNoSuchFieldException) {
            localNoSuchFieldException.printStackTrace();
            return null;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    private void a(String paramString, Object paramObject) {
        try {
            org.apache.commons.lang3.a.a.a(ReaderViewPager.class.getDeclaredField(paramString), this, paramObject, true);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    private void d() {
        this.a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        a("mMinimumVelocity", Integer.valueOf(0));
        a("mFlingDistance", Integer.valueOf(0));
        this.c = new M(this, getContext());
        a("mScroller", this.c);
    }

    private boolean e() {
        return ((Boolean) a("mIsBeingDragged")).booleanValue();
    }

    public boolean onTouchEvent(MotionEvent paramMotionEvent) {
        int m = 2;
        int n = 1;
        int i1 = 0xFF & paramMotionEvent.getAction();
        if (this.i == 0)
            switch (i1) {
                default:
                    n = super.onTouchEvent(paramMotionEvent);
                case 0:
                case 2:
                case 1:
            }
        do {
            while (true) {
                return n;
                if (e()) {
                    if ((getContext() instanceof ReaderActivity))
                        ((ReaderActivity) getContext()).k();
                    return super.onTouchEvent(paramMotionEvent);
                }
                float f5 = ((Float) a("mInitialMotionX")).floatValue();
                int i3 = MotionEventCompat.findPointerIndex(paramMotionEvent, ((Integer) a("mActivePointerId")).intValue());
                try {
                    float f7 = MotionEventCompat.getX(paramMotionEvent, i3);
                    f6 = f7;
                    if (Math.abs(f6 - f5) > this.a) {
                        super.onTouchEvent(a(paramMotionEvent));
                        return n;
                    }
                } catch (Exception localException) {
                    while (true) {
                        localException.printStackTrace();
                        float f6 = 0.0F;
                    }
                }
            }
            if ((e()) || (!this.c.isFinished()) || (this.d))
                break;
            this.d = n;
            float f1 = paramMotionEvent.getX();
            float f2 = paramMotionEvent.getY();
            float f3 = getWidth() / 3;
            float f4 = getHeight() / 5;
            if (f1 < f3)
                m = n;
            while (true) {
                if (this.b != null)
                    this.b.a(m);
                this.d = false;
                return n;
                if (f1 <= f3 * 2.0F)
                    if (f2 < f4)
                        m = n;
                    else if (f2 <= 4.0F * f4)
                        m = 0;
            }
            if (this.i != n)
                break label561;
            switch (i1) {
                default:
                    return n;
                case 0:
                    this.e = paramMotionEvent.getX();
                    this.f = paramMotionEvent.getY();
                    this.k = false;
                    return n;
                case 2:
                    if (!this.k) {
                        this.j.clearAnimation();
                        this.k = n;
                    }
                    break;
                case 1:
            }
        }
        while (Math.abs((int) (paramMotionEvent.getY() - this.f)) <= this.h);
        int i2 = getMeasuredHeight() - (int) paramMotionEvent.getY();
        if (i2 > this.j.g())
            i2 = this.j.g();
        while (true) {
            this.j.a(i2);
            return n;
            if (i2 < 10)
                i2 = 10;
        }
        if ((Math.abs(this.e - paramMotionEvent.getX()) > this.h) || (Math.abs(this.f - paramMotionEvent.getY()) > this.h)) ;
        for (this.g = false; ; this.g = n) {
            if ((this.b != null) && (this.g))
                this.b.a(0);
            if (this.g)
                break;
            this.j.e();
            return n;
        }
        switch (i1) {
            default:
                label561:
                return n;
            case 1:
        }
        this.b.a(0);
        return n;
    }

    public void setAutoReaderTextView(AutoReaderTextView paramAutoReaderTextView) {
        this.j = paramAutoReaderTextView;
    }

    public void setOnClickListener$4b8a6d15(com.umeng.update.a parama) {
        this.b = parama;
    }

    public void setReadMode(int paramInt) {
        this.i = paramInt;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.PagerWidget
 * JD-Core Version:    0.6.2
 */