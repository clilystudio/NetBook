
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.util.AttributeSet;
import com.clilystudio.netbook.R$styleable;

public class CircularSmartImageView extends CornerImageView {

    public CircularSmartImageView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        b = Context1.obtainStyledAttributes( AttributeSet2, new int[] { 16842996 } ).getDimensionPixelSize( 0, -1 );
        Context1.obtainStyledAttributes( AttributeSet2, R$styleable.CircularSmartImageView ).recycle();
    }

    private int b;     // final access specifier removed

    protected final com.nostra13.universalimageloader.core.b.a a()
    {
        return (com.nostra13.universalimageloader.core.b.a) new com.nostra13.universalimageloader.core.b.b( b / 2 );
    }

    protected final void a(Canvas Canvas1)
    {
        Paint Paint2 = new Paint( a );

        Paint2.setAlpha( 34 );
        Paint2.setAntiAlias( true );
        Canvas1.drawCircle( (float) (b / 2), (float) (b / 2), (float) (b / 2), Paint2 );
    }

    public void setImageURI(Uri Uri1)
    {
        setImageBitmap( com.clilystudio.netbook.hpay100.a.a.a( BitmapFactory.decodeFile( Uri1.getPath() ) ) );
    }

    public void setImageUrl(String String1, int int2)
    {
        super.setImageUrl( String1, 2130837614 );
    }
}
