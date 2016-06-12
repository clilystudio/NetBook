
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Path$Direction;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.c.a.D;
import com.clilystudio.netbook.R$styleable;

public class CoverLoadingLayer extends ImageView {

    public CoverLoadingLayer(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        a = -1308622848;
        b = -1.0F;
        c = -1.0F;
        d = -1.0F;
        e = -1.0F;
        f = -1.0F;
        w = (D) new t( this );
        x = (com.c.a.b) new u( this );
        y = (D) new v( this );
        z = (D) new w( this );
        A = (com.c.a.b) new x( this );
        a( Context1, AttributeSet2 );
    }

    private com.c.a.b A;
    private int a;
    private float b;
    private float c;
    private float d;
    private float e;
    private float f;
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
    private CoverLoadingLayer$Status r;
    private com.c.a.w s;
    private float t;
    private int u;
    private float v;
    private D w;
    private com.c.a.b x;
    private D y;
    private D z;

    public CoverLoadingLayer(Context Context1)
    {
        super( Context1 );
        a = -1308622848;
        b = -1.0F;
        c = -1.0F;
        d = -1.0F;
        e = -1.0F;
        f = -1.0F;
        w = (D) new t( this );
        x = (com.c.a.b) new u( this );
        y = (D) new v( this );
        z = (D) new w( this );
        A = (com.c.a.b) new x( this );
        a( Context1, null );
    }

    static float a(CoverLoadingLayer CoverLoadingLayer1, float float2)
    {
        CoverLoadingLayer1.b = float2;
        return float2;
    }

    private static int a(float float1)
    {
        return (int) (360.0F * (float1 / 100.0F) - 90.0F);
    }

    static int a(CoverLoadingLayer CoverLoadingLayer1, int int2)
    {
        CoverLoadingLayer1.g = int2;
        return int2;
    }

    static com.c.a.w a(CoverLoadingLayer CoverLoadingLayer1, com.c.a.w w2)
    {
        CoverLoadingLayer1.s = w2;
        return w2;
    }

    static CoverLoadingLayer$Status a(CoverLoadingLayer CoverLoadingLayer1, CoverLoadingLayer$Status Status2)
    {
        CoverLoadingLayer1.r = Status2;
        return Status2;
    }

