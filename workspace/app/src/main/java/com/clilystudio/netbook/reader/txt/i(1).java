package com.clilystudio.netbook.reader.txt;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.reader.o;

final class i extends PagerAdapter {
    i(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
        paramViewGroup.removeView((View) paramObject);
    }

    public final int getCount() {
        return 3;
    }

    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
        o localo = ReaderTxtActivity.d(this.a)[paramInt];
        paramViewGroup.addView(localo.i());
        return localo.i();
    }

    public final boolean isViewFromObject(View paramView, Object paramObject) {
        return paramView == paramObject;
    }
}

