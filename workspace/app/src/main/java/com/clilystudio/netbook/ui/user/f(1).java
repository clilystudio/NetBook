package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;

final class f extends c<String, Account> {
    public f(AuthLoginActivity paramAuthLoginActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034409);
    }

    private static Account a(String[] paramArrayOfString) {
        try {
            b.a();
            Account localAccount = b.b().g(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localAccount;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

