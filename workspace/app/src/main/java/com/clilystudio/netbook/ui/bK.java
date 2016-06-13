package com.clilystudio.netbook.ui;

import android.text.Editable;
import android.text.TextWatcher;

final class bK
        implements TextWatcher {
    private /* synthetic */ SearchActivity a;

    bK(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void afterTextChanged(Editable editable) {
        SearchActivity searchActivity = this.a;
        boolean bl = !a.Q(editable.toString());
        SearchActivity.a(searchActivity, bl);
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
        SearchActivity.b(this.a, null);
    }
}
