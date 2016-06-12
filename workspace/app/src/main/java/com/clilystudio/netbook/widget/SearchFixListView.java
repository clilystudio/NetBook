
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ListView;

public class SearchFixListView extends ListView {

    public SearchFixListView(Context Context1, AttributeSet AttributeSet2, int int3)
    {
        super( Context1, AttributeSet2, int3 );
    }

    public SearchFixListView(Context Context1)
    {
        super( Context1 );
    }

    public SearchFixListView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    protected void dispatchDraw(Canvas Canvas1)
    {
        try
        {
            super.dispatchDraw( Canvas1 );
        }
        catch( IndexOutOfBoundsException IndexOutOfBoundsException2 )
        {
            IndexOutOfBoundsException2.printStackTrace();
            return;
        }
    }
}
