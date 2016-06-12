
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class S implements View$OnClickListener {

    S(AddVoteItemActivity AddVoteItemActivity1)
    {
        a = AddVoteItemActivity1;
    }

    private AddVoteItemActivity a;

    public final void onClick(View View1)
    {
        int int2 = ((Integer) View1.getTag()).intValue();

        AddVoteItemActivity.a( a, AddVoteItemActivity.d( a )[int2], int2 );
    }
}
