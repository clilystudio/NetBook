package com.clilystudio.netbook.ui;

import android.content.DialogInterface;

final class bZ implements DialogInterface.OnClickListener {
    private /* synthetic */ SettingsActivity a;

    bZ(SettingsActivity settingsActivity) {
        this.a = settingsActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        SettingsActivity.c(this.a);
    }
}
