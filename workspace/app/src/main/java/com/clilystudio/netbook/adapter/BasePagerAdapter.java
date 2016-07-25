package com.clilystudio.netbook.adapter;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class BasePagerAdapter extends PagerAdapter {
    private final FragmentManager mFragmentManager;
    private FragmentTransaction mTransaction = null;
    private Fragment mFragment = null;

    public BasePagerAdapter(FragmentManager fragmentManager) {
        mFragmentManager = fragmentManager;
    }

    public abstract Fragment getFragment(int position);

    protected abstract String getTag(int position);

    @Override
    public void destroyItem(ViewGroup viewGroup, int n, Object object) {
        if (mTransaction == null) {
            mTransaction = mFragmentManager.beginTransaction();
        }
        mTransaction.detach((Fragment) object);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        if (mTransaction != null) {
            mTransaction.commitAllowingStateLoss();
            mTransaction = null;
            mFragmentManager.executePendingTransactions();
        }
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int position) {
        if (mTransaction == null) {
            mTransaction = mFragmentManager.beginTransaction();
        }
        Fragment fragment = mFragmentManager.findFragmentByTag(getTag(position));
        if (fragment != null) {
            mTransaction.attach(fragment);
        } else {
            fragment = getFragment(position);
            if (!fragment.isAdded()) {
                mTransaction.add(viewGroup.getId(), fragment, getTag(position));
            } else {
                mTransaction.show(fragment);
            }
        }
        if (fragment != mFragment) {
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
    public void setPrimaryItem(ViewGroup viewGroup, int position, Object object) {
        Fragment fragment = (Fragment) object;
        if (fragment != mFragment) {
            if (mFragment != null) {
                mFragment.setMenuVisibility(false);
                mFragment.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            mFragment = fragment;
        }
    }

    @Override
    public void startUpdate(ViewGroup viewGroup) {
    }
}
