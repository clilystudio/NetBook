package com.clilystudio.netbook.ui.post;

import android.content.Context;

public final class ds {
    private Context a;
    private String b;
    private String c;
    private String d;

    public ds(Context context) {
        this.a = context;
    }

    public final dq a() {
        return new dq(this.a, this.b, this.c, false, this.d);
    }

    public final ds a(String string) {
        this.b = string;
        return this;
    }

    public final ds b(String string) {
        this.c = string;
        return this;
    }

    public final ds c(String string) {
        this.d = string;
        return this;
    }
}
