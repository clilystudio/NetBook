package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class cp
        extends com.clilystudio.netbook.a.e<String, Void, ResultStatus> {
    private String a;
    private /* synthetic */ OtherUserActivity b;

    private cp(OtherUserActivity otherUserActivity) {
        this.b = otherUserActivity;
    }

    /* synthetic */ cp(OtherUserActivity otherUserActivity, byte by) {
        this(otherUserActivity);
    }

    private /* varargs */ ResultStatus a(String... arrstring) {
        try {
            this.a = arrstring[1];
            b.a();
            ResultStatus resultStatus = b.b().h(arrstring[0], this.a);
            return resultStatus;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus != null && resultStatus.isOk()) {
            OtherUserActivity.a(this.b, 1);
            Account account = am.a(this.b);
            if (account != null) {
                FollowRecord.save2DB(account.getUser().getId(), this.a);
            }
            return;
        }
        if (resultStatus != null && "TOKEN_INVALID".equals(resultStatus.getCode())) {
            this.b.d();
            return;
        }
        e.a((Activity) this.b, "\t\t\u5173\u6ce8\u5931\u8d25\t\t");
    }
}