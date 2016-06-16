package com.clilystudio.netbook.view;

import android.app.Activity;
import android.app.Dialog;

import com.clilystudio.netbook.ui.cd;
import com.cocosw.bottomsheet.a;
import com.cocosw.bottomsheet.g;

public final class c {
    private Activity a;
    private cd b;

    public c(Activity activity, cd cd2) {
        this.a = activity;
        this.b = cd2;
    }

    static /* synthetic */ cd a(c c2) {
        return c2.b;
    }

    public final Dialog a() {
        return new g(this.a).a(R.menu.share_lucky_game).a().a(new d(this)).b();
    }
}
