
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class K implements View$OnClickListener {

    K(BaseActivity BaseActivity1)
    {
        a = BaseActivity1;
    }

    private BaseActivity a;

    public final void onClick(View View1)
    {
        a.onBackPressed();
    }
}
