package com.clilystudio.netbook.ui;

import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife.Finder;

public class RelateBooksFragment$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, RelateBooksFragment.ViewHolder paramViewHolder, Object paramObject) {
        paramViewHolder.mBook = ((CoverView) paramFinder.findRequiredView(paramObject, 2131493971, "field 'mBook'"));
        paramViewHolder.mTitle = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
        paramViewHolder.mContainer = paramFinder.findRequiredView(paramObject, 2131493577, "field 'mContainer'");
    }

    public static void reset(RelateBooksFragment.ViewHolder paramViewHolder) {
        paramViewHolder.mBook = null;
        paramViewHolder.mTitle = null;
        paramViewHolder.mContainer = null;
    }
}

