package com.clilystudio.netbook.ui.post;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class c implements Runnable {
    private /* synthetic */ EditText a;
    private /* synthetic */ AbsPostActivity b;

    c(AbsPostActivity absPostActivity, EditText editText) {
        this.b = absPostActivity;
        this.a = editText;
    }

    @Override
    public final void run() {
        this.b.getWindow().setSoftInputMode(5);
        this.a.requestFocus();
        ((InputMethodManager) this.b.getSystemService("input_method")).showSoftInput(this.a, 1);
    }
}
