
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class aN implements View$OnClickListener {

    aN(BookTopicListFragment BookTopicListFragment1)
    {
        a = BookTopicListFragment1;
    }

    private BookTopicListFragment a;

    public final void onClick(View View1)
    {
        BookTopicListFragment.e( a );
    }
}
