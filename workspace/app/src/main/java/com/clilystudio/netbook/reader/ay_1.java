package com.clilystudio.netbook.reader;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class ay extends PagerAdapter {

    private ReaderActivity a;

    ay(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void destroyItem(ViewGroup ViewGroup1, int int2, Object Object3) {
        ViewGroup1.removeView((View) Object3);
    }

    public final int getCount() {
        return 1;
    }

    public final Object instantiateItem(ViewGroup ViewGroup1, int int2) {
        o o3 = ReaderActivity.i(a)[int2];

        ViewGroup1.addView(o3.i());
        return o3.i();
    }

    public final boolean isViewFromObject(View View1, Object Object2) {
        if (View1 == Object2)
            return true;
        else
            return false;
    }
}
