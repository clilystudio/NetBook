
package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.content.res.Resources;
import android.view.View;
import android.view.View$OnClickListener;

final class bY implements View$OnClickListener {

    bY(SettingsActivity SettingsActivity1, AlertDialog AlertDialog2, int int3, int[] int_1darray4)
    {
        d = SettingsActivity1;
        a = AlertDialog2;
        b = int3;
        c = int_1darray4;
    }

    private AlertDialog a;
    private int b;
    private int[] c;
    private SettingsActivity d;

    public final void onClick(View View1)
    {
        a.dismiss();
        SettingsActivity.a( d, b, d.getResources().getString( c[b] ) );
    }
}
