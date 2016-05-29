package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;

public class ProgressView extends View {
    private static final int b = Color.parseColor("#d6d6d6");
    private static final int c = Color.parseColor("#5FB14D");
    private static final int d = Color.argb(235, 74, 138, 255);
    private static final int e = Color.argb(135, 74, 138, 255);
    private static final int f = Color.argb(135, 74, 138, 255);
    private int A = 0;
    private int B = c;
    private int C = 135;
    private int D = 100;
    private float E;
    private float F;
    private Path G;
    private Path H;
    private int I;
    private float J;
    private boolean K;
    private boolean L;
    private boolean M = true;
    private float N;
    private float O;
    private float P;
    private float[] Q = new float[2];
    private K R;
    private final float a = getResources().getDisplayMetrics().density;
    private Paint g;
    private Paint h;
    private Paint i;
    private Paint j;
    private Paint k;
    private Paint l;
    private Paint m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private RectF v = new RectF();
    private int w = d;
    private int x = e;
    private int y = f;
    private int z = b;

    public ProgressView(Context paramContext) {
        super(paramContext);
        a(null, 0);
    }

    public ProgressView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        a(paramAttributeSet, 0);
    }

    public ProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
        a(paramAttributeSet, paramInt);
    }

    private void a() {
        this.g = new Paint();
        this.g.setAntiAlias(true);
        this.g.setDither(true);
        this.g.setColor(this.z);
        this.g.setStrokeWidth(this.n);
        this.g.setStyle(Paint.Style.STROKE);
        this.g.setStrokeJoin(Paint.Join.ROUND);
        this.g.setStrokeCap(Paint.Cap.ROUND);
        this.h = new Paint();
        this.h.setAntiAlias(true);
        this.h.setDither(true);
        this.h.setColor(this.A);
        this.h.setStyle(Paint.Style.FILL);
        this.i = new Paint();
        this.i.setAntiAlias(true);
        this.i.setDither(true);
        this.i.setColor(this.B);
        this.i.setStrokeWidth(this.n);
        this.i.setStyle(Paint.Style.STROKE);
        this.i.setStrokeJoin(Paint.Join.ROUND);
        this.i.setStrokeCap(Paint.Cap.ROUND);
        this.j = new Paint();
        this.j.set(this.i);
        this.j.setMaskFilter(new BlurMaskFilter(5.0F * this.a, BlurMaskFilter.Blur.NORMAL));
        this.k = new Paint();
        this.k.setAntiAlias(true);
        this.k.setDither(true);
        this.k.setStyle(Paint.Style.FILL);
        this.k.setColor(this.w);
        this.k.setStrokeWidth(this.q);
        this.l = new Paint();
        this.l.set(this.k);
        this.l.setColor(this.x);
        this.l.setAlpha(this.C);
        this.l.setStrokeWidth(this.q + this.r);
        this.m = new Paint();
        this.m.set(this.k);
        this.m.setStrokeWidth(this.s);
        this.m.setStyle(Paint.Style.STROKE);
    }

    private void a(AttributeSet paramAttributeSet, int paramInt) {
        TypedArray localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ProgressView, paramInt, 0);
        this.o = (localTypedArray.getFloat(6, 30.0F) * this.a);
        this.p = (localTypedArray.getFloat(7, 30.0F) * this.a);
        this.q = (localTypedArray.getFloat(9, 0.0F) * this.a);
        this.r = (localTypedArray.getFloat(10, 0.0F) * this.a);
        this.s = (localTypedArray.getFloat(11, 0.0F) * this.a);
        this.n = (localTypedArray.getFloat(8, 3.5F) * this.a);
        String str1 = localTypedArray.getString(14);
        if (str1 != null) ;
        try {
            this.w = Color.parseColor(str1);
            str2 = localTypedArray.getString(15);
            if (str2 == null) ;
        } catch (IllegalArgumentException localIllegalArgumentException2) {
            try {
                String str2;
                this.x = Color.parseColor(str2);
                str3 = localTypedArray.getString(16);
                if (str3 == null) ;
            } catch (IllegalArgumentException localIllegalArgumentException2) {
                try {
                    String str3;
                    this.y = Color.parseColor(str3);
                    str4 = localTypedArray.getString(12);
                    if (str4 == null) ;
                } catch (IllegalArgumentException localIllegalArgumentException2) {
                    try {
                        String str4;
                        this.z = Color.parseColor(str4);
                        str5 = localTypedArray.getString(13);
                        if (str5 == null) ;
                    } catch (IllegalArgumentException localIllegalArgumentException2) {
                        try {
                            String str5;
                            this.B = Color.parseColor(str5);
                            str6 = localTypedArray.getString(20);
                            if (str6 == null) ;
                        } catch (IllegalArgumentException localIllegalArgumentException2) {
                            try {
                                while (true) {
                                    String str6;
                                    this.A = Color.parseColor(str6);
                                    this.C = Color.alpha(this.x);
                                    this.D = localTypedArray.getInt(17, 100);
                                    if ((this.D > 255) || (this.D < 0))
                                        this.D = 100;
                                    this.I = localTypedArray.getInt(1, 100);
                                    this.J = localTypedArray.getInt(0, 0);
                                    this.K = localTypedArray.getBoolean(4, false);
                                    this.L = localTypedArray.getBoolean(3, true);
                                    localTypedArray.getBoolean(2, false);
                                    this.M = localTypedArray.getBoolean(5, true);
                                    this.t = ((360.0F + localTypedArray.getFloat(18, 270.0F) % 360.0F) % 360.0F);
                                    this.u = ((360.0F + localTypedArray.getFloat(19, 270.0F) % 360.0F) % 360.0F);
                                    if (this.t == this.u)
                                        this.u -= 0.1F;
                                    localTypedArray.recycle();
                                    a();
                                    return;
                                    localIllegalArgumentException6 = localIllegalArgumentException6;
                                    this.w = d;
                                    continue;
                                    localIllegalArgumentException5 = localIllegalArgumentException5;
                                    this.x = e;
                                    continue;
                                    localIllegalArgumentException4 = localIllegalArgumentException4;
                                    this.y = f;
                                    continue;
                                    localIllegalArgumentException3 = localIllegalArgumentException3;
                                    this.z = b;
                                }
                                localIllegalArgumentException2 = localIllegalArgumentException2;
                                this.B = c;
                            } catch (IllegalArgumentException localIllegalArgumentException1) {
                                while (true)
                                    this.A = 0;
                            }
                        }
                    }
                }
            }
        }
    }

    private void b() {
        this.E = ((360.0F - (this.t - this.u)) % 360.0F);
        if (this.E <= 0.0F)
            this.E = 360.0F;
        this.P = (this.J / this.I * this.E + this.t);
        this.P %= 360.0F;
        this.F = (this.P - this.t);
        if (this.F < 0.0F) ;
        for (float f1 = 360.0F + this.F; ; f1 = this.F) {
            this.F = f1;
            this.v.set(-this.N, -this.O, this.N, this.O);
            this.G = new Path();
            this.G.addArc(this.v, this.t, this.E);
            this.H = new Path();
            this.H.addArc(this.v, this.t, this.F);
            PathMeasure localPathMeasure = new PathMeasure(this.H, false);
            if (!localPathMeasure.getPosTan(localPathMeasure.getLength(), this.Q, null))
                new PathMeasure(this.G, false).getPosTan(0.0F, this.Q, null);
            return;
        }
    }

    protected void onDraw(Canvas paramCanvas) {
        super.onDraw(paramCanvas);
        paramCanvas.translate(getWidth() / 2, getHeight() / 2);
        paramCanvas.drawPath(this.G, this.g);
        paramCanvas.drawPath(this.H, this.j);
        paramCanvas.drawPath(this.H, this.i);
        paramCanvas.drawPath(this.G, this.h);
    }

    protected void onMeasure(int paramInt1, int paramInt2) {
        int i1 = getDefaultSize(getSuggestedMinimumHeight(), paramInt2);
        int i2 = getDefaultSize(getSuggestedMinimumWidth(), paramInt1);
        if (this.L) {
            int i3 = Math.min(i2, i1);
            setMeasuredDimension(i3, i3);
        }
        while (true) {
            this.O = (i1 / 2.0F - this.n - this.q - 1.5F * this.s);
            this.N = (i2 / 2.0F - this.n - this.q - 1.5F * this.s);
            if (this.K) {
                if (this.p - this.n - this.q - this.s < this.O)
                    this.O = (this.p - this.n - this.q - 1.5F * this.s);
                if (this.o - this.n - this.q - this.s < this.N)
                    this.N = (this.o - this.n - this.q - 1.5F * this.s);
            }
            if (this.L) {
                float f1 = Math.min(this.O, this.N);
                this.O = f1;
                this.N = f1;
            }
            b();
            return;
            setMeasuredDimension(i2, i1);
        }
    }

    protected void onRestoreInstanceState(Parcelable paramParcelable) {
        Bundle localBundle = (Bundle) paramParcelable;
        super.onRestoreInstanceState(localBundle.getParcelable("PARENT"));
        this.I = localBundle.getInt("MAX");
        this.J = localBundle.getInt("PROGRESS");
        this.z = localBundle.getInt("mCircleColor");
        this.B = localBundle.getInt("mCircleProgressColor");
        this.w = localBundle.getInt("mPointerColor");
        this.x = localBundle.getInt("mPointerHaloColor");
        this.y = localBundle.getInt("mPointerHaloColorOnTouch");
        this.C = localBundle.getInt("mPointerAlpha");
        this.D = localBundle.getInt("mPointerAlphaOnTouch");
        this.M = localBundle.getBoolean("lockEnabled");
        a();
        b();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable localParcelable = super.onSaveInstanceState();
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("PARENT", localParcelable);
        localBundle.putInt("MAX", this.I);
        localBundle.putInt("PROGRESS", (int) this.J);
        localBundle.putInt("mCircleColor", this.z);
        localBundle.putInt("mCircleProgressColor", this.B);
        localBundle.putInt("mPointerColor", this.w);
        localBundle.putInt("mPointerHaloColor", this.x);
        localBundle.putInt("mPointerHaloColorOnTouch", this.y);
        localBundle.putInt("mPointerAlpha", this.C);
        localBundle.putInt("mPointerAlphaOnTouch", this.D);
        localBundle.putBoolean("lockEnabled", this.M);
        return localBundle;
    }

    public void setCircleColor(int paramInt) {
        this.z = paramInt;
        this.g.setColor(this.z);
        invalidate();
    }

    public void setCircleFillColor(int paramInt) {
        this.A = paramInt;
        this.h.setColor(this.A);
        invalidate();
    }

    public void setCircleProgressColor(int paramInt) {
        this.B = paramInt;
        this.i.setColor(this.B);
        invalidate();
    }

    public void setLockEnabled(boolean paramBoolean) {
        this.M = paramBoolean;
    }

    public void setMax(int paramInt) {
        if (paramInt > 0) {
            if (paramInt <= this.J)
                this.J = 0.0F;
            this.I = paramInt;
            b();
            invalidate();
        }
    }

    public void setOnSeekBarChangeListener$624defb7(K paramK) {
        this.R = paramK;
    }

    public void setPointerAlpha(int paramInt) {
        if ((paramInt >= 0) && (paramInt <= 255)) {
            this.C = paramInt;
            this.l.setAlpha(this.C);
            invalidate();
        }
    }

    public void setPointerAlphaOnTouch(int paramInt) {
        if ((paramInt >= 0) && (paramInt <= 255))
            this.D = paramInt;
    }

    public void setPointerColor(int paramInt) {
        this.w = paramInt;
        this.k.setColor(this.w);
        invalidate();
    }

    public void setPointerHaloColor(int paramInt) {
        this.x = paramInt;
        this.l.setColor(this.x);
        invalidate();
    }

    public void setProgress(float paramFloat) {
        if (this.J != paramFloat) {
            this.J = paramFloat;
            b();
            invalidate();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ProgressView
 * JD-Core Version:    0.6.2
 */