
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.clilystudio.netbook.R$styleable;

public class LoadingContainer extends FrameLayout {

    public LoadingContainer(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        int int5;
        int int4;
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.LoadingContainer );
        int4 = TypedArray3.getResourceId( 0, 2130903324 );
        int5 = TypedArray3.getResourceId( 1, 2130903324 );
        TypedArray3.recycle();
        b = LayoutInflater.from( Context1 ).inflate( int4, (ViewGroup) this, false );
        c = LayoutInflater.from( Context1 ).inflate( int5, (ViewGroup) this, false );
    }

    private View a;
    private View b;     // final access specifier removed
    private View c;     // final access specifier removed

    public final void a()
    {
        b.setVisibility( 8 );
        c.setVisibility( 8 );
        a.setVisibility( 0 );
    }

    public final void b()
    {
        b.setVisibility( 0 );
        c.setVisibility( 8 );
        a.setVisibility( 8 );
    }

    public final void c()
    {
        b.setVisibility( 8 );
        c.setVisibility( 0 );
        a.setVisibility( 8 );
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        if( getChildCount() != 1 )
            throw new RuntimeException( "You must set one content child!" );
        else
        {
            a = getChildAt( 0 );
            addView( b );
            addView( c );
            a();
            return;
        }
    }
}
