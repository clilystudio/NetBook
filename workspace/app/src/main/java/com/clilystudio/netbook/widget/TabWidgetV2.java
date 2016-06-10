package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TabWidget;

public class TabWidgetV2 extends TabWidget {
    private final int e;
    private final int f;
    private final int g;
    private int a;
    private float b;
    private float c;
    private Bitmap d;
    private float h;

    public TabWidgetV2(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TabWidgetV2);
        this.e = localTypedArray.getDimensionPixelSize(0, 0);
        this.a = localTypedArray.getInteger(1, 0);
        if (this.a == 0)
            throw new RuntimeException("Item count can't be zero");
        localTypedArray.recycle();
        int i = am.b((Activity) paramContext).widthPixels;
        int j = (int) (2.1D * i);
        this.b = (i / this.a);
        this.g = (-(j - i) / 2);
        this.h = ((i - (this.e << 1)) / this.a / this.b);
        int k = getResources().getDimensionPixelSize(2131099784);
        if (a.a(paramContext, "customer_night_theme", false)) ;
        for (this.d = am.a(2130837642, j, k, getContext()); ; this.d = am.a(2130837694, j, k, getContext())) {
            this.f = getResources().getDimensionPixelSize(2131099786);
            return;
        }
    }

    public final void a(int paramInt1, int paramInt2) {
        this.c = (paramInt2 / this.a + paramInt1 * this.b);
        invalidate();
    }

    public void dispatchDraw(Canvas paramCanvas) {
        int i;
        float f1;
        if (this.e != 0) {
            i = 1;
            if (i == 0)
                break label72;
            f1 = this.g - this.b + this.e - this.f;
        }
        while (true) {
            float f2 = f1 + this.c * this.h;
            paramCanvas.drawBitmap(this.d, f2, 0.0F, null);
            super.dispatchDraw(paramCanvas);
            return;
            i = 0;
            break;
            label72:
            if (this.a == 3) {
                f1 = this.g - this.b;
                continue;
            }
            if (this.a == 4) {
                f1 = this.g - (int) (1.5D * this.b);
                continue;
            }
            f1 = this.g - this.b / 2.0F;
        }
    }

    public void setIndex(int paramInt) {
        a(paramInt, 0);
    }

    public void setItemCount(Context paramContext, int paramInt) {
        this.a = paramInt;
        int i = am.b((Activity) paramContext).widthPixels;
        this.b = (i / this.a);
        this.h = ((i - (this.e << 1)) / this.a / this.b);
    }
}

