
package com.clilystudio.netbook.widget;

import android.os.Build$VERSION;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;

final class ai implements ViewTreeObserver$OnGlobalLayoutListener {

    ai(MenuGameTitle MenuGameTitle1, String String2, String String3)
    {
        c = MenuGameTitle1;
        a = String2;
        b = String3;
    }

    private String a;
    private String b;
    private MenuGameTitle c;

    public final void onGlobalLayout()
    {
        int int1 = 1;
        int int2;
        MenuGameTitle MenuGameTitle3;
        int int4;
        ViewTreeObserver ViewTreeObserver6;

        if( StaticLayout.getDesiredWidth( (CharSequence) a, c.mSlmReaderAppName.getPaint() ) + StaticLayout.getDesiredWidth( (CharSequence) b, c.mSlmReaderAppSize.getPaint() ) > (float) c.getMeasuredWidth() )
            int2 = int1;
        else
            int2 = 0;
        MenuGameTitle3 = c;
        if( int2 != 0 )
            int4 = int1;
        else
            int4 = 0;
        MenuGameTitle3.setOrientation( int4 );
        if( int2 != 0 )
        {
            Object Object5 = new LinearLayout$LayoutParams( -2, -2 );

            ((LinearLayout$LayoutParams) Object5).topMargin = (int) MenuGameTitle.a( c, 3 );
            c.mSlmReaderAppSize.setLayoutParams( (ViewGroup$LayoutParams) Object5 );
        }
        c.mSlmReaderAppName.setText( (CharSequence) a );
        c.mSlmReaderAppSize.setText( (CharSequence) b );
        ViewTreeObserver6 = c.getViewTreeObserver();
        if( Build$VERSION.SDK_INT < 16 )
            int1 = 0;
        if( int1 != 0 )
            ViewTreeObserver6.removeOnGlobalLayoutListener( this );
        else
            ViewTreeObserver6.removeGlobalOnLayoutListener( this );
    }
}
