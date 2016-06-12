
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.widget.AutoFlowView;

final class bI implements View$OnClickListener {

    bI(SearchActivity SearchActivity1)
    {
        a = SearchActivity1;
    }

    private SearchActivity a;

    public final void onClick(View View1)
    {
        com.clilystudio.netbook.hpay100.a.a.G( (Context) a );
        SearchActivity.e( a ).a();
    }
}
