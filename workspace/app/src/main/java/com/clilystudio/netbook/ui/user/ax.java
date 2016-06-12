
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View$OnClickListener;

final class ax implements View$OnClickListener {

    ax(UserFollowWeixinActivity UserFollowWeixinActivity1)
    {
        a = UserFollowWeixinActivity1;
    }

    private UserFollowWeixinActivity a;

    public final void onClick(View View1)
    {
        UserFollowWeixinActivity.a( a );
        UserFollowWeixinActivity.b( a );
    }
}
