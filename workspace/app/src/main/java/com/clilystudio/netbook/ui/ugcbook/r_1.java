package com.clilystudio.netbook.ui.ugcbook;

import android.support.design.widget.am;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCBookDetailRoot;

import java.io.IOException;

final class r
        extends e<String, Void, UGCBookDetailRoot> {
    private /* synthetic */ UGCDetailActivity a;

    private r(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    /* synthetic */ r(UGCDetailActivity uGCDetailActivity, byte by) {
        this(uGCDetailActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ UGCBookDetailRoot a(String... arrstring) {
        if (!UGCDetailActivity.k(this.a)) return b.b().U(arrstring[0]);
        Account account = am.a(this.a);
        if (account == null) return null;
        try {
            return b.b().C(account.getToken(), arrstring[0]);
        } catch (IOException var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UGCBookDetailRoot uGCBookDetailRoot = (UGCBookDetailRoot) object;
        super.onPostExecute(uGCBookDetailRoot);
        if (uGCBookDetailRoot != null && uGCBookDetailRoot.isOk() && uGCBookDetailRoot.getBookList() != null) {
            UGCBookDetail uGCBookDetail = uGCBookDetailRoot.getBookList();
            UGCDetailActivity.a(this.a, uGCBookDetail);
            UGCDetailActivity.a(this.a, uGCBookDetail.getAuthor());
            UGCDetailActivity.b(this.a, uGCBookDetail);
            return;
        }
        UGCDetailActivity.a(this.a, 2);
    }
}
