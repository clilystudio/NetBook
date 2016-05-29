package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookDetailRoot;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.io.IOException;

final class r extends e<String, Void, UGCBookDetailRoot> {
    private r(UGCDetailActivity paramUGCDetailActivity) {
    }

    private UGCBookDetailRoot a(String[] paramArrayOfString) {
        try {
            if (UGCDetailActivity.k(this.a)) {
                Account localAccount = am_CommonUtils.a_isTaskStoped(this.a);
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.r
 * JD-Core Version:    0.6.2
 */