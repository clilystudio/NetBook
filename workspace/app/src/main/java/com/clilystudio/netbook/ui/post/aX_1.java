package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

final class aX implements j {

    private CommonPostListActivity a;

    aX(CommonPostListActivity CommonPostListActivity1) {
        a = CommonPostListActivity1;
    }

    public final void a() {
        if (CommonPostListActivity.c(a) == null || CommonPostListActivity.c(a).getStatus() == AsyncTask$Status.FINISHED) {
            bh bh2;
            String[] String_1darray3;

            CommonPostListActivity.q(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) CommonPostListActivity.f(a)))
                CommonPostListActivity.f(a).cancel(true);
            CommonPostListActivity.a(a, new bh(a, (byte) 0));
            bh2 = CommonPostListActivity.c(a);
            String_1darray3 = new String[2];
            String_1darray3[0] = CommonPostListActivity.d(a);
            String_1darray3[1] = CommonPostListActivity.e(a);
            bh2.b(String_1darray3);
        }
    }
}
