package com.clilystudio.netbook.reader;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class au extends PagerAdapter {
    au(ReaderActivity paramReaderActivity) {
    }

    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
        paramViewGroup.removeView((View) paramObject);
    }

    public final int getCount() {
        return 3;
    }

    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
        o localo = ReaderActivity.i(this.a)[paramInt];
        paramViewGroup.addView(localo.i());
        return localo.i();
    }

    public final boolean isViewFromObject(View paramView, Object paramObject) {
        return paramView == paramObject;
    }
}

