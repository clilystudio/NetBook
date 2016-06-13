package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.RemoteBookShelf;

final class ac
        extends c<String, RemoteBookShelf> {
    private /* synthetic */ Z a;

    public ac(Z z, Activity activity) {
        this.a = z;
        super(activity, 2131034524);
    }

    @Override
    public final /* synthetic */ Object a(Object[] arrobject) {
        String[] arrstring = (String[]) arrobject;
        RemoteBookShelf remoteBookShelf = Z.a(this.a, arrstring[0]);
        if (remoteBookShelf != null) {
            if (remoteBookShelf.isNeedSync()) {
                if (remoteBookShelf.isOk()) {
                    Z.a(this.a, remoteBookShelf);
                    e.a((Activity) Z.b(this.a), (String) "\u540c\u6b65\u5b8c\u6210");
                    return remoteBookShelf;
                }
                if ("TOKEN_INVALID".equals(remoteBookShelf.getCode())) {
                    e.a((Activity) Z.b(this.a), (int) 2131034525);
                    return remoteBookShelf;
                }
                e.a((Activity) Z.b(this.a), (String) "\u540c\u6b65\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
                return remoteBookShelf;
            }
            e.a((Activity) Z.b(this.a), (String) "\u540c\u6b65\u5b8c\u6210");
            return remoteBookShelf;
        }
        e.a((Activity) Z.b(this.a), (String) "\u540c\u6b65\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
        return remoteBookShelf;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        RemoteBookShelf remoteBookShelf = (RemoteBookShelf) object;
        if (remoteBookShelf != null) {
            i.a().c(new A(remoteBookShelf.getTotalBookCounts()));
            return;
        }
        i.a().c(new A(1));
    }
}
