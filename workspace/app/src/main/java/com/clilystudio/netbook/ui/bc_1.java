package com.clilystudio.netbook.ui;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class bc extends PagerAdapter {
    private /* synthetic */ IntroActivity a;

    bc(IntroActivity introActivity) {
        this.a = introActivity;
    }

    @Override
    public final void destroyItem(ViewGroup viewGroup, int n, Object object) {
        viewGroup.removeView((View) IntroActivity.a(this.a).get(n));
    }

    @Override
    public final int getCount() {
        return IntroActivity.a(this.a).size();
    }

    @Override
    public final Object instantiateItem(ViewGroup viewGroup, int n) {
        viewGroup.addView((View) IntroActivity.a(this.a).get(n), 0);
        return IntroActivity.a(this.a).get(n);
    }

    @Override
    public final boolean isViewFromObject(View view, Object object) {
        if (view == object) {
            return true;
        }
        return false;
    }
}
