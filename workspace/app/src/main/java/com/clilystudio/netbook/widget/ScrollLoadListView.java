
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;
import android.widget.ListView;

public class ScrollLoadListView extends ListView implements AbsListView$OnScrollListener {

    public ScrollLoadListView(Context Context1, AttributeSet AttributeSet2, int int3)
    {
        super( Context1, AttributeSet2, int3 );
        setOnScrollListener( this );
    }

    private av a;
    private boolean b;

    public ScrollLoadListView(Context Context1)
    {
        super( Context1 );
        setOnScrollListener( this );
    }

    public ScrollLoadListView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        setOnScrollListener( this );
    }

    public void onScroll(AbsListView AbsListView1, int int2, int int3, int int4)
    {
        if( a != null )
        {
            boolean boolean5;

            if( int4 > 0 && int2 + int3 >= int4 - 1 )
                boolean5 = true;
            else
                boolean5 = false;
            b = boolean5;
        }
    }

    public void onScrollStateChanged(AbsListView AbsListView1, int int2)
    {
        if( a != null && b && int2 == 0 )
            a.a();
    }

    public void setOnLastItemListener(av av1)
    {
        a = av1;
    }
}
