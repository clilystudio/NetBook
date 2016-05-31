package com.clilystudio.app.netbook.ui;

import android.view.View;

final class bV
        implements View.OnLongClickListener {
    bV(SettingsActivity paramSettingsActivity) {
    }

    public final boolean onLongClick(View paramView) {
        SettingsActivity.b_initContentView(this.a);
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bV
 * JD-Core Version:    0.6.2
 */