
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class z implements View$OnClickListener {

    z(y y1, int int2)
    {
        b = y1;
        a = int2;
    }

    private int a;
    private y b;

    public final void onClick(View View1)
    {
        UGCGuideAddBookActivity.a( b.a, a );
        b.notifyDataSetChanged();
    }
}
