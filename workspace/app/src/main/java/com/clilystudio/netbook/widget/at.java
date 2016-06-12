
package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

final class at implements View$OnClickListener {

    at(RankCollapseItem RankCollapseItem1, BookRankSummary BookRankSummary2, boolean boolean3)
    {
        a = BookRankSummary2;
        b = boolean3;
    }

    private BookRankSummary a;
    private boolean b;

    public final void onClick(View View1)
    {
        i.a().c( new x( a, b ) );
    }
}
