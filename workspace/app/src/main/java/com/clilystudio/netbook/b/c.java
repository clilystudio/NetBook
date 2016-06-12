
package com.clilystudio.netbook.b;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.bf;

public final class c extends b {

    public c(Context Context1, bf bf2)
    {
        super( Context1 );
        b = bf2;
    }

    private bf b;

    public final Intent a()
    {
        Intent Intent1 = SearchActivity.a( a, 2 );

        Intent1.putExtra( "keyword", b.c() );
        return Intent1;
    }
}
