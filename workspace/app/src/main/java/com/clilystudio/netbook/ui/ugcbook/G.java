package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;

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
            Account localAccount = am.a(this.a);
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
