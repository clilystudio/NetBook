package com.clilystudio.netbook.ui.ugcbook;

import android.view.inputmethod.InputMethodManager;

final class L implements Runnable {

    private UGCGuideEditBooksActivity a;

    L(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1) {
        a = UGCGuideEditBooksActivity1;
    }

    public final void run() {
        ((InputMethodManager) a.getSystemService("input_method")).toggleSoftInput(0, 2);
    }
}
