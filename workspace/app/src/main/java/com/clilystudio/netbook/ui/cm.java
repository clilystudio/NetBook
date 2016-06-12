
package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.b.e;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import com.clilystudio.netbook.db.BookFile;
import java.io.File;

final class cm implements r {

    cm(WifiActivity WifiActivity1, BookFile BookFile2)
    {
        a = BookFile2;
    }

    private BookFile a;

    public final void a(com.koushikdutta.async.http.server.h h1, l l2)
    {
        File File3 = com.clilystudio.netbook.hpay100.a.a.I( a.getName() );

        if( File3 != null )
        {
            l2.c().a().a( "Content-Disposition", "attachment" );
            l2.a( File3 );
        }
        else
            l2.a( "error" );
    }
}
