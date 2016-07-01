package com.clilystudio.netbook.widget;

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

import com.clilystudio.netbook.R;


public class ProgressView extends View {
    private static final int b = Color.parseColor("#d6d6d6");
    private static final int c = Color.parseColor("#5FB14D");
    private static final int d = Color.argb(235, 74, 138, 255);
    private static final int e = Color.argb(135, 74, 138, 255);
    private static final int f = Color.argb(135, 74, 138, 255);
    private final float a;
    private int A;
    private int B;
    private int C;
    private int D;
    private Path G;
    private Path H;
    private int I;
    private float J;
    private boolean K;
    private boolean L;
    private boolean M;
    private float N;
    private float O;
    private float[] Q;
    private Paint g;
    private Paint h;
    private Paint i;
    private Paint j;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private RectF v;
    private int w;
    private int x;
    private int y;
    private int z;

    public ProgressView(Context context) {
        super(context);
        this.a = this.getResources().getDisplayMetrics().density;
        this.v = new RectF();
        this.w = d;
        this.x = e;
        this.y = f;
        this.z = b;
        this.A = 0;
        this.B = c;
        this.C = 135;
        this.D = 100;
        this.M = true;
        this.Q = new float[2];
        this.a(null, 0);
    }

    public ProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = this.getResources().getDisplayMetrics().density;
        this.v = new RectF();
        this.w = d;
        this.x = e;
        this.y = f;
        this.z = b;
        this.A = 0;
        this.B = c;
        this.C = 135;
        this.D = 100;
        this.M = true;
        this.Q = new float[2];
        this.a(attributeSet, 0);
    }

    public ProgressView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.a = this.getResources().getDisplayMetrics().density;
        this.v = new RectF();
        this.w = d;
        this.x = e;
        this.y = f;
        this.z = b;
        this.A = 0;
        this.B = c;
        this.C = 135;
        this.D = 100;
        this.M = true;
        this.Q = new float[2];
        this.a(attributeSet, n);
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
        this.j.setMaskFilter(new BlurMaskFilter(5.0f * this.a, BlurMaskFilter.Blur.NORMAL));
        Paint k = new Paint();
        k.setAntiAlias(true);
        k.setDither(true);
        k.setStyle(Paint.Style.FILL);
        k.setColor(this.w);
        k.setStrokeWidth(this.q);
        Paint l = new Paint();
        l.set(k);
        l.setColor(this.x);
        l.setAlpha(this.C);
        l.setStrokeWidth(this.q + this.r);
        Paint m = new Paint();
        m.set(k);
        m.setStrokeWidth(this.s);
        m.setStyle(Paint.Style.STROKE);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(AttributeSet attributeSet, int n) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        TypedArray typedArray = this.getContext().obtainStyledAttributes(attributeSet, R.styleable.ProgressView, n, 0);
        this.o = typedArray.getFloat(R.styleable.ProgressView_circle_x_radius, 30.0f) * this.a;
        this.p = typedArray.getFloat(R.styleable.ProgressView_circle_y_radius, 30.0f) * this.a;
        this.q = typedArray.getFloat(R.styleable.ProgressView_pointer_radius, 0.0f) * this.a;
        this.r = typedArray.getFloat(R.styleable.ProgressView_pointer_halo_width, 0.0f) * this.a;
        this.s = typedArray.getFloat(R.styleable.ProgressView_pointer_halo_border_width, 0.0f) * this.a;
        this.n = typedArray.getFloat(R.styleable.ProgressView_circle_stroke_width, 3.5f) * this.a;
        String string6 = typedArray.getString(R.styleable.ProgressView_pointer_color);
        if (string6 != null) {
            try {
                this.w = Color.parseColor(string6);
            } catch (IllegalArgumentException var16_10) {
                this.w = d;
            }
        }
        if ((string5 = typedArray.getString(R.styleable.ProgressView_pointer_halo_color)) != null) {
            try {
                this.x = Color.parseColor(string5);
            } catch (IllegalArgumentException var15_11) {
                this.x = e;
            }
        }
        if ((string = typedArray.getString(R.styleable.ProgressView_pointer_halo_color_ontouch)) != null) {
            try {
                this.y = Color.parseColor(string);
            } catch (IllegalArgumentException var14_12) {
                this.y = f;
            }
        }
        if ((string3 = typedArray.getString(R.styleable.ProgressView_circle_color)) != null) {
            try {
                this.z = Color.parseColor(string3);
            } catch (IllegalArgumentException var13_13) {
                this.z = b;
            }
        }
        if ((string4 = typedArray.getString(R.styleable.ProgressView_circle_progress_color)) != null) {
            try {
                this.B = Color.parseColor(string4);
            } catch (IllegalArgumentException var12_14) {
                this.B = c;
            }
        }
        if ((string2 = typedArray.getString(R.styleable.ProgressView_circle_fill)) != null) {
            try {
                this.A = Color.parseColor(string2);
            } catch (IllegalArgumentException var11_15) {
                this.A = 0;
            }
        }
        this.C = Color.alpha(this.x);
        this.D = typedArray.getInt(R.styleable.ProgressView_pointer_alpha_ontouch, 100);
        if (this.D > 255 || this.D < 0) {
            this.D = 100;
        }
        this.I = typedArray.getInt(R.styleable.ProgressView_max, 100);
        this.J = typedArray.getInt(R.styleable.ProgressView_progress, 0);
        this.K = typedArray.getBoolean(R.styleable.ProgressView_use_custom_radii, false);
        this.L = typedArray.getBoolean(R.styleable.ProgressView_maintain_equal_circle, true);
