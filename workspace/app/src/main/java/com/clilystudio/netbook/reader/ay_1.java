package com.clilystudio.netbook.reader;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class ay
        extends PagerAdapter {
    private /* synthetic */ ReaderActivity a;

    ay(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void destroyItem(ViewGroup viewGroup, int n, Object object) {
        viewGroup.removeView((View) object);
    }

    @Override
    public final int getCount() {
        return 1;
    }

    @Override
    public final Object instantiateItem(ViewGroup viewGroup, int n2) {
        o o2 = ReaderActivity.i(this.a)[n2];
        viewGroup.addView(o2.i());
        return o2.i();
    }

    @Override
    public final boolean isViewFromObject(View view, Object object) {
        if (view == object) {
            return true;
        }
        return false;
    }
}
