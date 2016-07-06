package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.view.View;
import android.view.ViewGroup;

public class D extends LinearLayoutManager {
    static {
        D.class.getSimpleName();
    }


    private int[] d = new int[2];

    public D(Context context) {
        super(context);
    }

    @Override
    public final void a(ar paramar, int paramInt1, int paramInt2) {
        int i = View.MeasureSpec.getMode(paramInt1);
        int j = View.MeasureSpec.getMode(paramInt2);
        int k = View.MeasureSpec.getSize(paramInt1);
        int m = View.MeasureSpec.getSize(paramInt2);
        int n = 0;
        int i1 = 0;
        for (int i2 = 0; i2 < this.getChildCount(); i2++) {
            int i3 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
            int i4 = View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.UNSPECIFIED);
            int[] arrayOfInt = this.d;
            View localView = paramar.b(0);
            if (localView != null) {
                ViewGroup.LayoutParams localap = localView.getLayoutParams();
                localView.measure(ViewGroup.getChildMeasureSpec(i3, this.getPaddingLeft() + this.getPaddingRight(), localap.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom(), localap.height));
                arrayOfInt[0] = (localView.getMeasuredWidth() + localap.leftMargin + localap.rightMargin);
                arrayOfInt[1] = (localView.getMeasuredHeight() + localap.bottomMargin + localap.topMargin);
                paramar.a(localView);
            }
            if (e() == 0) {
                n += this.d[0];
                if (i2 == 0) {
                    i1 = this.d[1];
                    i2++;
                }
            } else {
                i1 += this.d[1];
                if (i2 == 0) {
                    n = this.d[0]
                } ;
            }
        }catch(Exception localException){
        }finally{
        }
        if (i == View.MeasureSpec.EXACTLY) {
            n = k;
        }
        if (j == View.MeasureSpec.EXACTLY) {
            i1 = m;
        }
        e(n, i1);
    }
}
