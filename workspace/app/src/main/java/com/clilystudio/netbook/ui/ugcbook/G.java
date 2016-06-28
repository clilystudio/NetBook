package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.util.e;

final class G extends c<Void, ResultStatus> {
    private /* synthetic */ UGCGuideAddCollectionActivity a;

    public G(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        super((Activity) uGCGuideAddCollectionActivity, "正在保存到草稿箱...");
        this.a = uGCGuideAddCollectionActivity;
        UGCNewCollection uGCNewCollection = UGCGuideAddCollectionActivity.b(uGCGuideAddCollectionActivity);
        uGCNewCollection.setTitle(UGCGuideAddCollectionActivity.c(uGCGuideAddCollectionActivity).getText().toString());
        uGCNewCollection.setDesc(UGCGuideAddCollectionActivity.d(uGCGuideAddCollectionActivity).getText().toString());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ ResultStatus a() {
        Account account = am.a((Activity) this.a);
        if (account == null) return null;
        if (UGCGuideAddCollectionActivity.e(this.a) == null) return b.b().b(UGCGuideAddCollectionActivity.g(this.a), account.getToken());
        if (UGCGuideAddCollectionActivity.e(this.a).equals("")) return b.b().b(UGCGuideAddCollectionActivity.g(this.a), account.getToken());
        return b.b().b(UGCGuideAddCollectionActivity.f(this.a), account.getToken(), UGCGuideAddCollectionActivity.e(this.a));
    }

    @Override
    public ResultStatus a(Void... var1) {
        return this.a();
    }

    @Override
    public final /* synthetic */ void a(ResultStatus object) {
        ResultStatus resultStatus = (ResultStatus) object;
        if (resultStatus == null || !resultStatus.isOk()) {
            e.a((Activity) this.a, (String) "保存失败，请检查网络或重试");
            return;
        }
        e.a((Activity) this.a, (String) "已保存到草稿箱");
        UGCNewCollection uGCNewCollection = UGCGuideAddCollectionActivity.h(this.a);
        i.a().post(new E());
        i.a().post(new J(UGCGuideAddCollectionActivity.e(this.a), uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
        this.a.finish();
    }
}
