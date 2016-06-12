package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class c implements Runnable {

    private EditText a;
    private AbsPostActivity b;
    c(AbsPostActivity AbsPostActivity1, EditText EditText2) {
        b = AbsPostActivity1;
        a = EditText2;
    }

    public final void run() {
        b.getWindow().setSoftInputMode(5);
        a.requestFocus();
        ((InputMethodManager) b.getSystemService("input_method")).showSoftInput((View) a, 1);
    }
}
