package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

import java.io.IOException;

final class P extends c<Void, ResultStatus> {
    public P(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity) {
        super(paramUGCGuideEditBooksActivity, "正在保存到草稿箱...");
    }

    private ResultStatus a() {
        try {
            Account localAccount = am.a(this.a);
            if (localAccount != null) {
                if ((UGCGuideEditBooksActivity.f(this.a) != null) && (!UGCGuideEditBooksActivity.f(this.a).equals("")))
                    return b.b().b(UGCGuideEditBooksActivity.l(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f(this.a));
                ResultStatus localResultStatus = b.b().b(UGCGuideEditBooksActivity.m(this.a), localAccount.getToken());
                return localResultStatus;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

