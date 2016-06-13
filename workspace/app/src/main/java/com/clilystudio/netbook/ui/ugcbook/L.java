package com.clilystudio.netbook.ui.ugcbook;

import android.view.inputmethod.InputMethodManager;

final class L
        implements Runnable {
    private /* synthetic */ UGCGuideEditBooksActivity a;

    L(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        this.a = uGCGuideEditBooksActivity;
    }

    @Override
    public final void run() {
        ((InputMethodManager) this.a.getSystemService("input_method")).toggleSoftInput(0, 2);
    }
}
