package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

import com.c.a.b;
import com.clilystudio.netbook.R;

public class CoverLoadingLayer extends ImageView {
    private b A;
    private int a = -1308622848;
    private float b = -1.0f;
    private float c = -1.0f;
    private float d = -1.0f;
    private float e = -1.0f;
    private float f = -1.0f;
    private int g;
    private float h;
    private float i;
    private float j;
    private com.c.a.w k;
    private com.c.a.w l;
    private com.c.a.w m;
    private float n;
    private int o;
    private int p;
    private y q;
    private CoverLoadingLayer.Status r;
    private com.c.a.w s;
    private float t;
    private int u;
    private float v;
    private D w;
    private b x;
    private D y;
    private D z;

    public CoverLoadingLayer(Context context) {
        super(context);
        this.w = new t(this);
        this.x = new u(this);
        this.y = new v(this);
        this.z = new w(this);
        this.A = new x(this);
        this.a(context, null);
    }

    public CoverLoadingLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = new t(this);
        this.x = new u(this);
        this.y = new v(this);
        this.z = new w(this);
        this.A = new x(this);
        this.a(context, attributeSet);
    }

    static /* synthetic */ float a(CoverLoadingLayer coverLoadingLayer, float f) {
        coverLoadingLayer.b = f;
        return f;
    }

    private static int a(float f) {
        return (int) (360.0f * (f / 100.0f) - 90.0f);
    }

    static /* synthetic */ int a(CoverLoadingLayer coverLoadingLayer, int n) {
        coverLoadingLayer.g = n;
        return n;
    }

    static /* synthetic */ com.c.a.w a(CoverLoadingLayer coverLoadingLayer, com.c.a.w w2) {
        coverLoadingLayer.s = w2;
        return w2;
    }

    static /* synthetic */ CoverLoadingLayer.Status a(CoverLoadingLayer coverLoadingLayer, CoverLoadingLayer.Status status) {
        coverLoadingLayer.r = status;
        return status;
    }

    static /* synthetic */ void a(CoverLoadingLayer coverLoadingLayer) {
        if (coverLoadingLayer.p != coverLoadingLayer.o && coverLoadingLayer.p > coverLoadingLayer.o) {
            coverLoadingLayer.setProgress(coverLoadingLayer.p);
        }
    }

    static /* synthetic */ float b(CoverLoadingLayer coverLoadingLayer, float f) {
        coverLoadingLayer.d = f;
        return f;
    }

    static /* synthetic */ com.c.a.w b(CoverLoadingLayer coverLoadingLayer) {
        return coverLoadingLayer.h();
    }

    static /* synthetic */ com.c.a.w c(CoverLoadingLayer coverLoadingLayer) {
        return coverLoadingLayer.s;
    }

    static /* synthetic */ float d(CoverLoadingLayer coverLoadingLayer) {
        return coverLoadingLayer.e;
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.CoverLoadingLayer);
            this.f = typedArray.getDimension(R.styleable.CoverLoadingLayer_scv_corner_radius, -1.0f);
            typedArray.recycle();
        }
        this.v = 0.0f;
        this.n = this.getResources().getDimension(R.dimen.scv_outer_circle_radius);
        this.c = this.getResources().getDimension(R.dimen.scv_inner_circle_radius);
        this.j = this.getResources().getDimension(R.dimen.scv_pause_icon_gap);
        this.i = this.getResources().getDimension(R.dimen.scv_pause_icon_width);
        this.h = this.getResources().getDimension(R.dimen.scv_pause_icon_height);
        this.t = this.getResources().getDimension(R.dimen.scv_finished_size);
        this.u = this.getResources().getColor(R.color.scv_finished_color);
        this.e = this.c;
        this.i();
        this.k = com.c.a.w.a(0.001f, 1.0f);
        int n = this.getResources().getInteger(17694721);
        this.k.a(n);
        this.k.a(this.z);
        this.k.a(this.x);
        this.k.a(new DecelerateInterpolator());
        this.l = com.c.a.w.a(1.0f, 0.001f);
        this.l.a(n);
        this.l.a(this.w);
        this.l.a(this.A);
        this.l.a(new AccelerateInterpolator());
    }

    private boolean a(int n) {
        if (n > 100) {
            return true;
        }
        if (this.m != null && this.m.d() || this.r == CoverLoadingLayer.Status.PAUSE) {
            this.p = n;
            return true;
        }
        return false;
    }

    private float b(float f) {
        return f * this.getResources().getDisplayMetrics().density;
    }

    private com.c.a.w h() {
        float[] arrf = new float[]{this.n, 2.0f * this.n};
        com.c.a.w w2 = com.c.a.w.a(arrf);
        w2.a(this.getResources().getInteger(17694721));
        w2.a(new AccelerateInterpolator());
        w2.a((D) ((Object) new r(this)));
        w2.a((b) ((Object) new s(this)));
        return w2;
    }

    private void i() {
        this.r = CoverLoadingLayer.Status.NONE;
        this.o = 0;
        this.p = 0;
        this.b = this.n;
        this.d = -1.0f;
    }

    private boolean j() {
        if (this.l != null && this.l.d()) {
            return true;
        }
        return false;
    }

    public final boolean a() {
        if (this.o == 100) {
            return true;
        }
        return false;
    }

    public final void b() {
        this.r = CoverLoadingLayer.Status.PAUSE;
        this.d = this.e;
        this.invalidate();
    }

    public final void c() {
        this.i();
        this.invalidate();
    }

    public final void d() {
        this.r = CoverLoadingLayer.Status.PENDING;
        this.invalidate();
    }

    public final void e() {
        this.r = CoverLoadingLayer.Status.PREPARE;
        this.invalidate();
    }

    public final void f() {
        this.r = CoverLoadingLayer.Status.DOWNLOADED;
        this.invalidate();
    }

    public final boolean g() {
        if (this.s != null && this.s.d()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int n = this.getWidth();
        this.getHeight();
        if (this.f == -1.0f) {
            this.f = 0.1f * (float) n;
        }
        if (this.r == CoverLoadingLayer.Status.NONE) {
            return;
        }
        if (this.r == CoverLoadingLayer.Status.DOWNLOADED) {
            canvas.save();
            canvas.translate((float) this.getWidth() - this.t, 0.0f);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new Shape() {
                private RectF arect;

                @Override
                public void draw(Canvas canvas, Paint paint) {
                    float widthf = arect.width();
                    Path path = new Path();
                    path.moveTo(0.0f, 0.0f);
                    path.lineTo(widthf - f, 0.0f);
                    path.addArc(new RectF(widthf - 2.0f * f, 0.0f, widthf, 2.0f * f), -90.0f, 90.0f);
                    path.lineTo(widthf, widthf);
                    path.lineTo(0.0f, 0.0f);
                    path.close();
                    canvas.drawPath(path, paint);
                }

                @Override
                protected void onResize(float width, float height) {
                    super.onResize(width, height);
                    arect = new RectF(0.0f, 0.0f, width, height);
                }
            });
            shapeDrawable.setBounds(0, 0, (int) this.t, (int) this.t);
            shapeDrawable.getPaint().setColor(this.u);
            shapeDrawable.draw(canvas);
            canvas.restore();
            return;
        }
        new Paint().setColor(-65536);
        new Paint().setColor(-16711936);
        Bitmap bitmap = Bitmap.createBitmap(this.getWidth(), this.getHeight(), Bitmap.Config.ARGB_8888);
        bitmap.eraseColor(0);
        Canvas canvas2 = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColor(this.getResources().getColor(17170445));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint.setAntiAlias(true);
        int n2 = this.getWidth();
        int n3 = this.getHeight();
        canvas2.drawColor(this.a);
        int n4 = n2 / 2;
        int n5 = n3 / 2;
        canvas2.drawCircle(n4, n5, this.b, paint);
        Paint paint2 = new Paint(1);
        paint2.setAntiAlias(true);
        paint2.setColor(this.a);
        RectF rectF = new RectF((float) n4 - this.c, (float) n5 - this.c, (float) n4 + this.c, (float) n5 + this.c);
        if (this.r == CoverLoadingLayer.Status.PROGRESS) {
            canvas2.drawArc(rectF, this.g, 270 - this.g, true, paint2);
        }
        if (this.f != 0.0f) {
            Path path = new Path();
            path.addRoundRect(new RectF(0.0f, 0.0f, this.getWidth(), this.getHeight()), this.f, this.f, Path.Direction.CCW);
            canvas.clipPath(path);
        }
        if (this.r == CoverLoadingLayer.Status.PENDING || this.r == CoverLoadingLayer.Status.PREPARE) {
            canvas2.drawCircle(this.getWidth() / 2, this.getHeight() / 2, this.n, paint2);
            Paint paint3 = new Paint(1);
            paint3.setColor(this.getResources().getColor(R.color.cover_semi_transparent));
            float f = this.n - this.e;
            paint3.setStrokeWidth(f);
            paint3.setStyle(Paint.Style.STROKE);
            canvas2.drawCircle(this.getWidth() / 2, this.getHeight() / 2, this.e + f / 2.0f, paint3);
            canvas2.save();
            canvas2.translate((float) (this.getWidth() / 2) - this.b(1.5f), (float) (this.getHeight() / 2) - this.b(5.0f));
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
            shapeDrawable.setBounds(0, 0, (int) this.b(2.0f), (int) this.b(7.0f));
            shapeDrawable.getPaint().setColor(paint3.getColor());
            shapeDrawable.draw(canvas2);
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(new float[]{0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f}, null, null));
            shapeDrawable2.setBounds((int) this.b(2.0f), (int) this.b(5.0f), (int) this.b(6.0f), (int) this.b(7.0f));
            shapeDrawable2.getPaint().setColor(paint3.getColor());
            shapeDrawable2.draw(canvas2);
            canvas2.restore();
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
        if (this.r != CoverLoadingLayer.Status.PAUSE) return;
        if (2.0f * this.d <= 1.0f) return;
        canvas2.drawCircle(n4, n5, this.d, paint);
        Bitmap bitmap2 = Bitmap.createBitmap(this.getWidth(), this.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas3 = new Canvas(bitmap2);
        canvas3.drawCircle(n4, n5, this.d, paint2);
        Paint paint4 = new Paint();
        paint4.setColor(-1);
        int n6 = (int) ((float) n4 - this.j / 2.0f - this.i / 2.0f);
        RectF rectF2 = new RectF();
        rectF2.left = (float) n6 - this.i / 2.0f;
        rectF2.right = (float) n6 + this.i / 2.0f;
        rectF2.top = (float) n5 - this.h / 2.0f;
        rectF2.bottom = (float) n5 + this.h / 2.0f;
        canvas3.drawRoundRect(rectF2, 1.0f, 1.0f, paint4);
        int n7 = (int) ((float) n4 + this.j / 2.0f + this.i / 2.0f);
        RectF rectF3 = new RectF();
        rectF3.left = (float) n7 - this.i / 2.0f;
        rectF3.right = (float) n7 + this.i / 2.0f;
        rectF3.top = (float) n5 - this.h / 2.0f;
        rectF3.bottom = (float) n5 + this.h / 2.0f;
        canvas3.drawRoundRect(rectF3, 1.0f, 1.0f, paint4);
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) return true;
        if (this.g() || this.j()) return true;
        if (this.m != null && this.m.d()) {
            return true;
        }
        boolean bl = false;
        boolean bl2 = false;
        if (bl) return true;
        if (this.r == CoverLoadingLayer.Status.PROGRESS) {
            this.b();
            if (this.q == null) return true;
            {
                this.q.a();
                return true;
            }
        }
        if (this.r == CoverLoadingLayer.Status.PAUSE) {
            this.d = 0.0f;
            this.r = CoverLoadingLayer.Status.PROGRESS;
            this.invalidate();
            if (this.q == null) return true;
            {
                this.q.b();
                return true;
            }
        } else {
            if (this.r != CoverLoadingLayer.Status.PENDING) return true;
            {
                this.b();
                if (this.q == null) return true;
                {
                    this.q.c();
                    return true;
                }
            }
        }
    }

    public void setCornerRadius(float f) {
        this.f = f;
    }

    public void setCoverListener(y y2) {
        this.q = y2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setProgress(int n) {
        int n2 = 1;
        if (this.a(n)) return;
        if (n < this.o) {
            this.clearAnimation();
            if (this.a(n)) return;
            {
                this.o = n;
                this.g = CoverLoadingLayer.a(this.o);
                this.r = CoverLoadingLayer.Status.PROGRESS;
                this.invalidate();
                if (!this.a()) return;
                {
                    this.h().a();
                    return;
                }
            }
        }
        this.r = CoverLoadingLayer.Status.PROGRESS;
        int n3 = this.o;
        this.o = n;
        if (this.m != null) {
            this.m.b();
        }
        this.d = 0.0f;
        int[] arrn = new int[2];
        arrn[0] = CoverLoadingLayer.a(n3);
        arrn[n2] = CoverLoadingLayer.a(n);
        com.c.a.w w2 = com.c.a.w.a(arrn);
        w2.a(300);
        w2.a(this.y);
        w2.a((b) ((Object) new q(this)));
        this.m = w2;
        if (this.k == null || !this.k.d()) {
            n2 = 0;
        }
        if (n2 != 0) {
            return;
        }
        if (this.j()) return;
        this.m.a();
    }
    enum Status {
        NONE,PREPARE,PROGRESS,PAUSE,PENDING,DOWNLOADED;
    }
}