    private void a(Context Context1, AttributeSet AttributeSet2)
    {
        int int3;

        if( AttributeSet2 != null )
        {
            TypedArray TypedArray6 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.CoverLoadingLayer );

            f = TypedArray6.getDimension( 1, -1.0F );
            TypedArray6.recycle();
        }
        v = 0.0F;
        n = getResources().getDimension( 2131099909 );
        c = getResources().getDimension( 2131099908 );
        j = getResources().getDimension( 2131099910 );
        i = getResources().getDimension( 2131099912 );
        h = getResources().getDimension( 2131099911 );
        t = getResources().getDimension( 2131099907 );
        u = getResources().getColor( 2131427513 );
        e = c;
        i();
        k = com.c.a.w.a( new float[] { 0.0010000000474974513F, 1.0F } );
        int3 = getResources().getInteger( 17694721 );
        k.a( (long) int3 );
        k.a( z );
        k.a( x );
        k.a( (Interpolator) new DecelerateInterpolator() );
        l = com.c.a.w.a( new float[] { 1.0F, 0.0010000000474974513F } );
        l.a( (long) int3 );
        l.a( w );
        l.a( A );
        l.a( (Interpolator) new AccelerateInterpolator() );
    }

    static void a(CoverLoadingLayer CoverLoadingLayer1)
    {
        if( CoverLoadingLayer1.p != CoverLoadingLayer1.o && CoverLoadingLayer1.p > CoverLoadingLayer1.o )
            CoverLoadingLayer1.setProgress( CoverLoadingLayer1.p );
    }

    private boolean a(int int1)
    {
        if( int1 <= 100 )
        {
            if( (m == null || !m.d()) && r != CoverLoadingLayer$Status.PAUSE )
                return false;
            p = int1;
        }
        return true;
    }

    private float b(float float1)
    {
        return float1 * getResources().getDisplayMetrics().density;
    }

    static float b(CoverLoadingLayer CoverLoadingLayer1, float float2)
    {
        CoverLoadingLayer1.d = float2;
        return float2;
    }

    static com.c.a.w b(CoverLoadingLayer CoverLoadingLayer1)
    {
        return CoverLoadingLayer1.h();
    }

    static com.c.a.w c(CoverLoadingLayer CoverLoadingLayer1)
    {
        return CoverLoadingLayer1.s;
    }

    static float d(CoverLoadingLayer CoverLoadingLayer1)
    {
        return CoverLoadingLayer1.e;
    }

    private com.c.a.w h()
    {
        float[] float_1darray1 = new float[2];
        com.c.a.w w2;

        float_1darray1[0] = n;
        float_1darray1[1] = 2.0F * n;
        w2 = com.c.a.w.a( float_1darray1 );
        w2.a( (long) getResources().getInteger( 17694721 ) );
        w2.a( (Interpolator) new AccelerateInterpolator() );
        w2.a( (D) new r( this ) );
        w2.a( (com.c.a.b) new s( this ) );
        return w2;
    }

    private void i()
    {
        r = CoverLoadingLayer$Status.NONE;
        o = 0;
        p = 0;
        b = n;
        d = -1.0F;
    }

    private boolean j()
    {
        if( this.l != null && l.d() )
            return true;
        else
            return false;
    }

    public final boolean a()
    {
        if( o == 100 )
            return true;
        else
            return false;
    }

    public final void b()
    {
        r = CoverLoadingLayer$Status.PAUSE;
        d = e;
        invalidate();
    }

    public final void c()
    {
        i();
        invalidate();
    }

    public final void d()
    {
        r = CoverLoadingLayer$Status.PENDING;
        invalidate();
    }

    public final void e()
    {
        r = CoverLoadingLayer$Status.PREPARE;
        invalidate();
    }

    public final void f()
    {
        r = CoverLoadingLayer$Status.DOWNLOADED;
        invalidate();
    }

    public final boolean g()
    {
        if( s != null && s.d() )
            return true;
        else
            return false;
    }

    protected void onDraw(Canvas Canvas1)
    {
        int int2;

        super.onDraw( Canvas1 );
        int2 = getWidth();
        getHeight();
        if( f == -1.0F )
            f = 0.10000000149011612F * (float) int2;
        if( r != CoverLoadingLayer$Status.NONE )
        {
            if( r == CoverLoadingLayer$Status.DOWNLOADED )
            {
                ShapeDrawable ShapeDrawable29;

                Canvas1.save();
                Canvas1.translate( (float) getWidth() - t, 0.0F );
                ShapeDrawable29 = new ShapeDrawable( (Shape) new p( f ) );
                ShapeDrawable29.setBounds( 0, 0, (int) t, (int) t );
                ShapeDrawable29.getPaint().setColor( u );
                ShapeDrawable29.draw( Canvas1 );
                Canvas1.restore();
                return;
            }
            else
            {
                Bitmap Bitmap4;
                Canvas Canvas5;
                Paint Paint6;
                int int8;
                int int9;
                int int10;
                int int11;
                Paint Paint12;
                RectF RectF13;

                new Paint().setColor( -65536 );
                new Paint().setColor( -16711936 );
                Bitmap4 = Bitmap.createBitmap( getWidth(), getHeight(), Bitmap$Config.ARGB_8888 );
                Bitmap4.eraseColor( 0 );
                Canvas5 = new Canvas( Bitmap4 );
                Paint6 = new Paint();
                Paint6.setColor( getResources().getColor( 17170445 ) );
                Paint6.setXfermode( (Xfermode) new PorterDuffXfermode( PorterDuff$Mode.CLEAR ) );
                Paint6.setAntiAlias( true );
                int8 = getWidth();
                int9 = getHeight();
                Canvas5.drawColor( a );
                int10 = int8 / 2;
                int11 = int9 / 2;
                Canvas5.drawCircle( (float) int10, (float) int11, b, Paint6 );
                Paint12 = new Paint( 1 );
                Paint12.setAntiAlias( true );
                Paint12.setColor( a );
                RectF13 = new RectF( (float) int10 - c, (float) int11 - c, (float) int10 + c, (float) int11 + c );
                if( r == CoverLoadingLayer$Status.PROGRESS )
                    Canvas5.drawArc( RectF13, (float) g, (float) (270 - g), true, Paint12 );
                if( f != 0.0F )
                {
                    Path Path14 = new Path();

                    Path14.addRoundRect( new RectF( 0.0F, 0.0F, (float) getWidth(), (float) getHeight() ), f, f, Path$Direction.CCW );
                    Canvas1.clipPath( Path14 );
                }
                if( r == CoverLoadingLayer$Status.PENDING || r == CoverLoadingLayer$Status.PREPARE )
                {
                    Paint Paint16;
                    float float17;
                    ShapeDrawable ShapeDrawable19;
                    ShapeDrawable ShapeDrawable20;

                    Canvas5.drawCircle( (float) (getWidth() / 2), (float) (getHeight() / 2), n, Paint12 );
                    Paint16 = new Paint( 1 );
                    Paint16.setColor( getResources().getColor( 2131427386 ) );
                    float17 = n - e;
                    Paint16.setStrokeWidth( float17 );
                    Paint16.setStyle( Paint$Style.STROKE );
                    Canvas5.drawCircle( (float) (getWidth() / 2), (float) (getHeight() / 2), e + float17 / 2.0F, Paint16 );
                    Canvas5.save();
                    Canvas5.translate( (float) (getWidth() / 2) - b( 1.5F ), (float) (getHeight() / 2) - b( 5.0F ) );
                    ShapeDrawable19 = new ShapeDrawable( (Shape) new RoundRectShape( new float[] { 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F }, null, null ) );
                    ShapeDrawable19.setBounds( 0, 0, (int) b( 2.0F ), (int) b( 7.0F ) );
                    ShapeDrawable19.getPaint().setColor( Paint16.getColor() );
                    ShapeDrawable19.draw( Canvas5 );
                    ShapeDrawable20 = new ShapeDrawable( (Shape) new RoundRectShape( new float[] { 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F }, null, null ) );
                    ShapeDrawable20.setBounds( (int) b( 2.0F ), (int) b( 5.0F ), (int) b( 6.0F ), (int) b( 7.0F ) );
                    ShapeDrawable20.getPaint().setColor( Paint16.getColor() );
                    ShapeDrawable20.draw( Canvas5 );
                    Canvas5.restore();
                }
                Canvas1.drawBitmap( Bitmap4, 0.0F, 0.0F, null );
                if( r == CoverLoadingLayer$Status.PAUSE && 2.0F * d > 1.0F )
                {
                    Bitmap Bitmap21;
                    Canvas Canvas22;
                    Paint Paint23;
                    int int24;
                    RectF RectF25;
                    int int26;
                    RectF RectF27;

                    Canvas5.drawCircle( (float) int10, (float) int11, d, Paint6 );
                    Bitmap21 = Bitmap.createBitmap( getWidth(), getHeight(), Bitmap$Config.ARGB_8888 );
                    Canvas22 = new Canvas( Bitmap21 );
                    Canvas22.drawCircle( (float) int10, (float) int11, d, Paint12 );
                    Paint23 = new Paint();
                    Paint23.setColor( -1 );
                    int24 = (int) ((float) int10 - j / 2.0F - i / 2.0F);
                    RectF25 = new RectF();
                    RectF25.left = (float) int24 - i / 2.0F;
                    RectF25.right = (float) int24 + i / 2.0F;
                    RectF25.top = (float) int11 - h / 2.0F;
                    RectF25.bottom = (float) int11 + h / 2.0F;
                    Canvas22.drawRoundRect( RectF25, 1.0F, 1.0F, Paint23 );
                    int26 = (int) ((float) int10 + j / 2.0F + i / 2.0F);
                    RectF27 = new RectF();
                    RectF27.left = (float) int26 - i / 2.0F;
                    RectF27.right = (float) int26 + i / 2.0F;
                    RectF27.top = (float) int11 - h / 2.0F;
                    RectF27.bottom = (float) int11 + h / 2.0F;
                    Canvas22.drawRoundRect( RectF27, 1.0F, 1.0F, Paint23 );
                    Canvas1.drawBitmap( Bitmap21, 0.0F, 0.0F, null );
                    return;
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1)
    {
        if( MotionEvent1.getAction() == 1 )
        {
            int int2;

label_25:
            {
                if( !g() && !j() )
                {
                    int int3;

                    if( m != null && m.d() )
                        int3 = 1;
                    else
                        int3 = 0;
                    int2 = 0;
                    if( int3 == 0 )
                        break label_25;
                }
                int2 = 1;
            }
            if( int2 == 0 )
            {
                if( r == CoverLoadingLayer$Status.PROGRESS )
                {
                    b();
                    if( q != null )
                        q.a();
                }
                else if( r == CoverLoadingLayer$Status.PAUSE )
                {
                    d = 0.0F;
                    r = CoverLoadingLayer$Status.PROGRESS;
                    invalidate();
                    if( q != null )
                    {
                        q.b();
                        return true;
                    }
                }
                else if( r == CoverLoadingLayer$Status.PENDING )
                {
                    b();
                    if( q != null )
                    {
                        q.c();
                        return true;
                    }
                }
            }
        }
        return true;
    }

    public void setCornerRadius(float float1)
    {
        f = float1;
    }

    public void setCoverListener(y y1)
    {
        q = y1;
    }

    public void setProgress(int int1)
    {
        int int2 = 1;

        if( !a( int1 ) )
        {
            if( int1 < o )
            {
                clearAnimation();
                if( !a( int1 ) )
                {
                    o = int1;
                    g = a( (float) o );
                    r = CoverLoadingLayer$Status.PROGRESS;
                    invalidate();
                    if( a() )
                    {
                        h().a();
                        return;
                    }
                }
            }
            else
            {
                int int3;
                int[] int_1darray4;
                com.c.a.w w5;

                r = CoverLoadingLayer$Status.PROGRESS;
                int3 = o;
                o = int1;
                if( m != null )
                    m.b();
                d = 0.0F;
                int_1darray4 = new int[2];
                int_1darray4[0] = a( (float) int3 );
                int_1darray4[int2] = a( (float) int1 );
                w5 = com.c.a.w.a( int_1darray4 );
                w5.a( 300L );
                w5.a( y );
                w5.a( (com.c.a.b) new q( this ) );
                m = w5;
                if( k == null || !k.d() )
                    int2 = 0;
                if( int2 == 0 && !j() )
                {
                    m.a();
                    return;
                }
            }
        }
    }
}
