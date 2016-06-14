package com.clilystudio.netbook.ui;

import android.view.View;

final class bL implements View.OnFocusChangeListener {
    private /* synthetic */ SearchActivity a;

    bL(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onFocusChange(View view, boolean bl) {
        SearchActivity searchActivity = this.a;
        boolean bl2 = !a.Q(SearchActivity.f(this.a).getText().toString());
        SearchActivity.a(searchActivity, bl2);
    }
}
