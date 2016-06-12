
package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class bZ implements DialogInterface$OnClickListener {

    bZ(SettingsActivity SettingsActivity1)
    {
        a = SettingsActivity1;
    }

    private SettingsActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        SettingsActivity.c( a );
    }
}
