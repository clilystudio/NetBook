package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.bf;

public final class c
        extends b {
    private bf b;

    public c(Context context, bf bf2) {
        super(context);
        this.b = bf2;
    }

    @Override
    public final Intent a() {
        Intent intent = SearchActivity.a(this.a, 2);
        intent.putExtra("keyword", this.b.c());
        return intent;
    }
}
