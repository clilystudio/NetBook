package com.clilystudio.netbook.ui;

import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class RelateBooksFragment$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, RelateBooksFragment RelateBooksFragment2, Object Object3) {
        RelateBooksFragment2.mBookContainer = (LinearLayout) Finder1.findRequiredView(Object3, 2131493463, "field 'mBookContainer'");
        RelateBooksFragment2.mRelateBookRoot = (LinearLayout) Finder1.findRequiredView(Object3, 2131493462, "field 'mRelateBookRoot'");
        RelateBooksFragment2.mMore = (TextView) Finder1.findRequiredView(Object3, 2131493432, "field 'mMore'");
    }

    public static void reset(RelateBooksFragment RelateBooksFragment1) {
        RelateBooksFragment1.mBookContainer = null;
        RelateBooksFragment1.mRelateBookRoot = null;
        RelateBooksFragment1.mMore = null;
    }
}
