
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class aF implements View$OnClickListener {

    aF(UserInfoActivity UserInfoActivity1)
    {
        a = UserInfoActivity1;
    }

    private UserInfoActivity a;

    public final void onClick(View View1)
    {
        UserInfoActivity.b( a );
        com.clilystudio.netbook.umeng.a.b.a( (Context) a, "my_account_click" );
    }
}
