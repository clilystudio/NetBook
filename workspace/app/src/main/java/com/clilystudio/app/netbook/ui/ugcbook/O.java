package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ResultStatus;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.io.IOException;

final class O extends c<Void, ResultStatus> {
    public O(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity) {
        super(paramUGCGuideEditBooksActivity, 2131034218);
    }

    private ResultStatus a() {
        try {
            Account localAccount = am_CommonUtils.a_isTaskStoped(this.a);
            if (localAccount != null) {
                if (UGCGuideEditBooksActivity.d_setTitle(this.a))
                    return b.b().c(UGCGuideEditBooksActivity.d_setRight(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f_setTitle(this.a));
                if ((UGCGuideEditBooksActivity.f_setTitle(this.a) != null) && (!UGCGuideEditBooksActivity.f_setTitle(this.a).equals("")))
                    return b.b().a(UGCGuideEditBooksActivity.g(this.a), localAccount.getToken(), UGCGuideEditBooksActivity.f_setTitle(this.a));
                ResultStatus localResultStatus = b.b().a(UGCGuideEditBooksActivity.h(this.a), localAccount.getToken());
                return localResultStatus;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.O
 * JD-Core Version:    0.6.2
 */