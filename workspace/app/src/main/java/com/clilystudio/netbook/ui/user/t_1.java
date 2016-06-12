package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.net.Uri;
import android.support.design.widget.am;

import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class t extends com.clilystudio.netbook.a.c {

    private Uri a;
    private ModifyUserInfoActivity b;
    public t(ModifyUserInfoActivity ModifyUserInfoActivity1, ModifyUserInfoActivity ModifyUserInfoActivity2, String String3, Uri Uri4) {
        super((Activity) ModifyUserInfoActivity2, String3);
        b = ModifyUserInfoActivity1;
        a = Uri4;
    }

    private transient Root a() {
        Root Root2;

        try {
            Root2 = com.clilystudio.netbook.api.b.b().a(am.a((Activity) b).getToken(), a);
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return Root2;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a();
    }

    public final void a(Object Object1) {
        Root Root2 = (Root) Object1;

        if (Root2 != null && Root2.isOk()) {
            e.a((Activity) b, "\u4FEE\u6539\u6210\u529F");
            i.a().c(new K());
            b.mPortrait.setImageURI(a);
        } else
            e.a((Activity) b, "\u4E0A\u4F20\u5931\u8D25");
    }
}
