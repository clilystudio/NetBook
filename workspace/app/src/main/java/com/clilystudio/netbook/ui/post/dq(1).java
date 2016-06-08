package com.clilystudio.netbook.ui.post;

import android.content.Context;

public final class dq {
    private Context a;
    private String b;
    private String c;
    private boolean d;
    private String e;

    public dq(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, String paramString3) {
        this.a = paramContext;
        this.b = paramString1;
        this.c = paramString2;
        this.d = paramBoolean;
        this.e = paramString3;
    }

    public final void a() {
        h localh = new h(this.a);
        localh.d = "发布";
        localh.a(new String[]{"话题", "投票"}, new dr(this)).b();
    }
}

