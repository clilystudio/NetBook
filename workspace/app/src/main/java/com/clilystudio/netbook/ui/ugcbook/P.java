package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class P
        extends c<Void, ResultStatus> {
    private /* synthetic */ UGCGuideEditBooksActivity a;

    public P(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        this.a = uGCGuideEditBooksActivity;
        super((Activity) uGCGuideEditBooksActivity, "\u6b63\u5728\u4fdd\u5b58\u5230\u8349\u7a3f\u7bb1...");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ ResultStatus a() {
        Account account = am.a((Activity) this.a);
        if (account == null) return null;
        try {
            if (UGCGuideEditBooksActivity.f(this.a) == null) return b.b().b(UGCGuideEditBooksActivity.m(this.a), account.getToken());
            if (UGCGuideEditBooksActivity.f(this.a).equals("")) return b.b().b(UGCGuideEditBooksActivity.m(this.a), account.getToken());
            return b.b().b(UGCGuideEditBooksActivity.l(this.a), account.getToken(), UGCGuideEditBooksActivity.f(this.a));
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        if (resultStatus == null || !resultStatus.isOk()) {
            e.a((Activity) this.a, (String) "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, (String) "\u5df2\u4fdd\u5b58\u5230\u8349\u7a3f\u7bb1");
        UGCNewCollection uGCNewCollection = UGCGuideEditBooksActivity.n(this.a);
        i.a().c(new E());
        i.a().c(new J(UGCGuideEditBooksActivity.f(this.a), uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
        this.a.finish();
    }
}
