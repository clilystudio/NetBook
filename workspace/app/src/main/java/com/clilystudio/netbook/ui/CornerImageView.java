package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;
import com.nostra13.universalimageloader.core.b.b;

import m.framework.utils.Utils;

public class CornerImageView extends SmartImageView {
    private int b;

    public CornerImageView(Context context) {
        super(context);
        this.b = Utils.dipToPx(context, 2);
    }

    public CornerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.CornerSmartImageView);
        this.b = (int) typedArray.getDimension(typedArray.getIndex(0), 2.0f);
        typedArray.recycle();
    }

    @Override
    protected com.nostra13.universalimageloader.core.b.a a() {
        return new b(this.b);
    }

    @Override
    public void setImageURI(Uri uri) {
        this.setImageBitmap(a.a(BitmapFactory.decodeFile(uri.getPath())));
    }

    @Override
    public void setImageUrl(String string, int n) {
        super.setImageUrl(string, n);
    }
}
