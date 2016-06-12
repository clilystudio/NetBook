
package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.ap;
import android.support.v7.widget.ar;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;

public class D extends LinearLayoutManager {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public D(Context Context1)
    {
        super( Context1 );
    }

    private int[] d = new int[2];

    public final void a(ar ar1, int int2, int int3)
    {
        int int4 = View$MeasureSpec.getMode( int2 );
        int int5 = View$MeasureSpec.getMode( int3 );
        int int6 = View$MeasureSpec.getSize( int2 );
        int int7 = View$MeasureSpec.getSize( int3 );
        int int8 = 0;
        int int9 = 0;
        int int10;

        for( int10 = 0; int10 < o(); ++int10 )
        {
            int int11 = View$MeasureSpec.makeMeasureSpec( int10, 0 );
            int int12 = View$MeasureSpec.makeMeasureSpec( int10, 0 );
            int[] int_1darray13 = d;

            try
            {
                View View16 = ar1.b( 0 );
            }
            catch( Exception Exception15 )
            {
                try
                {
                    Exception15.printStackTrace();
                }
                finally
                {
                    throw Object14;
                }
            }
            finally
            {
                throw Object14;
            }
            if( e() == 0 )
            {
                int8 += d[0];
                if( int10 == 0 )
                    int9 = d[1];
            }
            else
            {
                int9 += d[1];
                if( int10 == 0 )
                    int8 = d[0];
            }
        }
        switch( int4 )
        {
            case 0:
                int8 = int6;
                break;
            default:
                break;
        }
        switch( int5 )
        {
            case 0:
                int9 = int7;
                break;
            default:
                break;
        }
        e( int8, int9 );
    }
}