//        typedArray.getBoolean(R.styleable.ProgressView_maintain_equal_circle, false);
        this.M = typedArray.getBoolean(R.styleable.ProgressView_lock_enabled, true);
        this.t = (360.0f + typedArray.getFloat(R.styleable.ProgressView_start_angle, 270.0f) % 360.0f) % 360.0f;
        this.u = (360.0f + typedArray.getFloat(R.styleable.ProgressView_end_angle, 270.0f) % 360.0f) % 360.0f;
        if (this.t == this.u) {
            this.u -= 0.1f;
        }
        typedArray.recycle();
        this.a();
    }

    private void b() {
        float e1 = (360.0f - (this.t - this.u)) % 360.0f;
        if (e1 <= 0.0f) {
            e1 = 360.0f;
        }
        float p1 = this.J / (float) this.I * e1 + this.t;
        p1 %= 360.0f;
        float f1 = p1 - this.t;
        f1 = f1 < 0.0f ? 360.0f + f1 : f1;
        this.v.set(-this.N, -this.O, this.N, this.O);
        this.G = new Path();
        this.G.addArc(this.v, this.t, e1);
        this.H = new Path();
        this.H.addArc(this.v, this.t, f1);
        PathMeasure pathMeasure = new PathMeasure(this.H, false);
        if (!pathMeasure.getPosTan(pathMeasure.getLength(), this.Q, null)) {
            new PathMeasure(this.G, false).getPosTan(0.0f, this.Q, null);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(this.getWidth() / 2, this.getHeight() / 2);
        canvas.drawPath(this.G, this.g);
        canvas.drawPath(this.H, this.j);
        canvas.drawPath(this.H, this.i);
        canvas.drawPath(this.G, this.h);
    }

    @Override
    protected void onMeasure(int n, int n2) {
        int n3 = ProgressView.getDefaultSize(this.getSuggestedMinimumHeight(), n2);
        int n4 = ProgressView.getDefaultSize(this.getSuggestedMinimumWidth(), n);
        if (this.L) {
            int n5 = Math.min(n4, n3);
            this.setMeasuredDimension(n5, n5);
        } else {
            this.setMeasuredDimension(n4, n3);
        }
        this.O = (float) n3 / 2.0f - this.n - this.q - 1.5f * this.s;
        this.N = (float) n4 / 2.0f - this.n - this.q - 1.5f * this.s;
        if (this.K) {
            if (this.p - this.n - this.q - this.s < this.O) {
                this.O = this.p - this.n - this.q - 1.5f * this.s;
            }
            if (this.o - this.n - this.q - this.s < this.N) {
                this.N = this.o - this.n - this.q - 1.5f * this.s;
            }
        }
        if (this.L) {
            float f;
            this.O = f = Math.min(this.O, this.N);
            this.N = f;
        }
        this.b();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("PARENT"));
        this.I = bundle.getInt("MAX");
        this.J = bundle.getInt("PROGRESS");
        this.z = bundle.getInt("mCircleColor");
        this.B = bundle.getInt("mCircleProgressColor");
        this.w = bundle.getInt("mPointerColor");
        this.x = bundle.getInt("mPointerHaloColor");
        this.y = bundle.getInt("mPointerHaloColorOnTouch");
        this.C = bundle.getInt("mPointerAlpha");
        this.D = bundle.getInt("mPointerAlphaOnTouch");
        this.M = bundle.getBoolean("lockEnabled");
        this.a();
        this.b();
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelable = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("PARENT", parcelable);
        bundle.putInt("MAX", this.I);
        bundle.putInt("PROGRESS", (int) this.J);
        bundle.putInt("mCircleColor", this.z);
        bundle.putInt("mCircleProgressColor", this.B);
        bundle.putInt("mPointerColor", this.w);
        bundle.putInt("mPointerHaloColor", this.x);
        bundle.putInt("mPointerHaloColorOnTouch", this.y);
        bundle.putInt("mPointerAlpha", this.C);
        bundle.putInt("mPointerAlphaOnTouch", this.D);
        bundle.putBoolean("lockEnabled", this.M);
        return bundle;
    }

    public void setMax(int n) {
        if (n > 0) {
            if ((float) n <= this.J) {
                this.J = 0.0f;
            }
            this.I = n;
            this.b();
            this.invalidate();
        }
    }

    public void setProgress(float f) {
        if (this.J != f) {
            this.J = f;
            this.b();
            this.invalidate();
        }
    }
}
