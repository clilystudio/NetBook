package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class aw
        implements TextWatcher {
    private /* synthetic */ SearchEditText a;

    aw(SearchEditText searchEditText) {
        this.a = searchEditText;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
        if (SearchEditText.a(this.a)) {
            SearchEditText.a(this.a, false);
            return;
        } else {
            if (SearchEditText.b(this.a) == null) return;
            {
                SearchEditText.b(this.a).a();
                return;
            }
        }
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }
}
