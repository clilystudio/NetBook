
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.nostra13.universalimageloader.core.d.a;

public class AutoScaleImageView extends SmartImageView {

    public AutoScaleImageView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        b = Context1.getResources().getDisplayMetrics().widthPixels;
    }

    private int b;     // final access specifier removed

    static int a(AutoScaleImageView AutoScaleImageView1)
    {
        return AutoScaleImageView1.b;
    }

    public void setImageUrl(String String1)
    {
        setImageUrl( String1, 0, (a) new I( this ) );
    }

    public final void setImageUrl(String String1, int int2)
    {
        super.setImageUrl( String1, int2 );
    }

    public final void setImageUrl(String String1, int int2, a a3)
    {
        super.setImageUrl( String1, int2, a3 );
    }
}
