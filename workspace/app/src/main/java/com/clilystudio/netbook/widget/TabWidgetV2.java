package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;
import android.widget.TabWidget;

import com.clilystudio.netbook.R$styleable;

public class TabWidgetV2 extends TabWidget {
    private final int e;
    private final int f;
    private final int g;
    private int a;
    private float b;
    private float c;
    private Bitmap d;
    private float h;

    /*
     * Enabled aggressive block sorting
     */
    public TabWidgetV2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.TabWidgetV2);
        this.e = typedArray.getDimensionPixelSize(0, 0);
        this.a = typedArray.getInteger(1, 0);
        if (this.a == 0) {
            throw new RuntimeException("Item count can't be zero");
        }
        typedArray.recycle();
        int n = am.b((Activity) ((Activity) context)).widthPixels;
        int n2 = (int) (2.1 * (double) n);
        this.b = (float) n / (float) this.a;
        this.g = (-n2 - n) / 2;
        this.h = (float) ((n - (this.e << 1)) / this.a) / this.b;
        int n3 = this.getResources().getDimensionPixelSize(R.dimen.tab_height);
        this.d = a.a(context, "customer_night_theme", false) ? am.a((int) R.drawable.bg_dark_tab_widget_v3, (int) n2, (int) n3, (Context) this.getContext()) : am.a((int) R.drawable.bg_tab_widget_v3, (int) n2, (int) n3, (Context) this.getContext());
        this.f = this.getResources().getDimensionPixelSize(R.dimen.tab_host_text);
    }

    public final void a(int n, int n2) {
        this.c = (float) n2 / (float) this.a + (float) n * this.b;
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void dispatchDraw(Canvas canvas) {
        boolean bl = this.e != 0;
        float f2 = bl ? (float) this.g - this.b + (float) this.e - (float) this.f : (this.a == 3 ? (float) this.g - this.b : (this.a == 4 ? (float) (this.g - (int) (1.5 * (double) this.b)) : (float) this.g - this.b / 2.0f));
        float f3 = f2 + this.c * this.h;
        canvas.drawBitmap(this.d, f3, 0.0f, null);
        super.dispatchDraw(canvas);
    }

    public void setIndex(int n) {
        this.a(n, 0);
    }

    public void setItemCount(Context context, int n) {
        this.a = n;
        int n2 = am.b((Activity) ((Activity) context)).widthPixels;
        this.b = (float) n2 / (float) this.a;
        this.h = (float) ((n2 - (this.e << 1)) / this.a) / this.b;
    }
}
