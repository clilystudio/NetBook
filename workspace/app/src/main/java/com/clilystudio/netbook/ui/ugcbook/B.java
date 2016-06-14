package com.clilystudio.netbook.ui.ugcbook;

final class B implements Runnable {
    private /* synthetic */ A a;

    B(A a) {
        this.a = a;
    }

    @Override
    public final void run() {
        if (UGCGuideAddBookActivity.d(this.a.a) != null) {
            UGCGuideAddBookActivity.d(this.a.a).setSelection(0);
        }
    }
}
