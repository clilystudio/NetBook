package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class TagsLayout extends ViewGroup {
    private int a;

    public TagsLayout(Context context) {
        super(context);
    }

    public TagsLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.LayoutParams;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(1, 1);
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        int n5 = this.getChildCount();
        int n6 = n3 - n;
        int n7 = this.getPaddingLeft();
        int n8 = this.getPaddingTop();
        int n9 = n7;
        for (int i = 0; i < n5; ++i) {
            View view = this.getChildAt(i);
            if (view.getVisibility() == GONE) continue;
            int n10 = view.getMeasuredWidth();
            int n11 = view.getMeasuredHeight();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (n9 + n10 > n6) {
                n9 = this.getPaddingLeft();
                n8 += this.a;
            }
            view.layout(n9, n8, n9 + n10, n11 + n8);
            n9 += n10 + layoutParams.width;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onMeasure(int n, int n2) {
        int n3 = View.MeasureSpec.getSize(n);
        int n4 = View.MeasureSpec.getSize(n2) - this.getPaddingTop() - this.getPaddingBottom();
        int n5 = this.getChildCount();
        int n6 = this.getPaddingLeft();
        int n7 = this.getPaddingTop();
        int n8 = 0;
        for (int i = 0; i < n5; ++i) {
            View view = this.getChildAt(i);
            if (view.getVisibility() == GONE) continue;
            view.measure(View.MeasureSpec.makeMeasureSpec(n3, MeasureSpec.AT_MOST), View.MeasureSpec.makeMeasureSpec(n4, MeasureSpec.UNSPECIFIED));
            int n9 = view.getMeasuredWidth();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            n8 = Math.max(n8, view.getMeasuredHeight() + layoutParams.height);
            if (n6 + n9 > n3) {
                n6 = this.getPaddingLeft();
                n7 += n8;
            }
            n6 += n9 + layoutParams.width;
        }
        this.a = n8;
        int n10 = View.MeasureSpec.getMode(n2) == MeasureSpec.UNSPECIFIED ? n7 + n8 : (View.MeasureSpec.getMode(n2) == MeasureSpec.AT_MOST && n7 + n8 < n4 ? n7 + n8 : n4);
        this.setMeasuredDimension(n3, n10);
    }
}
