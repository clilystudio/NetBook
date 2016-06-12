
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class m extends S {

    m(GameDetailActivity GameDetailActivity1, byte byte2)
    {
        this( GameDetailActivity1 );
    }

    private String a;
    private String b;
    private GameDetailActivity c;

    private m(GameDetailActivity GameDetailActivity1)
    {
        c = GameDetailActivity1;
    }

    protected final Root a(ApiService ApiService1, String[] String_1darray2)
    {
        a = String_1darray2[0];
        b = String_1darray2[1];
        return ApiService1.F( a, b );
    }

    protected final void a(Root Root1)
    {
        e.a( (Activity) c, "\u5DF2\u540C\u611F" );
        PostAgreeRecord.add( b, a );
    }

    protected final void b(Root Root1)
    {
        PostAgreeRecord.add( b, a );
    }
}
