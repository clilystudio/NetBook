
package com.clilystudio.netbook.reader.random;

import android.content.Context;
import com.clilystudio.netbook.umeng.a.b;

final class L implements com.clilystudio.netbook.umeng.update.a {

    L(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void a(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1070:
                a.onBackPressed();
                b.a( (Context) a, "random_reader_quit" );
                return;
        }
    }
}
