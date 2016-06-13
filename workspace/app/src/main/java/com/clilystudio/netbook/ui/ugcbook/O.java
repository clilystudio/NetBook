package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Intent;
import android.support.design.widget.am;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.user.UserUGCActivity;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class O
        extends c<Void, ResultStatus> {
    private /* synthetic */ UGCGuideEditBooksActivity a;

    public O(UGCGuideEditBooksActivity uGCGuideEditBooksActivity) {
        this.a = uGCGuideEditBooksActivity;
        super((Activity) uGCGuideEditBooksActivity, 2131034218);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ ResultStatus a() {
        Account account = am.a((Activity) this.a);
        if (account == null) return null;
        try {
            if (UGCGuideEditBooksActivity.d(this.a)) {
                return b.b().c(UGCGuideEditBooksActivity.e(this.a), account.getToken(), UGCGuideEditBooksActivity.f(this.a));
            }
            if (UGCGuideEditBooksActivity.f(this.a) == null) return b.b().a(UGCGuideEditBooksActivity.h(this.a), account.getToken());
            if (UGCGuideEditBooksActivity.f(this.a).equals("")) return b.b().a(UGCGuideEditBooksActivity.h(this.a), account.getToken());
            return b.b().a(UGCGuideEditBooksActivity.g(this.a), account.getToken(), UGCGuideEditBooksActivity.f(this.a));
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        Intent intent;
        ResultStatus resultStatus = (ResultStatus) object;
        if (resultStatus == null || !resultStatus.isOk()) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25");
            return;
        }
        if (UGCGuideEditBooksActivity.d(this.a)) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u6210\u529f");
            intent = new Intent(this.a, UserUGCActivity.class);
            intent.setFlags(67108864);
        } else if (UGCGuideEditBooksActivity.f(this.a) != null && !UGCGuideEditBooksActivity.f(this.a).equals("")) {
            e.a((Activity) this.a, (String) "\u4fee\u6539\u6210\u529f");
            UGCNewCollection uGCNewCollection = UGCGuideEditBooksActivity.i(this.a);
            Intent intent2 = new Intent(this.b(), UGCDetailActivity.class);
            intent2.putExtra("book_id", UGCGuideEditBooksActivity.f(this.a));
            intent2.putExtra("my_list", true);
            intent2.putExtra("modify_update", uGCNewCollection);
            intent2.putExtra("my_author", UGCGuideEditBooksActivity.j(this.a));
            intent2.setFlags(67108864);
            i.a().c(new J(UGCGuideEditBooksActivity.f(this.a), uGCNewCollection.getTitle(), uGCNewCollection.getDesc(), uGCNewCollection.getBooks().size(), uGCNewCollection.getBooks().get(0).getCover()));
            intent = intent2;
        } else {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u6210\u529f");
            intent = new Intent(this.a, UGCMainActivity.class);
        }
        this.a.startActivity(intent);
    }
}
