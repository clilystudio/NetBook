
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff$Mode;
import android.util.AttributeSet;
import android.widget.ImageView;

public class MaskAbleImageView extends ImageView {

    public MaskAbleImageView(Context Context1, AttributeSet AttributeSet2, int int3)
    {
        super( Context1, AttributeSet2, int3 );
        a( Context1 );
    }

    protected int a;

    public MaskAbleImageView(Context Context1)
    {
        super( Context1 );
        a( Context1 );
    }

    public MaskAbleImageView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        a( Context1 );
    }

    private void a(Context Context1)
    {
        int int2;

        if( com.clilystudio.netbook.hpay100.a.a.a( Context1, "customer_night_theme", false ) )
            int2 = getResources().getColor( 2131427405 );
        else
            int2 = -1;
        a = int2;
    }

    protected void a(Canvas Canvas1)
    {
        Canvas1.drawColor( a, PorterDuff$Mode.SRC_ATOP );
    }

    protected void onDraw(Canvas Canvas1)
    {
        super.onDraw( Canvas1 );
        if( a != -1 )
            a( Canvas1 );
    }
}
