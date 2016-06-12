
package com.clilystudio.netbook.reader;

import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;

final class c implements Animation$AnimationListener {

    c(AutoReaderTextView AutoReaderTextView1)
    {
        a = AutoReaderTextView1;
    }

    private AutoReaderTextView a;

    public final void onAnimationEnd(Animation Animation1)
    {
        if( AutoReaderTextView.d( a ) != null && a.getMeasuredHeight() <= 5 )
        {
            AutoReaderTextView.a( a, true );
            AutoReaderTextView.d( a ).d();
        }
    }

    public final void onAnimationRepeat(Animation Animation1)
    {
    }

    public final void onAnimationStart(Animation Animation1)
    {
    }
}
