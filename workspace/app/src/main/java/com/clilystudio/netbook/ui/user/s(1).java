package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeNickNameRoot;

import java.io.IOException;

final class s extends c<String, ChangeNickNameRoot> {
    private String a;

    public s(ModifyUserInfoActivity paramModifyUserInfoActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034218);
    }

    private ChangeNickNameRoot a(String[] paramArrayOfString) {
        this.a = paramArrayOfString[0];
        Account localAccount = am.e();
        if (localAccount != null)
            try {
                ChangeNickNameRoot localChangeNickNameRoot = b.b().u(localAccount.getToken(), paramArrayOfString[0]);
                return localChangeNickNameRoot;
            } catch (IOException localIOException) {
                localIOException.printStackTrace();
            }
        return null;
    }
}

