
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class aC implements View$OnClickListener {

    aC(BookReviewListFragment BookReviewListFragment1)
    {
        a = BookReviewListFragment1;
    }

    private BookReviewListFragment a;

    public final void onClick(View View1)
    {
        BookReviewListFragment.e( a );
    }
}
