package com.clilystudio.netbook.ui.ugcbook;

final class B
        implements Runnable {
    B(A paramA) {
    }

    public final void run() {
        if (UGCGuideAddBookActivity.d(this.a.a) != null)
            UGCGuideAddBookActivity.d(this.a.a).setSelection(0);
    }
}

