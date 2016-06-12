
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View$OnClickListener;
import cn.sharesdk.tencent.qzone.QZone;

final class b implements View$OnClickListener {

    b(AuthLoginActivity AuthLoginActivity1)
    {
        a = AuthLoginActivity1;
    }

    private AuthLoginActivity a;

    public final void onClick(View View1)
    {
        AuthLoginActivity.a( a, View1 );
        AuthLoginActivity.a( a, QZone.NAME );
        AuthLoginActivity.b( a, "QQ" );
    }
}
