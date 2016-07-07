package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

public class D extends LinearLayoutManager {
    private int[] d = new int[2];

    public D(Context context) {
        super(context);
    }

    @Override
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int widthSpec, int heightSpec) {
        int i = View.MeasureSpec.getMode(widthSpec);
        int j = View.MeasureSpec.getMode(heightSpec);
        int k = View.MeasureSpec.getSize(widthSpec);
        int m = View.MeasureSpec.getSize(heightSpec);
        int n = 0;
        int i1 = 0;
        for (int i2 = 0; i2 < this.getChildCount(); i2++) {
            int i3 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
            int i4 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
            int[] arrayOfInt = this.d;
            View localView = recycler.getViewForPosition(0);
            if (localView != null) {
                RecyclerView.LayoutParams localap = (RecyclerView.LayoutParams)localView.getLayoutParams();
                localView.measure(ViewGroup.getChildMeasureSpec(i3, this.getPaddingLeft() + this.getPaddingRight(), localap.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom(), localap.height));
                arrayOfInt[0] = (localView.getMeasuredWidth() + localap.leftMargin + localap.rightMargin);
                arrayOfInt[1] = (localView.getMeasuredHeight() + localap.bottomMargin + localap.topMargin);
                recycler.recycleView(localView);
            }
            if (getOrientation() == HORIZONTAL) {
                n += this.d[0];
                if (i2 == 0) {
                    i1 = this.d[1];
                    i2++;
                }
            } else {
                i1 += this.d[1];
                if (i2 == 0) {
                    n = this.d[0];
                }
            }
        }
        if (i == View.MeasureSpec.EXACTLY) {
            n = k;
        }
        if (j == View.MeasureSpec.EXACTLY) {
            i1 = m;
        }
        setMeasuredDimension(n, i1);
    }
}
