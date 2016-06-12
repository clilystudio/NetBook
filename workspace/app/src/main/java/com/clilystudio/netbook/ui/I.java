
package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.view.ViewGroup$LayoutParams;

final class I implements com.nostra13.universalimageloader.core.d.a {

    I(AutoScaleImageView AutoScaleImageView1)
    {
        a = AutoScaleImageView1;
    }

    private AutoScaleImageView a;

    public final void a(Bitmap Bitmap1)
    {
        float float2 = (float) Bitmap1.getHeight() / (float) Bitmap1.getWidth() * (float) AutoScaleImageView.a( a );
        ViewGroup$LayoutParams LayoutParams3 = a.getLayoutParams();

        if( LayoutParams3 != null )
        {
            LayoutParams3.height = (int) float2;
            LayoutParams3.width = AutoScaleImageView.a( a );
            a.requestLayout();
        }
    }
}
