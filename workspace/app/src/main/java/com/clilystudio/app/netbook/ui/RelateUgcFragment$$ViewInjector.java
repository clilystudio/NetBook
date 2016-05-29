package com.clilystudio.app.netbook.ui;

import android.widget.LinearLayout;

import butterknife.ButterKnife.Finder;

public class RelateUgcFragment$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, RelateUgcFragment paramRelateUgcFragment, Object paramObject) {
        paramRelateUgcFragment.mUgcContainer = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493465, "field 'mUgcContainer'"));
        paramRelateUgcFragment.mRelateUgcRoot = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493464, "field 'mRelateUgcRoot'"));
    }

    public static void reset(RelateUgcFragment paramRelateUgcFragment) {
        paramRelateUgcFragment.mUgcContainer = null;
        paramRelateUgcFragment.mRelateUgcRoot = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.RelateUgcFragment..ViewInjector
 * JD-Core Version:    0.6.2
 */