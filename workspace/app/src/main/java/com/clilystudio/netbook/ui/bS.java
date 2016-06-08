package com.clilystudio.netbook.ui;

final class bS
        implements Runnable {
    bS(bR parambR) {
    }

    public final void run() {
        if (SearchActivity.a(this.a.a) != null) {
            SearchActivity.a(this.a.a).setSelectionAfterHeaderView();
            SearchActivity.a(this.a.a).setSelection(0);
        }
    }
}

