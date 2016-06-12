package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter$Blur;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.MaskFilter;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;

import com.clilystudio.netbook.R$styleable;

public class ProgressView extends View {

    private static final int b = Color.parseColor("#d6d6d6");
    private static final int c = Color.parseColor("#5FB14D");
    private static final int d = Color.argb(235, 74, 138, 255);
    private static final int e = Color.argb(135, 74, 138, 255);
    private static final int f = Color.argb(135, 74, 138, 255);
    private final float a = getResources().getDisplayMetrics().density;
    private int A;
    private int B;
    private int C;
    private int D;
    private float E;
    private float F;
    private Path G;
    private Path H;
    private int I;
    private float J;
    private boolean K;
    private boolean L;
    private boolean M;
    private float N;
    private float O;
    private float P;
    private float[] Q;
    private android.support.design.widget.K R;
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
    private RectF v;
    private int w;
    private int x;
    private int y;
    private int z;
    public ProgressView(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
        v = new RectF();
        w = d;
        x = e;
        y = f;
        z = b;
        A = 0;
        B = c;
        C = 135;
        D = 100;
        M = true;
        Q = new float[2];
        a(AttributeSet2, int3);
    }

    public ProgressView(Context Context1) {
        super(Context1);
        v = new RectF();
        w = d;
        x = e;
        y = f;
        z = b;
        A = 0;
        B = c;
        C = 135;
        D = 100;
        M = true;
        Q = new float[2];
        a(null, 0);
    }

