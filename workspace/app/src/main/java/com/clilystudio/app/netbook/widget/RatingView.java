package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class RatingView extends LinearLayout {
    private final String a;
    private final float b;
    private final int c;
    private int d;
    private int e;
    private ImageView[] f = new ImageView[5];

    public RatingView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RatingView);
        this.a = localTypedArray.getString(0);
        this.b = localTypedArray.getDimension(1, 0.0F);
        this.c = localTypedArray.getInteger(2, 0);
        localTypedArray.recycle();
        LayoutInflater.from(paramContext).inflate(2130903358, this);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if ("list".equals(this.a)) {
            this.d = 2130838069;
            this.e = 2130838066;
        }
        while (true) {
            LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
            localLayoutParams.setMargins(0, 0, (int) this.b, 0);
            int[] arrayOfInt = {2131493854, 2131493855, 2131493856, 2131493857, 2131493858};
            for (int i = 0; i < 5; i++) {
                this.f[i] = ((ImageView) findViewById(arrayOfInt[i]));
                this.f[i].setLayoutParams(localLayoutParams);
            }
            if ("review".equals(this.a)) {
                this.d = 2130838068;
                this.e = 2130838067;
            }
        }
        if (this.c > 0)
            setValue(this.c);
    }

    public void setValue(int paramInt) {
        int i = 0;
        if (i < 5) {
            if (i < paramInt)
                this.f[i].setImageResource(this.d);
            while (true) {
                i++;
                break;
                this.f[i].setImageResource(this.e);
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.RatingView
 * JD-Core Version:    0.6.2
 */