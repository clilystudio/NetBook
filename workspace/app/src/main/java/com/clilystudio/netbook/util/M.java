package com.clilystudio.netbook.util;

import android.support.design.widget.am;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Root;

final class M extends S {

    private J a;

    M(J J1) {
        a = J1;
    }

    protected final Root a(ApiService ApiService1, String[] String_1darray2) {
        return ApiService1.M(String_1darray2[0]);
    }

    protected final void b(Root Root1) {
        Account Account2;

        a.b(0);
        am.b(J.a(a), System.currentTimeMillis());
        Account2 = am.e();
        if (Account2 != null) {
            AccountInfo AccountInfo3 = AccountInfo.getByToken(Account2.getToken());

            if (AccountInfo3 != null) {
                AccountInfo3.setPrevUnimpNotif(0);
                AccountInfo3.save();
            }
        }
        i.a().c(new w());
    }
}
