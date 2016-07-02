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
            Object object = FieldUtils.readField(ReaderViewPager.class.getDeclaredField(string), (Object) this, true);
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
            FieldUtils.writeField(ReaderViewPager.class.getDeclaredField(string), (Object) this, object, true);
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

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        v3 = 0xa;
        v0 = 0x2;
        v2 = 0x0;
        v1 = 0x1;
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
                                    if (var1_1.getY() <= this.getHeight() 4.0 / 5.0){
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
                    if (this.e()) {
                        if (this.getContext() instanceof ReaderActivity) {
                            ((ReaderActivity) this.getContext()).k();
                        }
                    } else {
                        float v2 = ((Float) this.a("mInitialMotionX")).floatValue();
                        int v0 = ((Integer) this.a("mActivePointerId")).intValue();
                        int v3 = MotionEventCompat.findPointerIndex(var1_1, v0);
                        if (Math.abs(MotionEventCompat.getX(var1_1, v3) - v2) > this.a) {
                            return super.onTouchEvent(PagerWidget.a(var1_1));
                        }
                    }
                    break;
            }
        } else {
            if (this.i == 1) {
                switch (v4) {

                    case 3:
                        this.e = var1_1.getX();
                        this.f = var1_1.getY();
                        this.k = false;
                        break;
                    case 4:
                        if (!this.k) {
                            this.j.clearAnimation();
                            this.k = true;
                        }
                        if (Math.abs(var1_1.getY() - this.f) > this.h) {
                            int v0 = this.getMeasuredHeight() - var1_1.getY();
                            if (this.getMeasuredHeight() - var1_1.getY() <= this.j.g()) {
                                if (v0 < 10) {
                                    v0 = 10;
                                }
                            } else {
                                v0 = this.j.g();
                            }
                            this.j.a(v0);
                        }
                        break;
                    case 5:
                        v0 = this.e;
                        v3 = p1.getX();
                        v0 -= v3;
                        v0 = Ljava / lang / Math.abs(v0);
                        v3 = this.h;
                        cmpl - float v0, v0, v3
                        if (v0 > 0) {
                            this.g = v2;
                        } else {
                            v0 = this.f;
                            v3 = p1.getY();
                            v0 -= v3;
                            v0 = Ljava / lang / Math.abs(v0);
                            v3 = this.h;
                            cmpl - float v0, v0, v3
                            if (v0 <= 0) {
                                this.g = v1;
                            } else {
                                this.g = v2;
                            }
                        }
                        if (this.b != 0 && this.g != 0) {
                            v0 = this.b;
                            v0.a(v2);
                        }
                        v0 = this.g;
                        if (v0 == 0) {
                            v0 = this.j;
                            v0.e();
                        }
                        goto/16:goto_0

                        packed - switch v4,:pswitch_data_1
                }else{
                    packed - switch v4,:pswitch_data_2
                }
            }
            return super.onTouchEvent(var1_1);
            :goto_0
            :
            pswitch_0
            return v1
            :pswitch_1
            :
            pswitch_6
                    v0 = this.b;
            v0.a(v2);
            goto/16:goto_0
            :
            pswitch_data_0
                    .packed - switch 0x0
            :pswitch_0
            :
            pswitch_2
            :
            pswitch_1
                    .end packed - switch
            :pswitch_data_1
                    .packed - switch 0x0
            :pswitch_3
            :
            pswitch_5
            :
            pswitch_4
                    .end packed - switch
            :pswitch_data_2
                    .packed - switch 0x1
            :pswitch_6
                    .end packed - switch


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

    public void setOnPageClickListener(OnPageClickListener a2) {
        this.b = a2;
    }

    public void setReadMode(int n2) {
        this.i = n2;
    }

    public interface OnPageClickListener {
        public abstract void a(int n2);
    }
}
