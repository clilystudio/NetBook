package com.clilystudio.netbook.ui.home;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class QuiteBookPagerAdapter extends PagerAdapter {
    private final FragmentManager a;
    private FragmentTransaction b = null;
    private Fragment c = null;

    public QuiteBookPagerAdapter(FragmentManager fragmentManager) {
        this.a = fragmentManager;
    }

    public abstract Fragment getFragment(int position);

    protected abstract String getTag(int position);

    @Override
    public void destroyItem(ViewGroup viewGroup, int n, Object object) {
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        this.b.detach((Fragment) object);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.b != null) {
            this.b.commitAllowingStateLoss();
            this.b = null;
            this.a.executePendingTransactions();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Object instantiateItem(ViewGroup viewGroup, int n) {
        Fragment fragment;
        if (this.b == null) {
            this.b = this.a.beginTransaction();
        }
        if ((fragment = this.a.findFragmentByTag(this.getTag(n))) != null) {
            this.b.attach(fragment);
        } else {
            fragment = this.getFragment(n);
            if (!fragment.isAdded()) {
                this.b.add(viewGroup.getId(), fragment, this.getTag(n));
            } else {
                this.b.show(fragment);
            }
        }
        if (fragment != this.c) {
            fragment.setMenuVisibility(false);
            fragment.setUserVisibleHint(false);
        }
        return fragment;
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return ((Fragment) object).getView() == view;
    }

    @Override
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override
    public Parcelable saveState() {
        return null;
    }

    @Override
    public void setPrimaryItem(ViewGroup viewGroup, int n, Object object) {
        Fragment fragment = (Fragment) object;
        if (fragment != this.c) {
            if (this.c != null) {
                this.c.setMenuVisibility(false);
                this.c.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.c = fragment;
        }
    }

    @Override
    public void startUpdate(ViewGroup viewGroup) {
    }
}
