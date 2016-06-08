package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class m extends S<Root> {
    private String a;
    private String b;

    private m(GameDetailActivity paramGameDetailActivity) {
    }

    protected final Root a(ApiService paramApiService, String[] paramArrayOfString) {
        this.a = paramArrayOfString[0];
        this.b = paramArrayOfString[1];
        return paramApiService.F(this.a, this.b);
    }

    protected final void a(Root paramRoot) {
        e.a(this.c, "已同感");
        PostAgreeRecord.add(this.b, this.a);
    }

    protected final void b(Root paramRoot) {
        PostAgreeRecord.add(this.b, this.a);
    }
}

