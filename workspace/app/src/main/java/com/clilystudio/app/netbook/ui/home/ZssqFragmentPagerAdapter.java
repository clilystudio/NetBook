package com.clilystudio.app.netbook.ui.home;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class ZssqFragmentPagerAdapter extends PagerAdapter {
    private final FragmentManager manager;
    private FragmentTransaction transaction = null;
    private Fragment c = null;

    public ZssqFragmentPagerAdapter(FragmentManager manager) {
        this.manager = manager;
    }

    public abstract Fragment getFragment(int position);

    protected abstract String getTag(int position);

    public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
        if (this.transaction == null) {
            this.transaction = this.manager.beginTransaction();
        }
        this.transaction.detach((Fragment) paramObject);
    }

    public void finishUpdate(ViewGroup paramViewGroup) {
        if (this.transaction != null) {
            this.transaction.commitAllowingStateLoss();
            this.transaction = null;
            this.manager.executePendingTransactions();
        }
    }

    public Object instantiateItem(ViewGroup paramViewGroup, int position) {
        if (this.transaction == null) {
            this.transaction = this.manager.beginTransaction();
        }
        Fragment localFragment = this.manager.findFragmentByTag(getTag(position));
        if (localFragment != null) {
            this.transaction.attach(localFragment);
        } else {
            localFragment = getFragment(position);
            if (!localFragment.isAdded()) {
                this.transaction.add(paramViewGroup.getId(), localFragment, getTag(position));
            } else {
                this.transaction.show(localFragment);
            }
        }
        if (localFragment != this.c) {
            localFragment.setMenuVisibility(false);
            localFragment.setUserVisibleHint(false);
        }
        return localFragment;
    }

    public boolean isViewFromObject(View paramView, Object paramObject) {
        return ((Fragment) paramObject).getView() == paramView;
    }

    public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {
    }

    public Parcelable saveState() {
        return null;
    }

    public void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
        Fragment localFragment = (Fragment) paramObject;
        if (localFragment != this.c) {
            if (this.c != null) {
                this.c.setMenuVisibility(false);
                this.c.setUserVisibleHint(false);
            }
            if (localFragment != null) {
                localFragment.setMenuVisibility(true);
                localFragment.setUserVisibleHint(true);
            }
            this.c = localFragment;
        }
    }

    public void startUpdate(ViewGroup paramViewGroup) {
    }
}
