
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class R implements View$OnClickListener {

    R(AddVoteItemActivity AddVoteItemActivity1)
    {
        a = AddVoteItemActivity1;
    }

    private AddVoteItemActivity a;

    public final void onClick(View View1)
    {
        if( AddVoteItemActivity.b( a ) )
            AddVoteItemActivity.c( a );
    }
}
