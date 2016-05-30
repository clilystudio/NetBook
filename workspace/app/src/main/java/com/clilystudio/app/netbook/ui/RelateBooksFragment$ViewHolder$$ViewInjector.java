package com.clilystudio.app.netbook.ui;

import android.widget.TextView;

import com.clilystudio.app.netbook.widget.CoverView;

import butterknife.ButterKnife.Finder;

public class RelateBooksFragment$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, RelateBooksFragment.ViewHolder paramViewHolder, Object paramObject) {
        paramViewHolder.mBook = ((CoverView) paramFinder.findRequiredView(paramObject, 2131493971, "field 'mBook'"));
        paramViewHolder.mTitle = ((TextView) paramFinder.findRequiredView(paramObject, R.id.title, "field 'mTitle'"));
        paramViewHolder.mContainer = paramFinder.findRequiredView(paramObject, 2131493577, "field 'mContainer'");
    }

    public static void reset(RelateBooksFragment.ViewHolder paramViewHolder) {
        paramViewHolder.mBook = null;
        paramViewHolder.mTitle = null;
        paramViewHolder.mContainer = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.RelateBooksFragment.ViewHolder..ViewInjector
 * JD-Core Version:    0.6.2
 */