package com.clilystudio.netbook.ui;

import android.view.View;

final class bV
        implements View.OnLongClickListener {
    bV(SettingsActivity paramSettingsActivity) {
    }

    public final boolean onLongClick(View paramView) {
        SettingsActivity.b(this.a);
        return true;
    }
}

