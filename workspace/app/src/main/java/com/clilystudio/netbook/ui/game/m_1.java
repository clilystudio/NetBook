package com.clilystudio.netbook.ui.game;

import android.app.Activity;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class m extends S<Root> {
    private String a;
    private String b;
    private /* synthetic */ GameDetailActivity c;

    private m(GameDetailActivity gameDetailActivity) {
        this.c = gameDetailActivity;
    }

    /* synthetic */ m(GameDetailActivity gameDetailActivity, byte by) {
        this(gameDetailActivity);
    }

    @Override
    protected final Root a(ApiService apiService, String[] arrstring) {
        this.a = arrstring[0];
        this.b = arrstring[1];
        return apiService.F(this.a, this.b);
    }

    @Override
    protected final void a(Root root) {
        e.a((Activity) this.c, "\u5df2\u540c\u611f");
        PostAgreeRecord.add(this.b, this.a);
    }

    @Override
    protected final void b(Root root) {
        PostAgreeRecord.add(this.b, this.a);
    }
}
