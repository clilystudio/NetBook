package com.clilystudio.netbook.ui.post;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class b
        implements Runnable {
    b(a parama) {
    }

    public final void run() {
        EditText localEditText = AbsPostActivity.a(this.a.a);
        localEditText.clearFocus();
        ((InputMethodManager) this.a.a.getSystemService("input_method")).hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
    }
}

