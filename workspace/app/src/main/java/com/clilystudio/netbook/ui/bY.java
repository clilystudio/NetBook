package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.view.View;

final class bY
        implements View.OnClickListener {
    bY(SettingsActivity paramSettingsActivity, AlertDialog paramAlertDialog, int paramInt, int[] paramArrayOfInt) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        SettingsActivity.a(this.d, this.b, this.d.getResources().getString(this.c[this.b]));
    }
}

