package com.clilystudio.netbook.ui;

import android.view.View;

final class bV implements View.OnLongClickListener {
    private /* synthetic */ SettingsActivity a;

    bV(SettingsActivity settingsActivity) {
        this.a = settingsActivity;
    }

    @Override
    public final boolean onLongClick(View view) {
        SettingsActivity.b(this.a);
        return true;
    }
}
