package com.clilystudio.netbook.ui.ugcbook;

final class B implements Runnable {

    private A a;

    B(A A1) {
        a = A1;
    }

    public final void run() {
        if (UGCGuideAddBookActivity.d(a.a) != null)
            UGCGuideAddBookActivity.d(a.a).setSelection(0);
    }
}
