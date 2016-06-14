package com.clilystudio.netbook.ui.post;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class b implements Runnable {
    private /* synthetic */ a a;

    b(a a2) {
        this.a = a2;
    }

    @Override
    public final void run() {
        EditText editText = AbsPostActivity.a(this.a.a);
        editText.clearFocus();
        ((InputMethodManager) this.a.a.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }
}
