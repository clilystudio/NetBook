package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

import com.clilystudio.netbook.model.Tweet;

final class ch implements j {

    private OtherUserActivity a;

    ch(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    public final void a() {
        if (OtherUserActivity.b(a) == null || OtherUserActivity.b(a).getStatus() == AsyncTask$Status.FINISHED) {
            String String2;
            cl cl3;
            String[] String_1darray4;

            OtherUserActivity.p(a).setVisibility(0);
            if (!android.support.design.widget.am.a((AsyncTask) OtherUserActivity.q(a)))
                OtherUserActivity.q(a).cancel(true);
            OtherUserActivity.a(a, new cl(a, (byte) 0));
            String2 = "";
            if (OtherUserActivity.r(a).size() > 0)
                String2 = ((Tweet) OtherUserActivity.r(a).get(-1 + OtherUserActivity.r(a).size())).get_id();
            cl3 = OtherUserActivity.b(a);
            String_1darray4 = new String[2];
            String_1darray4[0] = OtherUserActivity.k(a);
            String_1darray4[1] = String2;
            cl3.b(String_1darray4);
        }
    }
}
