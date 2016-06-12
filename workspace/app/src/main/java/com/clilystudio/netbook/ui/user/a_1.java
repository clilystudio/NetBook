
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View$OnClickListener;
import cn.sharesdk.sina.weibo.SinaWeibo;

final class a implements View$OnClickListener {

    a(AuthLoginActivity AuthLoginActivity1)
    {
        a = AuthLoginActivity1;
    }

    private AuthLoginActivity a;

    public final void onClick(View View1)
    {
        AuthLoginActivity.a( a, View1 );
        AuthLoginActivity.a( a, SinaWeibo.NAME );
        AuthLoginActivity.b( a, "SinaWeibo" );
    }
}
