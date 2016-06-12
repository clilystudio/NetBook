
package com.clilystudio.netbook.reader.txt;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.reader.ReaderOptionActivity;
import com.clilystudio.netbook.reader.db;

final class a implements db {

    a(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void a()
    {
        a.startActivityForResult( ReaderOptionActivity.a( (Context) a ), 0 );
    }
}
