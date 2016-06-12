
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.AttributeSet;
import com.clilystudio.netbook.R$styleable;
import m.framework.utils.Utils;

public class CornerImageView extends SmartImageView {

    public CornerImageView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.CornerSmartImageView );
        b = (int) TypedArray3.getDimension( TypedArray3.getIndex( 0 ), 2.0F );
        TypedArray3.recycle();
    }

    private int b;

    public CornerImageView(Context Context1)
    {
        super( Context1 );
        b = Utils.dipToPx( Context1, 2 );
    }

    protected com.nostra13.universalimageloader.core.b.a a()
    {
        return (com.nostra13.universalimageloader.core.b.a) new com.nostra13.universalimageloader.core.b.b( b );
    }

    public void setImageURI(Uri Uri1)
    {
        setImageBitmap( com.clilystudio.netbook.hpay100.a.a.a( BitmapFactory.decodeFile( Uri1.getPath() ) ) );
    }

    public void setImageUrl(String String1, int int2)
    {
        super.setImageUrl( String1, int2 );
    }
}
