package com.clilystudio.netbook.ui;

final class bS
        implements Runnable {
    private /* synthetic */ bR a;

    bS(bR bR2) {
        this.a = bR2;
    }

    @Override
    public final void run() {
        if (SearchActivity.a(this.a.a) != null) {
            SearchActivity.a(this.a.a).setSelectionAfterHeaderView();
            SearchActivity.a(this.a.a).setSelection(0);
        }
    }
}
