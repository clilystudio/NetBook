package com.clilystudio.netbook.ui.post;

import android.content.Context;

public final class ds {
    private Context a;
    private String b;
    private String c;
    private String d;

    public ds(Context paramContext) {
        this.a = paramContext;
    }

    public final dq a() {
        return new dq(this.a, this.b, this.c, false, this.d);
    }

    public final ds a(String paramString) {
        this.b = paramString;
        return this;
    }

    public final ds b(String paramString) {
        this.c = paramString;
        return this;
    }

    public final ds c(String paramString) {
        this.d = paramString;
        return this;
    }
}

