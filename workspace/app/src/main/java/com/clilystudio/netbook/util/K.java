package com.clilystudio.netbook.util;

import android.content.Context;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.Root;

import java.util.Date;

final class K extends S<NotifCountRoot> {
    private /* synthetic */ J a;

    K(J j) {
        this.a = j;
    }

    @Override
    protected final /* synthetic */ Root a(ApiService apiService, String[] arrstring) {
        return apiService.G(arrstring[0]);
    }

    @Override
    protected final /* synthetic */ void b(Root root) {
        NotifCountRoot notifCountRoot = (NotifCountRoot) root;
        J.a(this.a, notifCountRoot.getImportant());
        J.b(this.a, notifCountRoot.getUnimportant());
        Date date = notifCountRoot.getLastReadImportantTime();
        Date date2 = notifCountRoot.getLastReadUnimportantTime();
        if (am.h((Context) J.a(this.a)).equals("0")) {
            am.a((Context) J.a(this.a), (long) date.getTime());
        }
        if (am.i((Context) J.a(this.a)).equals("0")) {
            am.b((Context) J.a(this.a), (long) date2.getTime());
        }
        i.a().c(new w());
    }
}
