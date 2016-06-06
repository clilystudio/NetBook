package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.db.AccountInfo;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.w;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Root;

final class M extends S<Root> {
    M(J paramJ) {
    }

    protected final Root a(ApiService paramApiService, String[] paramArrayOfString) {
        return paramApiService.M(paramArrayOfString[0]);
    }

    protected final void b(Root paramRoot) {
        this.a.b(0);
        am_CommonUtils.b_loadWebGame(J.a(this.a), System.currentTimeMillis());
        Account localAccount = am_CommonUtils.e_getAccount();
        if (localAccount != null) {
            AccountInfo localAccountInfo = AccountInfo.getByToken(localAccount.getToken());
            if (localAccountInfo != null) {
                localAccountInfo.setPrevUnimpNotif(0);
                localAccountInfo.save();
            }
        }
        i_OttoBus.a().c(new w());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.M
 * JD-Core Version:    0.6.2
 */