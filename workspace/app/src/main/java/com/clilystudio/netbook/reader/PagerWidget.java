package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class PagerWidget extends ReaderViewPager {

    private int a;
    private com.clilystudio.netbook.umeng.update.a b;
    private M c;
    private boolean d;
    private float e;
    private float f;
    private boolean g;
    private float h;
    private int i;
    private AutoReaderTextView j;
    private boolean k;
    public PagerWidget(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        h = 20.0F;
        i = 0;
        k = false;
        d();
    }

    public PagerWidget(Context Context1) {
        super(Context1);
        h = 20.0F;
        i = 0;
        k = false;
        d();
    }

    private static MotionEvent a(MotionEvent MotionEvent1) {
        MotionEvent MotionEvent2 = MotionEvent.obtain(MotionEvent1);

        try {
            MotionEvent2.setAction(0);
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return MotionEvent2;
        }
        return MotionEvent2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private Object a(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void a(String String1, Object Object2) {
    }

    private void d() {
        a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        a("mMinimumVelocity", Integer.valueOf(0));
        a("mFlingDistance", Integer.valueOf(0));
        c = new M(this, getContext());
        a("mScroller", c);
    }

    private boolean e() {
        return ((Boolean) a("mIsBeingDragged")).booleanValue();
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1) {
        int int2 = 2;
        boolean boolean3 = true;
        int int4 = 0xFF & MotionEvent1.getAction();

        if (i == 0) {
            switch (int4) {
                case 2:
                    if (e()) {
                        if (getContext() instanceof ReaderActivity)
                            ((ReaderActivity) getContext()).k();
                        return super.onTouchEvent(MotionEvent1);
                    } else {
                        float float10 = ((Float) a("mInitialMotionX")).floatValue();
                        int int11 = MotionEventCompat.findPointerIndex(MotionEvent1, ((Integer) a("mActivePointerId")).intValue());
                        float float13;

                        try {
                            float float15 = MotionEventCompat.getX(MotionEvent1, int11);
                        } catch (Exception Exception12) {
                            Exception12.printStackTrace();
                            float13 = 0.0F;
                        }
                        if (Math.abs(float13 - float10) > (float) a) {
                            super.onTouchEvent(a(MotionEvent1));
                            return boolean3;
                        }
                        break;
                    }
                case 1:
                    if (!e() && c.isFinished() && !d) {
                        float float6;
                        float float7;
                        float float8;
                        float float9;

                        d = boolean3;
                        float6 = MotionEvent1.getX();
                        float7 = MotionEvent1.getY();
                        float8 = (float) (getWidth() / 3);
                        float9 = (float) (getHeight() / 5);
                        if (float6 < float8)
                            int2 = boolean3;
                        else if (float6 <= float8 * 2.0F) {
                            if (float7 < float9)
                                int2 = boolean3;
                            else if (float7 <= 4.0F * float9)
                                int2 = 0;
                        }
                        if (b != null)
                            b.a(int2);
                        d = false;
                        return boolean3;
                    }
                default:
                    boolean3 = super.onTouchEvent(MotionEvent1);
                    break;
                case 0:
                    break;
            }
        } else if (i == boolean3) {
            switch (int4) {
                default:
                    return boolean3;
                case 0:
                    e = MotionEvent1.getX();
                    f = MotionEvent1.getY();
                    k = false;
                    return boolean3;
                case 2:
                    if (!k) {
                        j.clearAnimation();
                        k = boolean3;
                    }
                    if ((float) Math.abs((int) (MotionEvent1.getY() - f)) > h) {
                        int int5 = getMeasuredHeight() - (int) MotionEvent1.getY();

                        if (int5 > j.g())
                            int5 = j.g();
                        else if (int5 < 10)
                            int5 = 10;
                        j.a(int5);
                        return boolean3;
                    }
                    break;
                case 1:
                    if (Math.abs(e - MotionEvent1.getX()) > h || Math.abs(f - MotionEvent1.getY()) > h)
                        g = false;
                    else
                        g = boolean3;
                    if (b != null && g)
                        b.a(0);
                    if (!g) {
                        j.e();
                        return boolean3;
                    }
                    break;
            }
        } else {
            switch (int4) {
                default:
                    return boolean3;
                case 1:
                    b.a(0);
                    return boolean3;
            }
        }
        return boolean3;
    }

    public void setAutoReaderTextView(AutoReaderTextView AutoReaderTextView1) {
        j = AutoReaderTextView1;
    }

    public void setOnClickListener$4b8a6d15(com.clilystudio.netbook.umeng.update.a a1) {
        b = a1;
    }

    public void setReadMode(int int1) {
        i = int1;
    }
}
