package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.db.FollowRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.q;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

final class V extends e<String, Void, ResultStatus> {
    private String a;
    private /* synthetic */ G b;

    private V(G g) {
        this.b = g;
    }

    /* synthetic */ V(G g, byte by) {
        this(g);
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        String[] arrstring = (String[]) arrobject;
        this.a = arrstring[1];
        return this.c().i(arrstring[0], arrstring[1]);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        Account account = am.e();
        if (resultStatus != null && resultStatus.isOk()) {
            i.a().c(new q());
            FollowRecord.cancelFollow(account.getUser().getId(), this.a);
            return;
        } else {
            if (!"TOKEN_INVALID".equals(resultStatus.getCode())) return;
            {
                com.clilystudio.netbook.util.e.a((Activity) ((Activity) G.a(this.b)), (String) G.a(this.b).getString(2131034547));
                return;
            }
        }
    }
}
