
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class ac implements View$OnClickListener {

    ac(LinearListView LinearListView1, int int2)
    {
        b = LinearListView1;
        a = int2;
    }

    private int a;
    private LinearListView b;

    public final void onClick(View View1)
    {
        LinearListView.a( b, a );
    }
}
