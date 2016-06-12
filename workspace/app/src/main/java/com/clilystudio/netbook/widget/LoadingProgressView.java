
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.c.a.D;
import com.c.a.w;

public class LoadingProgressView extends ProgressView {

    public LoadingProgressView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private float b;
    private com.c.a.d c;
    private boolean a = true;
    private D d = new ae( this );
    private D e = new ag( this );

    static float a(LoadingProgressView LoadingProgressView1, float float2)
    {
        LoadingProgressView1.b = float2;
        return float2;
    }

    static boolean a(LoadingProgressView LoadingProgressView1)
    {
        return LoadingProgressView1.a;
    }

    static float b(LoadingProgressView LoadingProgressView1)
    {
        return LoadingProgressView1.b;
    }

    public final void a()
    {
        Object Object1;
        Object Object3;
        Object Object5;

        if( getVisibility() != 0 )
            setVisibility( 0 );
        a = false;
        if( c != null && c.d() )
            c.c();
        Object1 = w.a( new float[] { 0.0F, 60.0F } );
        ((w) Object1).a( 5000L );
        Object3 = w.a( new float[] { 60.0F, 80.0F } );
        ((w) Object3).a( 5000L );
        Object5 = w.a( new float[] { 80.0F, 90.0F } );
        ((w) Object5).a( 5000L );
        ((w) Object1).a( d );
        ((w) Object3).a( d );
        ((w) Object5).a( d );
        c = new com.c.a.d();
        c.a( new com.c.a.a[] { Object1, Object3, Object5 } );
        c.a();
    }

    public final void a(ah ah1)
    {
        float[] float_1darray2;
        w w3;

        a = true;
        float_1darray2 = new float[2];
        float_1darray2[0] = b;
        float_1darray2[1] = 100.0F;
        w3 = w.a( float_1darray2 );
        w3.a( 300L );
        w3.a( e );
        w3.a( (com.c.a.b) new af( this, ah1 ) );
        w3.a();
    }

    public final boolean b()
    {
        return a;
    }
}
