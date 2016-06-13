package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.clilystudio.netbook.R$styleable;

public class RatingView
        extends LinearLayout {
    private final String a;
    private final float b;
    private final int c;
    private int d;
    private int e;
    private ImageView[] f = new ImageView[5];

    public RatingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.RatingView);
        this.a = typedArray.getString(0);
        this.b = typedArray.getDimension(1, 0.0f);
        this.c = typedArray.getInteger(2, 0);
        typedArray.recycle();
        LayoutInflater.from(context).inflate(2130903358, (ViewGroup) this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        if ("list".equals(this.a)) {
            this.d = 2130838069;
            this.e = 2130838066;
        } else if ("review".equals(this.a)) {
            this.d = 2130838068;
            this.e = 2130838067;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, (int) this.b, 0);
        int[] arrn = new int[]{2131493854, 2131493855, 2131493856, 2131493857, 2131493858};
        for (int i = 0; i < 5; ++i) {
            this.f[i] = (ImageView) this.findViewById(arrn[i]);
            this.f[i].setLayoutParams(layoutParams);
        }
        if (this.c > 0) {
            this.setValue(this.c);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setValue(int n) {
        int n2 = 0;
        while (n2 < 5) {
            if (n2 < n) {
                this.f[n2].setImageResource(this.d);
            } else {
                this.f[n2].setImageResource(this.e);
            }
            ++n2;
        }
    }
}
