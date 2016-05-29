package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bS
 * JD-Core Version:    0.6.2
 */