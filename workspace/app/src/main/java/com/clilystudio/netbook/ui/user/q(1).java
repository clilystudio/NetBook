package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeGenderRoot;

import java.io.IOException;

final class q extends c<String, ChangeGenderRoot> {
    public q(ModifyUserInfoActivity paramModifyUserInfoActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034218);
    }

    private ChangeGenderRoot a(String[] paramArrayOfString) {
        Account localAccount = am.e();
        if (localAccount != null)
            try {
                ChangeGenderRoot localChangeGenderRoot = b.b().v(localAccount.getToken(), paramArrayOfString[0]);
                return localChangeGenderRoot;
            } catch (IOException localIOException) {
                localIOException.printStackTrace();
            }
        return null;
    }
}

