package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.event.q;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

final class V extends com.clilystudio.netbook.a.e {

    private String a;
    private G b;
    V(G G1, byte byte2) {
        this(G1);
    }

    private V(G G1) {
        b = G1;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        String[] String_1darray2 = (String[]) Object_1darray1;

        a = String_1darray2[1];
        return c().i(String_1darray2[0], String_1darray2[1]);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;
        Account Account3;

        super.onPostExecute(Object2);
        Account3 = am.e();
        if (Object2 != null && ((ResultStatus) Object2).isOk()) {
            com.clilystudio.netbook.event.i.a().c(new q());
            FollowRecord.cancelFollow(Account3.getUser().getId(), a);
        } else if ("TOKEN_INVALID".equals(((ResultStatus) Object2).getCode())) {
            com.clilystudio.netbook.util.e.a((Activity) G.a(b), G.a(b).getString(2131034547));
            return;
        }
    }
}
