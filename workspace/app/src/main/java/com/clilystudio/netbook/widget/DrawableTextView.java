package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

public class DrawableTextView extends TextView {

    public DrawableTextView(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public DrawableTextView(Context Context1) {
        super(Context1);
    }

    public DrawableTextView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected void onDraw(Canvas Canvas1) {
        Drawable[] Drawable_1darray2 = getCompoundDrawables();

        if (Drawable_1darray2 != null) {
            Drawable Drawable3 = Drawable_1darray2[0];

            if (Drawable3 != null) {
                float float4 = getPaint().measureText(getText().toString());
                int int5 = getCompoundDrawablePadding();
                float float6 = float4 + (float) Drawable3.getIntrinsicWidth() + (float) int5 + (float) getPaddingLeft() + (float) getPaddingRight();

                Canvas1.translate(((float) getWidth() - float6) / 2.0F, 0.0F);
            }
        }
        super.onDraw(Canvas1);
    }
}
