
package com.clilystudio.netbook.reader;

import android.view.ViewGroup$LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.RelativeLayout$LayoutParams;

final class b extends Animation {

    b(AutoReaderTextView AutoReaderTextView1)
    {
        a = AutoReaderTextView1;
    }

    private AutoReaderTextView a;

    protected final void applyTransformation(float float1, Transformation Transformation2)
    {
        if( !com.clilystudio.netbook.reader.AutoReaderTextView.a( a ) )
        {
            AutoReaderTextView.b( a ).height = AutoReaderTextView.c( a ) - (int) (float1 * (float) AutoReaderTextView.c( a ));
            a.setLayoutParams( (ViewGroup$LayoutParams) AutoReaderTextView.b( a ) );
        }
    }
}
