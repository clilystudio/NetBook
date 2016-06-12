
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.widget.AutoFlowView;

final class bO implements View$OnClickListener {

    bO(bM bM1)
    {
        a = bM1;
    }

    private bM a;

    public final void onClick(View View1)
    {
        com.clilystudio.netbook.hpay100.a.a.G( (Context) a.a );
        SearchActivity.e( a.a ).a();
    }
}
