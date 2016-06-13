package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class an
        extends S<Root> {
    private String a;
    private String b;
    private /* synthetic */ PostAgreeView c;

    private an(PostAgreeView postAgreeView) {
        this.c = postAgreeView;
    }

    /* synthetic */ an(PostAgreeView postAgreeView, byte by) {
        this(postAgreeView);
    }

    @Override
    protected final Root a(ApiService apiService, String[] arrstring) {
        this.a = arrstring[0];
        this.b = arrstring[1];
        return apiService.F(this.a, this.b);
    }

    @Override
    protected final void a(Root root) {
        e.a((Activity) ((Activity) this.c.getContext()), (String) "\u5df2\u540c\u611f");
        PostAgreeRecord.add(this.b, this.a);
    }

    @Override
    protected final void b(Root root) {
        this.c.setOnClickListener(null);
        PostAgreeRecord.add(this.b, this.a);
    }
}
