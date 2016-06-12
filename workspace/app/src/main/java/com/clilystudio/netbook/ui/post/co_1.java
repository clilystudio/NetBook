package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

final class co extends com.clilystudio.netbook.a.e {

    private String a;
    private OtherUserActivity b;
    co(OtherUserActivity OtherUserActivity1, byte byte2) {
        this(OtherUserActivity1);
    }

    private co(OtherUserActivity OtherUserActivity1) {
        b = OtherUserActivity1;
    }

    private transient ResultStatus a(String[] String_1darray1) {
        ResultStatus ResultStatus4;

        try {
            a = String_1darray1[1];
            com.clilystudio.netbook.api.b.a();
            ResultStatus4 = com.clilystudio.netbook.api.b.b().i(String_1darray1[0], a);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return ResultStatus4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((ResultStatus) Object2).isOk()) {
            Account Account3 = am.a((Activity) b);

            if (Account3 != null)
                FollowRecord.cancelFollow(Account3.getUser().getId(), a);
        } else if (Object2 != null && "TOKEN_INVALID".equals(((ResultStatus) Object2).getCode()))
            b.d();
        else
            com.clilystudio.netbook.util.e.a((Activity) b, "\t\t\u53D6\u6D88\u5173\u6CE8\u5931\u8D25\t\t");
    }
}
