
package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.umeng.a.b;
import java.util.Map;

final class A implements DialogInterface$OnClickListener {

    A(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        b.a( (Context) a, "random_reader_quit_choice", "quit" );
        b.a( (Context) a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g( a ) );
        a.finish();
    }
}
