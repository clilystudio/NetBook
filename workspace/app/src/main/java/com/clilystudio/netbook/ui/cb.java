package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.Dialog;

import com.cocosw.bottomsheet.a;

public final class cb {
    private Activity a;
    private cd b;

    public cb(Activity activity, cd cd2) {
        this.a = activity;
        this.b = cd2;
    }

    static /* synthetic */ cd a(cb cb2) {
        return cb2.b;
    }

    public final Dialog a() {
        return new g(this.a).a(R.menu.share_post).a().a(new cc(this)).b();
    }
}
