
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class ThemeLoadingView extends FrameLayout {

    public ThemeLoadingView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private LoadingProgressView a;
    private LoadingProgressView b;
    private ThemeLoadingView$Mode c = ThemeLoadingView$Mode.LIGHT;
    private boolean d = true;

    static boolean a(ThemeLoadingView ThemeLoadingView1, boolean boolean2)
    {
        ThemeLoadingView1.d = true;
        return true;
    }

    private void c()
    {
        if( c == ThemeLoadingView$Mode.LIGHT )
            setBackgroundResource( 2130837696 );
        else
            setBackgroundResource( 2130837695 );
    }

    private LoadingProgressView d()
    {
        if( c == ThemeLoadingView$Mode.LIGHT )
            return a;
        else
            return b;
    }

    public final void a()
    {
        LoadingProgressView LoadingProgressView1 = d();

        if( d )
        {
            d = false;
            setVisibility( 0 );
            LoadingProgressView1.a();
        }
    }

    public final void a(boolean boolean1)
    {
        ThemeLoadingView$Mode Mode2;
        int int3;

        if( boolean1 )
            Mode2 = ThemeLoadingView$Mode.DARK;
        else
            Mode2 = ThemeLoadingView$Mode.LIGHT;
        c = Mode2;
        if( c == ThemeLoadingView$Mode.LIGHT )
        {
            a.setVisibility( 0 );
            b.setVisibility( 8 );
        }
        else
        {
            b.setVisibility( 0 );
            a.setVisibility( 8 );
        }
        c();
        if( !d().b() )
            int3 = 1;
        else
            int3 = 0;
        if( int3 != 0 )
            a();
    }

    public final void b()
    {
        LoadingProgressView LoadingProgressView1 = d();

        if( !d )
            LoadingProgressView1.a( (ah) new aC( this ) );
    }

    protected void onFinishInflate()
    {
        int int1;

        super.onFinishInflate();
        int1 = getResources().getDimensionPixelSize( 2131099927 );
        setPadding( int1, int1, int1, int1 );
        a = (LoadingProgressView) findViewById( 2131493168 );
        b = (LoadingProgressView) findViewById( 2131493169 );
        c();
    }
}
