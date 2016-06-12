
package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.support.v7.widget.ah;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;
import com.clilystudio.netbook.model.UgcFilterRoot$FilterGroup;
import com.clilystudio.netbook.widget.UgcFilterTextView;

final class ak extends ah {

    public ak(UGCMainActivity UGCMainActivity1, Context Context2, UgcFilterRoot$FilterGroup[] FilterGroup_1darray3)
    {
        c = UGCMainActivity1;
        a = false;
        b = LayoutInflater.from( Context2 );
        d = FilterGroup_1darray3;
    }

    boolean a;
    LayoutInflater b;
    UGCMainActivity c;     // final access specifier removed
    private UgcFilterRoot$FilterGroup[] d;

    public final int a()
    {
        int int1;

        if( a )
            int1 = 1;
        else
            int1 = 0;
        return int1 + d.length;
    }

    public final int a(int int1)
    {
        if( int1 == 0 && a )
            return 0;
        else
            return 1;
    }

    public final ay a(ViewGroup ViewGroup1, int int2)
    {
        switch( int2 )
        {
            default:
                return null;
            case 0:
                return (ay) new an( this, b.inflate( 2130903403, ViewGroup1, false ) );
            case 1:
                return (ay) new al( this, b.inflate( 2130903406, ViewGroup1, false ) );
        }
    }

    public final void a(ay ay1, int int2)
    {
        if( int2 == 0 && a )
        {
            an an15 = (an) ay1;
            String String16 = c.getString( 2131034561 );

            an15.j = String16;
            if( UGCMainActivity.j( an15.k.c ).equals( String16 ) )
            {
                an15.i.setTextColor( android.support.design.widget.am.a( (Context) an15.k.c, 2130771972 ) );
                an15.i.setBackgroundResource( android.support.design.widget.am.b( (Context) an15.k.c, 2130771998 ) );
            }
            else
            {
                an15.i.setTextColor( android.support.design.widget.am.a( (Context) an15.k.c, 16842808 ) );
                an15.i.setBackgroundResource( android.support.design.widget.am.b( (Context) an15.k.c, 2130771974 ) );
                return;
            }
        }
        else
        {
            al al3 = (al) ay1;
            UgcFilterRoot$FilterGroup[] FilterGroup_1darray4 = d;
            int int5;
            UgcFilterRoot$FilterGroup FilterGroup6;

            if( a )
                int5 = 1;
            else
                int5 = 0;
            FilterGroup6 = FilterGroup_1darray4[int2 - int5];
            if( FilterGroup6 != null )
            {
                int int7;
                String[] String_1darray8;
                int int9;

                al3.i.setText( (CharSequence) FilterGroup6.getName() );
                int7 = (-1 + (4 + FilterGroup6.getTags().length)) / 4;
                String_1darray8 = FilterGroup6.getTags();
                al3.j.removeAllViews();
                for( int9 = 0; int9 < int7; ++int9 )
                {
                    Object Object10 = (ViewGroup) al3.k.b.inflate( 2130903407, (ViewGroup) al3.j, false );
                    int int11;

                    for( int11 = 0; int11 < Math.min( 4, String_1darray8.length - (int9 << 2) ); ++int11 )
                    {
                        UgcFilterTextView UgcFilterTextView13 = (UgcFilterTextView) ((ViewGroup) Object10).getChildAt( int11 );
                        String String14 = String_1darray8[int11 + (int9 << 2)];

                        UgcFilterTextView13.setVisibility( 0 );
                        UgcFilterTextView13.setText( String14 );
                        UgcFilterTextView13.setSelected( UGCMainActivity.j( al3.k.c ).equals( UgcFilterTextView13.a() ) );
                        UgcFilterTextView13.setOnClickListener( (View$OnClickListener) new am( al3, String14 ) );
                    }
                    if( String_1darray8.length - (int9 << 2) < 4 )
                    {
                        int int12;

                        for( int12 = String_1darray8.length - (int9 << 2); int12 < 4; ++int12 )
                            ((ViewGroup) Object10).getChildAt( int12 ).setVisibility( 4 );
                    }
                    al3.j.addView( (View) Object10 );
                }
            }
        }
    }
}
