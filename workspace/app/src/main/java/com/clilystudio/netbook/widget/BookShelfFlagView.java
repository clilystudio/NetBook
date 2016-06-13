package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;

public class BookShelfFlagView
        extends TextView {
    private final Drawable b;
    private int a;

    public BookShelfFlagView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setVisibility(8);
        this.setTextColor(-1);
        this.setGravity(17);
        this.setTextSize(this.getResources().getDimensionPixelSize(2131099774));
        this.b = this.getResources().getDrawable(2130838154);
    }

    private void a() {
        Resources resources = this.getResources();
        int n = resources.getDimensionPixelSize(2131099697);
        int n2 = resources.getDimensionPixelSize(2131099696);
        ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
        layoutParams.width = n;
        layoutParams.height = n2;
    }

    @Override
    protected void onMeasure(int n, int n2) {
        if (this.a != 3) {
            super.onMeasure(n, n2);
            return;
        }
        this.setMeasuredDimension(this.b.getIntrinsicWidth(), this.b.getIntrinsicHeight());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setType(int n) {
        this.a = n;
        switch (this.a) {
            case 1: {
                this.a();
                this.setBackgroundResource(2130838153);
                this.setText("\u63a8\u5e7f");
                break;
            }
            case 2: {
                this.a();
                this.setBackgroundResource(2130838142);
                this.setText("\u516c\u544a");
                break;
            }
            case 3: {
                ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
                layoutParams.width = -2;
                layoutParams.height = -2;
                this.setText("");
                this.setBackgroundResource(2130838154);
                break;
            }
            case 4: {
                this.a();
                this.setBackgroundResource(2130838152);
                this.setText("\u5f85\u6740");
            }
        }
        if (this.a == 0) {
            this.setVisibility(4);
            return;
        }
        this.setVisibility(0);
    }
}
