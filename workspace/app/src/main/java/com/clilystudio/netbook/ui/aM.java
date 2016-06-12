
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aM implements View$OnClickListener {

    aM(BookRankListActivity BookRankListActivity1)
    {
        a = BookRankListActivity1;
    }

    private BookRankListActivity a;

    public final void onClick(View View1)
    {
        BookRankListActivity.a( a );
    }
}
