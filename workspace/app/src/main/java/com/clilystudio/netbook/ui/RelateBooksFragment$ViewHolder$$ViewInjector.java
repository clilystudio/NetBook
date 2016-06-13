package com.clilystudio.netbook.ui;

import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife$Finder;

public class RelateBooksFragment$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, RelateBooksFragment$ViewHolder relateBooksFragment$ViewHolder, Object object) {
        relateBooksFragment$ViewHolder.mBook = (CoverView) butterKnife$Finder.findRequiredView(object, 2131493971, "field 'mBook'");
        relateBooksFragment$ViewHolder.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        relateBooksFragment$ViewHolder.mContainer = butterKnife$Finder.findRequiredView(object, 2131493577, "field 'mContainer'");
    }

    public static void reset(RelateBooksFragment$ViewHolder relateBooksFragment$ViewHolder) {
        relateBooksFragment$ViewHolder.mBook = null;
        relateBooksFragment$ViewHolder.mTitle = null;
        relateBooksFragment$ViewHolder.mContainer = null;
    }
}
