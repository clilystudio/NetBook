package com.clilystudio.netbook.view;

import android.app.Activity;
import android.app.Dialog;

import com.clilystudio.netbook.ui.cd;
import com.cocosw.bottomsheet.g;

public final class c {
    private Activity a;
    private cd b;

    public c(Activity paramActivity, cd paramcd) {
        this.a = paramActivity;
        this.b = paramcd;
    }

    public final Dialog a() {
        return new g(this.a).a(2131558406).a().a(new d(this)).b();
    }
}

