
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class br implements View$OnClickListener {

    br(NotifFragment NotifFragment1)
    {
        a = NotifFragment1;
    }

    private NotifFragment a;

    public final void onClick(View View1)
    {
        a.c();
    }
}
