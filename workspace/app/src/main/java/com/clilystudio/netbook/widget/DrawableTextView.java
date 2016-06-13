package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

public class DrawableTextView
        extends TextView {
    public DrawableTextView(Context context) {
        super(context);
    }

    public DrawableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawableTextView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        Drawable[] arrdrawable = this.getCompoundDrawables();
        if (arrdrawable != null && (drawable = arrdrawable[0]) != null) {
            float f = this.getPaint().measureText(this.getText().toString());
            int n = this.getCompoundDrawablePadding();
            float f2 = f + (float) drawable.getIntrinsicWidth() + (float) n + (float) this.getPaddingLeft() + (float) this.getPaddingRight();
            canvas.translate(((float) this.getWidth() - f2) / 2.0f, 0.0f);
        }
        super.onDraw(canvas);
    }
}
