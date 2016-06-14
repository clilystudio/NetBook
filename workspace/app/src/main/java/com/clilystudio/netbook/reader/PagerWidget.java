package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

import org.apache.commons.lang3.a.a;

public class PagerWidget extends ReaderViewPager {
    private int a;
    private com.umeng.update.a b;
    private M c;
    private boolean d;
    private float e;
    private float f;
    private boolean g;
    private float h = 20.0f;
    private int i = 0;
    private AutoReaderTextView j;
    private boolean k = false;

    public PagerWidget(Context context) {
        super(context);
        this.d();
    }

    public PagerWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d();
    }

    private static MotionEvent a(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = MotionEvent.obtain(motionEvent);
        try {
            motionEvent2.setAction(0);
            return motionEvent2;
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
            return motionEvent2;
        }
    }

    private Object a(String string) {
        try {
            Object object = a.a(ReaderViewPager.class.getDeclaredField(string), (Object) this, true);
            return object;
        } catch (IllegalAccessException var4_3) {
            var4_3.printStackTrace();
            return null;
        } catch (NoSuchFieldException var3_4) {
            var3_4.printStackTrace();
            return null;
        } catch (Exception var2_5) {
            var2_5.printStackTrace();
            return null;
        }
    }

    private void a(String string, Object object) {
        try {
            a.a(ReaderViewPager.class.getDeclaredField(string), (Object) this, object, true);
            return;
        } catch (Exception var3_3) {
            var3_3.printStackTrace();
            return;
        }
    }

    private void d() {
        this.a = ViewConfiguration.get(this.getContext()).getScaledTouchSlop();
        this.a("mMinimumVelocity", 0);
        this.a("mFlingDistance", 0);
        this.c = new M(this, this.getContext());
        this.a("mScroller", this.c);
    }

    private boolean e() {
        return (Boolean) this.a("mIsBeingDragged");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        var2_2 = BADBOOL 2;
        var3_3 = true;
        var4_4 = 255 & var1_1.getAction();
        if (this.i != 0)**GOTO lbl47
        switch (var4_4) {
            default: {
                **GOTO lbl34
            }
            case 2: {
                if (this.e()) {
                    if (this.getContext() instanceof ReaderActivity == false) return super.onTouchEvent(var1_1);
                    ((ReaderActivity) this.getContext()).k();
                    return super.onTouchEvent(var1_1);
                }
                var10_5 = ((Float) this.a("mInitialMotionX")).floatValue();
                var11_6 = MotionEventCompat.findPointerIndex(var1_1, (Integer) this.a("mActivePointerId"));
                try {
                    var13_8 = var15_7 = MotionEventCompat.getX(var1_1, var11_6);
                } catch (Exception var12_9) {
                    var12_9.printStackTrace();
                    var13_8 = 0.0f;
                }
                if (Math.abs(var13_8 - var10_5) <= (float) this.a) return var3_3;
                super.onTouchEvent(PagerWidget.a(var1_1));
                return var3_3;
            }
            case 1: {
                if (this.e() || !this.c.isFinished() || this.d)**GOTO lbl34
                this.d = var3_3;
                var6_10 = var1_1.getX();
                var7_11 = var1_1.getY();
                var8_12 = this.getWidth() / 3;
                var9_13 = this.getHeight() / 5;
                if (var6_10 >= var8_12)**GOTO lbl37
                var2_2 = var3_3;
                **GOTO lbl43
                lbl34:
                // 2 sources:
                var3_3 = super.onTouchEvent(var1_1);
            }
            case 0:
        }
        return var3_3;
        lbl37:
        // 1 sources:
        if (var6_10 <= var8_12 * 2.0f) {
            if (var7_11 < var9_13) {
                var2_2 = var3_3;
            } else if (var7_11 <= 4.0f * var9_13) {
                var2_2 = false;
            }
        }
        lbl43:
        // 7 sources:
        if (this.b != null) {
            this.b.a((int) var2_2 ? 1 : 0);
        }
        this.d = false;
        return var3_3;
        lbl47:
        // 1 sources:
        if (this.i == var3_3) {
            switch (var4_4) {
                default: {
                    return var3_3;
                }
                case 0: {
                    this.e = var1_1.getX();
                    this.f = var1_1.getY();
                    this.k = false;
                    return var3_3;
                }
                case 2: {
                    if (!this.k) {
                        this.j.clearAnimation();
                        this.k = var3_3;
                    }
                    if ((float) Math.abs((int) (var1_1.getY() - this.f)) <= this.h) return var3_3;
                    var5_14 = this.getMeasuredHeight() - (int) var1_1.getY();
                    if (var5_14 > this.j.g()) {
                        var5_14 = this.j.g();
                    } else if (var5_14 < 10) {
                        var5_14 = 10;
                    }
                    this.j.a(var5_14);
                    return var3_3;
                }
                case 1:
            }
            this.g = Math.abs(this.e - var1_1.getX()) > this.h || Math.abs(this.f - var1_1.getY()) > this.h ? false : var3_3;
            if (this.b != null && this.g) {
                this.b.a(0);
            }
            if (this.g != false) return var3_3;
            this.j.e();
            return var3_3;
        }
        switch (var4_4) {
            default: {
                return var3_3;
            }
            case 1:
        }
        this.b.a(0);
        return var3_3;
    }

    public void setAutoReaderTextView(AutoReaderTextView autoReaderTextView) {
        this.j = autoReaderTextView;
    }

    public void setOnClickListener$4b8a6d15(com.umeng.update.a a2) {
        this.b = a2;
    }

    public void setReadMode(int n2) {
        this.i = n2;
    }
}
