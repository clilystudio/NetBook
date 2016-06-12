
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class LinearListView extends LinearLayout {

    public LinearListView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        d = Context1;
    }

    private Context d;
    private LinearLayout$LayoutParams e;
    private ad h;
    private static final Integer a = Integer.valueOf( 1 );
    private static final Integer b = Integer.valueOf( 2 );
    private static final Integer c = Integer.valueOf( 0 );
    private List f = new ArrayList();
    private int g = 1;

    private void a(int int1, int int2)
    {
        View View3 = LayoutInflater.from( d ).inflate( 2130903265, null );

        View3.setOnClickListener( (View$OnClickListener) new ac( this, int1 ) );
        ((TextView) View3.findViewById( 2131493622 )).setText( (CharSequence) new StringBuilder().append( int2 ).toString() );
        ((TextView) View3.findViewById( 2131493623 )).setText( (CharSequence) ((Track) f.get( int1 - 1 )).getTrackTitle() );
        addView( View3, (ViewGroup$LayoutParams) e );
    }

    static void a(LinearListView LinearListView1, int int2)
    {
        Track Track3 = (Track) LinearListView1.f.get( int2 - 1 );
        boolean boolean4;

        if( LinearListView1.g == int2 )
        {
            Integer Integer5 = (Integer) Track3.getExtra();
            int int6;

            if( Integer5 == null || c == Integer5 )
                int6 = 1;
            else if( a == Integer5 )
                int6 = 0;
            else
                int6 = 1;
            if( int6 != 0 )
            {
                Track3.setExtra( a );
                boolean4 = int6;
            }
            else
            {
                Track3.setExtra( b );
                boolean4 = int6;
            }
        }
        else
        {
            ((Track) LinearListView1.f.get( -1 + LinearListView1.g )).setExtra( c );
            ((ImageView) LinearListView1.getChildAt( -1 + LinearListView1.g ).findViewById( 2131493624 )).setImageResource( 2130837589 );
            Track3.setExtra( a );
            LinearListView1.g = int2;
            boolean4 = true;
        }
        LinearListView1.b( int2, boolean4 );
        if( LinearListView1.h != null )
            LinearListView1.h.a( int2, boolean4 );
    }

    private void b(int int1, boolean boolean2)
    {
        ImageView ImageView3 = (ImageView) getChildAt( int1 - 1 ).findViewById( 2131493624 );
        AnimationDrawable AnimationDrawable5;

        try
        {
            AnimationDrawable5 = (AnimationDrawable) ImageView3.getDrawable();
        }
        catch( Exception Exception4 )
        {
            ImageView3.setImageResource( 2130837602 );
            AnimationDrawable5 = (AnimationDrawable) ImageView3.getDrawable();
        }
        if( boolean2 )
            AnimationDrawable5.start();
        else
            AnimationDrawable5.stop();
    }

    public final List a()
    {
        return f;
    }

    public final void a(int int1, boolean boolean2)
    {
        Integer Integer3;
        int int4;

        if( boolean2 )
            Integer3 = a;
        else
            Integer3 = b;
        int4 = Integer3.intValue();
        ((Track) f.get( int1 - 1 )).setExtra( Integer.valueOf( int4 ) );
        b( int1, boolean2 );
    }

    public final void a(boolean boolean1)
    {
        int int2;
        int int3;

        Collections.reverse( f );
        removeAllViews();
        int2 = f.size();
        for( int3 = 1; int3 <= int2; ++int3 )
        {
            int int4;

            if( boolean1 )
                int4 = int3;
            else
                int4 = 1 + (int2 - int3);
            a( int3, int4 );
        }
    }

    public void setCurrentPlayIndex(int int1)
    {
        g = int1;
    }

    public void setItemHeight(int int1)
    {
        e = new LinearLayout$LayoutParams( -1, int1 );
    }

    public void setPlayButtonDefault(int int1)
    {
        if( int1 > 0 && getChildAt( int1 - 1 ) != null )
        {
            ((ImageView) getChildAt( int1 - 1 ).findViewById( 2131493624 )).setImageResource( 2130837589 );
            ((Track) f.get( int1 - 1 )).setExtra( c );
        }
    }

    public void setPlayTrackInterface(ad ad1)
    {
        h = ad1;
    }

    public void setShowData(List List1, boolean boolean2, int int3)
    {
        if( List1 == null )
            throw new IllegalArgumentException( "tracks must not null" );
        else
        {
            int int4;
            int int6;

            if( int3 == 1 )
            {
                f.clear();
                removeAllViews();
            }
            int4 = 1 + f.size();
            f.addAll( (Collection) List1 );
            int6 = f.size();
            while( int4 <= int6 )
            {
                int int7;

                if( boolean2 )
                    int7 = int4;
                else
                    int7 = 1 + (int6 - int4);
                a( int4, int7 );
                ++int4;
            }
            return;
        }
    }
}
