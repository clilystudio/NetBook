
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class an extends S {

    an(PostAgreeView PostAgreeView1, byte byte2)
    {
        this( PostAgreeView1 );
    }

    private String a;
    private String b;
    private PostAgreeView c;

    private an(PostAgreeView PostAgreeView1)
    {
        c = PostAgreeView1;
    }

    protected final Root a(ApiService ApiService1, String[] String_1darray2)
    {
        a = String_1darray2[0];
        b = String_1darray2[1];
        return ApiService1.F( a, b );
    }

    protected final void a(Root Root1)
    {
        e.a( (Activity) c.getContext(), "\u5DF2\u540C\u611F" );
        PostAgreeRecord.add( b, a );
    }

    protected final void b(Root Root1)
    {
        c.setOnClickListener( null );
        PostAgreeRecord.add( b, a );
    }
}
