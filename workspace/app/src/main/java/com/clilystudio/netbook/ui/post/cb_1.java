
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;

final class cb implements View$OnClickListener {

    cb(OtherUserActivity OtherUserActivity1)
    {
        a = OtherUserActivity1;
    }

    private OtherUserActivity a;

    public final void onClick(View View1)
    {
        OtherUserActivity.d( a );
    }
}
