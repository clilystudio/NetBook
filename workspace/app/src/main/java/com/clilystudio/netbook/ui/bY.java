package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.view.View;

final class bY
        implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ int b;
    private /* synthetic */ int[] c;
    private /* synthetic */ SettingsActivity d;

    bY(SettingsActivity settingsActivity, AlertDialog alertDialog, int n, int[] arrn) {
        this.d = settingsActivity;
        this.a = alertDialog;
        this.b = n;
        this.c = arrn;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        SettingsActivity.a(this.d, this.b, this.d.getResources().getString(this.c[this.b]));
    }
}
