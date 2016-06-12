
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class AutoFlowView extends LinearLayout implements View$OnClickListener {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public AutoFlowView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        b();
    }

    private static final String a = null;
    private static int b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private static int g;
    private static i h;
    private static int i;
    private List j;
    private List k;
    private int[] l;

    public AutoFlowView(Context Context1)
    {
        super( Context1 );
        b();
    }

    private void a(List List1, int int2)
    {
        if( j.size() > int2 << 2 )
        {
            Object Object3 = new h( this );

            ((h) Object3).a( e );
            ((h) Object3).a.addAll( (Collection) j.subList( int2 << 2, Math.min( 4 + (int2 << 2), j.size() ) ) );
            ((h) Object3).a( e );
            List1.add( Object3 );
        }
    }

    private void b()
    {
        setOrientation( 0 );
        j = (List) new ArrayList();
        k = (List) new ArrayList();
        g = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 12.0F );
        b = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 6.0F );
        c = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 12.0F );
        d = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 12.0F );
        e = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 16.0F );
        f = com.clilystudio.netbook.hpay100.a.a.a( getContext(), 4.0F );
        if( com.clilystudio.netbook.hpay100.a.a.a( getContext(), "customer_night_theme", false ) )
            l = new int[] { 2130837623, 2130837625, 2130837627, 2130837629, 2130837631, 2130837633, 2130837635 };
        else
            l = new int[] { 2130837622, 2130837624, 2130837626, 2130837628, 2130837630, 2130837632, 2130837634 };
    }

    public final void a()
    {
        LayoutInflater LayoutInflater1;
        List List2;
        Object Object3;
        int int4;
        Object Object6;
        int int7;
        int int8;
        int int11;

        Collections.sort( j, (Comparator) new g( this ) );
        removeAllViews();
        k.clear();
        LayoutInflater1 = LayoutInflater.from( getContext() );
        List2 = j;
        Object3 = new ArrayList();
        int4 = getMeasuredWidth();
        if( int4 == 0 )
        {
            Object Object5 = new ArrayList();

            a( (List) Object5, 0 );
            a( (List) Object5, 1 );
            a( (List) Object5, 2 );
            Object6 = Object5;
        }
        else
        {
            Object Object16 = new h( this );
            int int17 = 0;
            Object Object18 = Object16;
            int int19 = 0;
            int int20 = 0;

            while( int17 < List2.size() )
            {
                Object Object21 = (AutoFlowView$Word) List2.get( int17 );
                int int22 = ((AutoFlowView$Word) Object21).content.length() * g + (c << 1) + e;

                int19 += int22;
                if( int19 >= int4 - f )
                {
                    ++int20;
                    ((h) Object18).a( e );
                    ((List) Object3).add( Object18 );
                    Object18 = new h( this );
                    int19 = int22;
                }
                if( int20 == 3 )
                    break;
                ((h) Object18).a.add( Object21 );
                ++int17;
            }
            Object6 = Object3;
        }
        int7 = 0;
        for( int8 = 0; int7 < ((List) Object6).size(); int8 = int11 )
        {
            h h9 = (h) ((List) Object6).get( int7 );
            int int10 = 0;
            int int15;

            for( int11 = int8; int10 < h9.a.size(); int11 = int15 )
            {
                AutoFlowView$Word Word12 = (AutoFlowView$Word) h9.a.get( int10 );
                Object Object13 = (TextView) LayoutInflater1.inflate( 2130903154, null, false );

                ((TextView) Object13).setTextSize( 12.0F );
                ((TextView) Object13).setBackgroundResource( 2130837844 );
                ((TextView) Object13).setPadding( c, b, c, b );
                ((TextView) Object13).setText( (CharSequence) Word12.content );
                ((TextView) Object13).setOnClickListener( this );
                ((TextView) Object13).setTag( Integer.valueOf( Word12.leftMargin ) );
                ((TextView) Object13).setBackgroundResource( l[int11 % l.length] );
                k.add( Object13 );
                addView( (View) Object13 );
                Word12.show = 1 + Word12.show;
                int15 = int11 + 1;
                ++int10;
            }
            ++int7;
        }
        com.clilystudio.netbook.hpay100.a.a.a( j, com.clilystudio.netbook.c.e, "search_hotword.txt" );
    }

    public void onClick(View View1)
    {
        if( h != null )
        {
            i i2 = h;

            k.indexOf( View1 );
            i2.a( ((TextView) View1).getText().toString() );
        }
    }

    protected void onLayout(boolean boolean1, int int2, int int3, int int4, int int5)
    {
        int int6 = int4 - c;
        int int8;
        int int9;
        int int10;
        int int11;

        Log.d( a, new StringBuilder( "changed = " ).append( boolean1 ).append( " left = 0" ).append( " top = 0" ).append( " right = " ).append( int6 ).append( " botom = " ).append( int5 ).toString() );
        int8 = getChildCount();
        int9 = 0;
        int10 = 0;
        int11 = 0;
        while( int9 < int8 )
        {
            View View12 = getChildAt( int9 );
            int int13 = View12.getMeasuredWidth();
            int int14 = View12.getMeasuredHeight();
            int int15 = ((Integer) View12.getTag()).intValue();
            int int16;

            int10 += int13 + int15;
            if( int11 == 0 )
                int16 = int14;
            else
                int16 = int14 + int11 * (int14 + d);
            if( int10 >= int6 )
            {
                int10 = int13 + int15;
                ++int11;
                int16 = int14 + int11 * (int14 + d);
            }
            View12.layout( int10 - int13, int16 - int14, int10, int16 );
            ++int9;
        }
    }

    protected void onMeasure(int int1, int int2)
    {
        int int3 = getChildCount();
        int int4;

        for( int4 = 0; int4 < int3; ++int4 )
        {
            View View6 = getChildAt( int4 );

            View6.measure( 0, 0 );
            if( int4 == 0 )
                i = 3 * (View6.getMeasuredHeight() + d);
        }
        View$MeasureSpec.getSize( int1 );
        setMeasuredDimension( View$MeasureSpec.getSize( int1 ), i );
    }

    public void setOnItemClickListener(i i1)
    {
        h = i1;
    }

    public void setWords(List List1)
    {
        j.clear();
        if( List1 != null && List1.size() != 0 )
        {
            int int2 = ((AutoFlowView$Word) List1.get( 0 )).show;
            int int3;
            int int4;

            for( int3 = 1; int3 < List1.size(); ++int3 )
            {
                if( ((AutoFlowView$Word) List1.get( int3 )).show < int2 )
                    int2 = ((AutoFlowView$Word) List1.get( int3 )).show;
            }
            for( int4 = 0; int4 < List1.size(); ++int4 )
            {
                Object Object5 = new AutoFlowView$Word();

                ((AutoFlowView$Word) Object5).content = ((AutoFlowView$Word) List1.get( int4 )).content;
                ((AutoFlowView$Word) Object5).show = ((AutoFlowView$Word) List1.get( int4 )).show - int2;
                j.add( Object5 );
            }
            a();
        }
    }

    public void setWords(String[] String_1darray1)
    {
        int int2;
        int int3;

        j.clear();
        int2 = String_1darray1.length;
        for( int3 = 0; int3 < int2; ++int3 )
        {
            String String4 = String_1darray1[int3];
            Object Object5 = new AutoFlowView$Word();

            ((AutoFlowView$Word) Object5).content = String4;
            j.add( Object5 );
        }
        a();
    }
}