    public ProgressView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        v = new RectF();
        w = d;
        x = e;
        y = f;
        z = b;
        A = 0;
        B = c;
        C = 135;
        D = 100;
        M = true;
        Q = new float[2];
        a(AttributeSet2, 0);
    }

    private void a() {
        g = new Paint();
        g.setAntiAlias(true);
        g.setDither(true);
        g.setColor(z);
        g.setStrokeWidth(n);
        g.setStyle(Paint$Style.STROKE);
        g.setStrokeJoin(Paint$Join.ROUND);
        g.setStrokeCap(Paint$Cap.ROUND);
        h = new Paint();
        h.setAntiAlias(true);
        h.setDither(true);
        h.setColor(A);
        h.setStyle(Paint$Style.FILL);
        i = new Paint();
        i.setAntiAlias(true);
        i.setDither(true);
        i.setColor(B);
        i.setStrokeWidth(n);
        i.setStyle(Paint$Style.STROKE);
        i.setStrokeJoin(Paint$Join.ROUND);
        i.setStrokeCap(Paint$Cap.ROUND);
        j = new Paint();
        j.set(i);
        j.setMaskFilter((MaskFilter) new BlurMaskFilter(5.0F * a, BlurMaskFilter$Blur.NORMAL));
        k = new Paint();
        k.setAntiAlias(true);
        k.setDither(true);
        k.setStyle(Paint$Style.FILL);
        k.setColor(w);
        k.setStrokeWidth(q);
        l = new Paint();
        l.set(k);
        l.setColor(x);
        l.setAlpha(C);
        l.setStrokeWidth(q + r);
        m = new Paint();
        m.set(k);
        m.setStrokeWidth(s);
        m.setStyle(Paint$Style.STROKE);
    }

    private void a(AttributeSet AttributeSet1, int int2) {
        TypedArray TypedArray3 = getContext().obtainStyledAttributes(AttributeSet1, R$styleable.ProgressView, int2, 0);
        String String4;
        String String5;
        String String6;
        String String7;
        String String8;
        String String9;

        o = TypedArray3.getFloat(6, 30.0F) * a;
        p = TypedArray3.getFloat(7, 30.0F) * a;
        q = TypedArray3.getFloat(9, 0.0F) * a;
        r = TypedArray3.getFloat(10, 0.0F) * a;
        s = TypedArray3.getFloat(11, 0.0F) * a;
        n = TypedArray3.getFloat(8, 3.5F) * a;
        String4 = TypedArray3.getString(14);
        if (String4 != null) {
            try {
                w = Color.parseColor(String4);
            } catch (IllegalArgumentException IllegalArgumentException16) {
                w = d;
            }
        }
        String5 = TypedArray3.getString(15);
        if (String5 != null) {
            try {
                x = Color.parseColor(String5);
            } catch (IllegalArgumentException IllegalArgumentException15) {
                x = e;
            }
        }
        String6 = TypedArray3.getString(16);
        if (String6 != null) {
            try {
                y = Color.parseColor(String6);
            } catch (IllegalArgumentException IllegalArgumentException14) {
                y = f;
            }
        }
        String7 = TypedArray3.getString(12);
        if (String7 != null) {
            try {
                z = Color.parseColor(String7);
            } catch (IllegalArgumentException IllegalArgumentException13) {
                z = b;
            }
        }
        String8 = TypedArray3.getString(13);
        if (String8 != null) {
            try {
                B = Color.parseColor(String8);
            } catch (IllegalArgumentException IllegalArgumentException12) {
                B = c;
            }
        }
        String9 = TypedArray3.getString(20);
        if (String9 != null) {
            try {
                A = Color.parseColor(String9);
            } catch (IllegalArgumentException IllegalArgumentException11) {
                A = 0;
            }
        }
        C = Color.alpha(x);
        D = TypedArray3.getInt(17, 100);
        if (D > 255 || D < 0)
            D = 100;
        I = TypedArray3.getInt(1, 100);
        J = (float) TypedArray3.getInt(0, 0);
        K = TypedArray3.getBoolean(4, false);
        L = TypedArray3.getBoolean(3, true);
        TypedArray3.getBoolean(2, false);
        M = TypedArray3.getBoolean(5, true);
        t = (360.0F + TypedArray3.getFloat(18, 270.0F) % 360.0F) % 360.0F;
        u = (360.0F + TypedArray3.getFloat(19, 270.0F) % 360.0F) % 360.0F;
        if (t == u)
            u -= 0.10000000149011612F;
        TypedArray3.recycle();
        a();
    }

    private void b() {
        float float1;
        PathMeasure PathMeasure2;

        E = (360.0F - (t - u)) % 360.0F;
        if (E <= 0.0F)
            E = 360.0F;
        P = J / (float) I * E + t;
        P = P % 360.0F;
        F = P - t;
        if (F < 0.0F)
            float1 = 360.0F + F;
        else
            float1 = F;
        F = float1;
        v.set(-(N), -(O), N, O);
        G = new Path();
        G.addArc(v, t, E);
        H = new Path();
        H.addArc(v, t, F);
        PathMeasure2 = new PathMeasure(H, false);
        if (!PathMeasure2.getPosTan(PathMeasure2.getLength(), Q, null))
            new PathMeasure(G, false).getPosTan(0.0F, Q, null);
    }

    protected void onDraw(Canvas Canvas1) {
        super.onDraw(Canvas1);
        Canvas1.translate((float) (getWidth() / 2), (float) (getHeight() / 2));
        Canvas1.drawPath(G, g);
        Canvas1.drawPath(H, j);
        Canvas1.drawPath(H, i);
        Canvas1.drawPath(G, h);
    }

    protected void onMeasure(int int1, int int2) {
        int int3 = getDefaultSize(getSuggestedMinimumHeight(), int2);
        int int4 = getDefaultSize(getSuggestedMinimumWidth(), int1);

        if (L) {
            int int6 = Math.min(int4, int3);

            setMeasuredDimension(int6, int6);
        } else
            setMeasuredDimension(int4, int3);
        O = (float) int3 / 2.0F - n - q - 1.5F * s;
        N = (float) int4 / 2.0F - n - q - 1.5F * s;
        if (K) {
            if (p - n - q - s < O)
                O = p - n - q - 1.5F * s;
            if (o - n - q - s < N)
                N = o - n - q - 1.5F * s;
        }
        if (L) {
            float float5 = Math.min(O, N);

            O = float5;
            N = float5;
        }
        b();
    }

    protected void onRestoreInstanceState(Parcelable Parcelable1) {
        Bundle Bundle2 = (Bundle) Parcelable1;

        super.onRestoreInstanceState(Bundle2.getParcelable("PARENT"));
        I = Bundle2.getInt("MAX");
        J = (float) Bundle2.getInt("PROGRESS");
        z = Bundle2.getInt("mCircleColor");
        B = Bundle2.getInt("mCircleProgressColor");
        w = Bundle2.getInt("mPointerColor");
        x = Bundle2.getInt("mPointerHaloColor");
        y = Bundle2.getInt("mPointerHaloColorOnTouch");
        C = Bundle2.getInt("mPointerAlpha");
        D = Bundle2.getInt("mPointerAlphaOnTouch");
        M = Bundle2.getBoolean("lockEnabled");
        a();
        b();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable Parcelable1 = super.onSaveInstanceState();
        Object Object2 = new Bundle();

        ((Bundle) Object2).putParcelable("PARENT", Parcelable1);
        ((Bundle) Object2).putInt("MAX", I);
        ((Bundle) Object2).putInt("PROGRESS", (int) J);
        ((Bundle) Object2).putInt("mCircleColor", z);
        ((Bundle) Object2).putInt("mCircleProgressColor", B);
        ((Bundle) Object2).putInt("mPointerColor", w);
        ((Bundle) Object2).putInt("mPointerHaloColor", x);
        ((Bundle) Object2).putInt("mPointerHaloColorOnTouch", y);
        ((Bundle) Object2).putInt("mPointerAlpha", C);
        ((Bundle) Object2).putInt("mPointerAlphaOnTouch", D);
        ((Bundle) Object2).putBoolean("lockEnabled", M);
        return (Parcelable) Object2;
    }

    public void setCircleColor(int int1) {
        z = int1;
        g.setColor(z);
        invalidate();
    }

    public void setCircleFillColor(int int1) {
        A = int1;
        h.setColor(A);
        invalidate();
    }

    public void setCircleProgressColor(int int1) {
        B = int1;
        i.setColor(B);
        invalidate();
    }

    public void setLockEnabled(boolean boolean1) {
        M = boolean1;
    }

    public void setMax(int int1) {
        if (int1 > 0) {
            if ((float) int1 <= J)
                J = 0.0F;
            I = int1;
            b();
            invalidate();
        }
    }

    public void setOnSeekBarChangeListener$624defb7(android.support.design.widget.K K1) {
        R = K1;
    }

    public void setPointerAlpha(int int1) {
        if (int1 >= 0 && int1 <= 255) {
            C = int1;
            l.setAlpha(C);
            invalidate();
        }
    }

    public void setPointerAlphaOnTouch(int int1) {
        if (int1 >= 0 && int1 <= 255)
            D = int1;
    }

    public void setPointerColor(int int1) {
        w = int1;
        k.setColor(w);
        invalidate();
    }

    public void setPointerHaloColor(int int1) {
        x = int1;
        l.setColor(x);
        invalidate();
    }

    public void setProgress(float float1) {
        if (J != float1) {
            J = float1;
            b();
            invalidate();
        }
    }
}
