package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class ay implements TextWatcher {
    private /* synthetic */ SendView a;

    ay(SendView sendView) {
        this.a = sendView;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
        SendView.a(this.a);
    }
}
