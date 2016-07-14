package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.Scroller;

import org.apache.commons.lang3.reflect.FieldUtils;

public class PagerWidget extends ReaderViewPager {
    private int a;
    private OnPageClickListener b;
    private Scroller c;
    private boolean d;
    private float e;
    private float f;
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
            return FieldUtils.readField(ReaderViewPager.class.getDeclaredField(string), this, true);
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
            FieldUtils.writeField(ReaderViewPager.class.getDeclaredField(string), this, object, true);
        } catch (Exception var3_3) {
            var3_3.printStackTrace();
        }
    }

    private void d() {
        this.a = ViewConfiguration.get(this.getContext()).getScaledTouchSlop();
        this.a("mMinimumVelocity", 0);
        this.a("mFlingDistance", 0);
        this.c = new Scroller(this.getContext(), new Interpolator() {
            @Override
            public float getInterpolation(float input) {
                float f2 = input - 1.0f;
                return 1.0f + f2 * (f2 * (f2 * (f2 * f2)));
            }
        }) {
            @Override
            public void startScroll(int startX, int startY, int dx, int dy) {
                super.startScroll(startX, startY, dx, dy, 400);
            }
        };
        this.a("mScroller", this.c);
    }

    private boolean e() {
        return (Boolean) this.a("mIsBeingDragged");
    }

    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        int v4 = var1_1.getAction() & 0xff;
        if (this.i == 0) {
            switch (v4) {
                case 0:
                    return true;
                case 2:
                    if (this.e() || !this.c.isFinished() || this.d) {
                        return super.onTouchEvent(var1_1);
                    } else {
                        this.d = true;
                        int v0 = 2;
                        if (var1_1.getX() >= this.getWidth() / 3.0) {
                            if (var1_1.getX() <= this.getWidth() * 2.0 / 3.0) {
                                if (var1_1.getY() >= this.getHeight() / 5.0) {
                                    if (var1_1.getY() <= this.getHeight() * 4.0 / 5.0) {
                                        v0 = 0;
                                    }
                                } else {
                                    v0 = 1;
                                }
                            }
                        } else {
                            v0 = 1;
                        }
                        if (this.b != null) {
                            this.b.a(v0);
                        }
                        this.d = false;
                    }
                    return true;
                case 1:
                    if (!this.e()) {
                        float v2 = (Float) this.a("mInitialMotionX");
                        int v0 = (Integer) this.a("mActivePointerId");
                        int v3 = MotionEventCompat.findPointerIndex(var1_1, v0);
                        if (Math.abs(MotionEventCompat.getX(var1_1, v3) - v2) > this.a) {
                            return super.onTouchEvent(PagerWidget.a(var1_1));
                        }
                    }
                    break;
            }
        } else if (this.i == 1) {
            switch (v4) {
                case 0:
                    this.e = var1_1.getX();
                    this.f = var1_1.getY();
                    this.k = false;
                    break;
                case 2:
                    if (!this.k) {
                        this.j.clearAnimation();
                        this.k = true;
                    }
                    if (Math.abs(var1_1.getY() - this.f) > 20.0f) {
                        int v01 = (int) (this.getMeasuredHeight() - var1_1.getY());
                        if (this.getMeasuredHeight() - var1_1.getY() <= this.j.g()) {
                            if (v01 < 10) {
                                v01 = 10;
                            }
                        } else {
                            v01 = this.j.g();
                        }
                        this.j.a(v01);
                    }
                    break;
                case 1:
                    boolean g;
                    g = Math.abs(this.e - var1_1.getX()) <= 20.0f && Math.abs(this.f - var1_1.getY()) <= 20.0f;
                    if (this.b != null && g) {
                        this.b.a(0);
                    }
                    if (!g) {
                        this.j.e();
                    }
                    break;
            }
        } else {
            switch (v4) {
                case 1:
                    this.b.a(0);
            }
        }
        return super.onTouchEvent(var1_1);
    }

    public void setAutoReaderTextView(AutoReaderTextView autoReaderTextView) {
        this.j = autoReaderTextView;
    }

    public void setOnPageClickListener(OnPageClickListener a2) {
        this.b = a2;
    }

    public void setReadMode(int n2) {
        this.i = n2;
    }

    public interface OnPageClickListener {
        void a(int n2);
    }
}
