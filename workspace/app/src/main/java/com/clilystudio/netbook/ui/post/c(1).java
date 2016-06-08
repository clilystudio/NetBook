package com.clilystudio.netbook.ui.post;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class c
        implements Runnable {
    c(AbsPostActivity paramAbsPostActivity, EditText paramEditText) {
    }

    public final void run() {
        this.b.getWindow().setSoftInputMode(5);
        this.a.requestFocus();
        ((InputMethodManager) this.b.getSystemService("input_method")).showSoftInput(this.a, 1);
    }
}

