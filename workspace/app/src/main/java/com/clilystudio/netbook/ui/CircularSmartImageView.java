package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.util.AttributeSet;

import com.clilystudio.netbook.R$styleable;
import com.nostra13.universalimageloader.core.b.b;

public class CircularSmartImageView
        extends CornerImageView {
    private final int b;

    public CircularSmartImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = context.obtainStyledAttributes(attributeSet, new int[]{16842996}).getDimensionPixelSize(0, -1);
        context.obtainStyledAttributes(attributeSet, R$styleable.CircularSmartImageView).recycle();
    }

    @Override
    protected final /* synthetic */ com.nostra13.universalimageloader.core.b.a a() {
        return new b(this.b / 2);
    }

    @Override
    protected final void a(Canvas canvas) {
        Paint paint = new Paint(this.a);
        paint.setAlpha(34);
        paint.setAntiAlias(true);
        canvas.drawCircle(this.b / 2, this.b / 2, this.b / 2, paint);
    }

    @Override
    public void setImageURI(Uri uri) {
        this.setImageBitmap(a.a(BitmapFactory.decodeFile(uri.getPath())));
    }

    @Override
    public void setImageUrl(String string, int n) {
        super.setImageUrl(string, 2130837614);
    }
}
