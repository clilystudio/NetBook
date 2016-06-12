
package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.os.Message;

final class aB extends Handler {

    aB(BookInfoActivity BookInfoActivity1)
    {
        a = BookInfoActivity1;
    }

    private BookInfoActivity a;

    public final void handleMessage(Message Message1)
    {
        BookInfoActivity.a( a, true );
        BookInfoActivity.b( a );
    }
}
