package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ResultStatus;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.io.IOException;

final class G extends c<Void, ResultStatus> {
    public G(UGCGuideAddCollectionActivity paramUGCGuideAddCollectionActivity) {
        super(paramUGCGuideAddCollectionActivity, "正在保存到草稿箱...");
        UGCNewCollection localUGCNewCollection = UGCGuideAddCollectionActivity.b(paramUGCGuideAddCollectionActivity);
        localUGCNewCollection.setTitle(UGCGuideAddCollectionActivity.c(paramUGCGuideAddCollectionActivity).getText().toString());
        localUGCNewCollection.setDesc(UGCGuideAddCollectionActivity.d(paramUGCGuideAddCollectionActivity).getText().toString());
    }

    private ResultStatus a() {
        try {
            Account localAccount = am_CommonUtils.a_isTaskStoped(this.a);
            if (localAccount != null) {
                if ((UGCGuideAddCollectionActivity.e(this.a) != null) && (!UGCGuideAddCollectionActivity.e(this.a).equals("")))
                    return b.b().b(UGCGuideAddCollectionActivity.f(this.a), localAccount.getToken(), UGCGuideAddCollectionActivity.e(this.a));
                ResultStatus localResultStatus = b.b().b(UGCGuideAddCollectionActivity.g(this.a), localAccount.getToken());
                return localResultStatus;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.G
 * JD-Core Version:    0.6.2
 */