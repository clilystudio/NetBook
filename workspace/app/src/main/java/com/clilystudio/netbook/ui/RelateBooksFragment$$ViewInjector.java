package com.clilystudio.netbook.ui;

import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class RelateBooksFragment$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, RelateBooksFragment relateBooksFragment, Object object) {
        relateBooksFragment.mBookContainer = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493463, "field 'mBookContainer'");
        relateBooksFragment.mRelateBookRoot = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493462, "field 'mRelateBookRoot'");
        relateBooksFragment.mMore = (TextView) butterKnife$Finder.findRequiredView(object, 2131493432, "field 'mMore'");
    }

    public static void reset(RelateBooksFragment relateBooksFragment) {
        relateBooksFragment.mBookContainer = null;
        relateBooksFragment.mRelateBookRoot = null;
        relateBooksFragment.mMore = null;
    }
}
