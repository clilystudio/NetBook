package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Root;

final class M extends S<Root> {
    private /* synthetic */ J a;

    M(J j) {
        this.a = j;
    }

    @Override
    protected final Root a(ApiService apiService, String[] arrstring) {
        return apiService.M(arrstring[0]);
    }

    @Override
    protected final void b(Root root) {
        AccountInfo accountInfo;
        this.a.b(0);
        am.b((Context) J.a(this.a), (long) System.currentTimeMillis());
        Account account = am.e();
        if (account != null && (accountInfo = AccountInfo.getByToken(account.getToken())) != null) {
            accountInfo.setPrevUnimpNotif(0);
            accountInfo.save();
        }
        i.a().c(new w());
    }
}
