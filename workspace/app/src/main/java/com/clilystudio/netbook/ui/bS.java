package com.clilystudio.netbook.ui;

final class bS implements Runnable {

    private bR a;

    bS(bR bR1) {
        a = bR1;
    }

    public final void run() {
        if (SearchActivity.a(a.a) != null) {
            SearchActivity.a(a.a).setSelectionAfterHeaderView();
            SearchActivity.a(a.a).setSelection(0);
        }
    }
}
