package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.net.Uri;
import android.support.design.widget.am;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class t
        extends c<String, Root> {
    private Uri a;
    private /* synthetic */ ModifyUserInfoActivity b;

    public t(ModifyUserInfoActivity modifyUserInfoActivity, ModifyUserInfoActivity modifyUserInfoActivity2, String string, Uri uri) {
        this.b = modifyUserInfoActivity;
        super((Activity) modifyUserInfoActivity2, string);
        this.a = uri;
    }

    private /* varargs */ Root a() {
        try {
            Root root = b.b().a(am.a(this.b).getToken(), this.a);
            return root;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        Root root = (Root) object;
        if (root != null && root.isOk()) {
            e.a((Activity) this.b, "\u4fee\u6539\u6210\u529f");
            i.a().c(new K());
            this.b.mPortrait.setImageURI(this.a);
            return;
        }
        e.a((Activity) this.b, "\u4e0a\u4f20\u5931\u8d25");
    }
}
