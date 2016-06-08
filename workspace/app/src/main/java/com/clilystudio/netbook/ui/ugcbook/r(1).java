package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookDetailRoot;

import java.io.IOException;

final class r extends e<String, Void, UGCBookDetailRoot> {
    private r(UGCDetailActivity paramUGCDetailActivity) {
    }

    private UGCBookDetailRoot a(String[] paramArrayOfString) {
        try {
            if (UGCDetailActivity.k(this.a)) {
                Account localAccount = am.a(this.a);
                if (localAccount != null)
                    return b.b().C(localAccount.getToken(), paramArrayOfString[0]);
            } else {
                UGCBookDetailRoot localUGCBookDetailRoot = b.b().U(paramArrayOfString[0]);
                return localUGCBookDetailRoot;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

