package com.clilystudio.netbook.reader.txt;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.reader.o;

final class i extends PagerAdapter {
    private /* synthetic */ ReaderTxtActivity a;

    i(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void destroyItem(ViewGroup viewGroup, int n, Object object) {
        viewGroup.removeView((View) object);
    }

    @Override
    public final int getCount() {
        return 3;
    }

    @Override
    public final Object instantiateItem(ViewGroup viewGroup, int n2) {
        o o2 = ReaderTxtActivity.d(this.a)[n2];
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
