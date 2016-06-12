
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View$MeasureSpec;
import android.widget.GridView;

public class ScrollGridView extends GridView {

    public ScrollGridView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    public void onMeasure(int int1, int int2)
    {
        super.onMeasure( int1, View$MeasureSpec.makeMeasureSpec( 536870911, -2147483648 ) );
    }
}
