
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;

public class ExpView extends TextView {

    public ExpView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        setTextSize( 9.0F );
        setGravity( 17 );
        a();
    }

    public final void a()
    {
        setBackgroundResource( 2130837784 );
        setTextColor( getResources().getColor( 2131427547 ) );
    }
}
