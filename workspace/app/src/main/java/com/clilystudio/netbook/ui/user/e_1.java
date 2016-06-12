
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

final class e implements PlatformActionListener {

    e(AuthLoginActivity AuthLoginActivity1, Handler Handler2)
    {
        a = Handler2;
    }

    private Handler a;

    public final void onCancel(Platform Platform1, int int2)
    {
        Message Message3 = new Message();

        Message3.arg1 = 3;
        Message3.arg2 = int2;
        Message3.obj = Platform1;
        a.sendMessage( Message3 );
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3)
    {
        Message Message4 = new Message();

        Message4.arg1 = 1;
        Message4.arg2 = int2;
        Message4.obj = Platform1;
        a.sendMessage( Message4 );
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3)
    {
        Message Message4;

        Throwable3.printStackTrace();
        Message4 = new Message();
        Message4.arg1 = 2;
        Message4.arg2 = int2;
        Message4.obj = Platform1;
        a.sendMessage( Message4 );
    }
}
