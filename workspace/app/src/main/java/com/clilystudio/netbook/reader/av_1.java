
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;

final class av implements db {

    av(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void a()
    {
        a.startActivityForResult( ReaderOptionActivity.a( (Context) a ), 0 );
    }
}
