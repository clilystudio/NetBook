package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.i;

final class bH implements i {
    private /* synthetic */ SearchActivity a;

    bH(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final void a(String string) {
        a.t(this.a, string);
        SearchActivity.a(this.a, string);
    }
}
