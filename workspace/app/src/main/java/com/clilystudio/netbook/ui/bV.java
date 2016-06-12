
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnLongClickListener;

final class bV implements View$OnLongClickListener {

    bV(SettingsActivity SettingsActivity1)
    {
        a = SettingsActivity1;
    }

    private SettingsActivity a;

    public final boolean onLongClick(View View1)
    {
        SettingsActivity.b( a );
        return true;
    }
}
