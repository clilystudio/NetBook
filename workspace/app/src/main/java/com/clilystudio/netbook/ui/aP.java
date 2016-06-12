
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aP implements View$OnClickListener {

    aP(BookRankListFragment BookRankListFragment1)
    {
        a = BookRankListFragment1;
    }

    private BookRankListFragment a;

    public final void onClick(View View1)
    {
        BookRankListFragment.a( a );
    }
}
