package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.bf;

public final class c extends b {
    private bf b;

    public c(Context paramContext, bf parambf) {
        super(paramContext);
        this.b = parambf;
    }

    public final Intent a() {
        Intent localIntent = SearchActivity.a(this.a, 2);
        localIntent.putExtra("keyword", this.b.c());
        return localIntent;
    }
}

