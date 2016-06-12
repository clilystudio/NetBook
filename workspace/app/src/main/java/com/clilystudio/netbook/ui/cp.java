
package com.clilystudio.netbook.ui;

import com.google.gson.Gson;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.ResponseBookFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class cp implements r {

    cp(WifiActivity WifiActivity1)
    {
    }

    public final void a(h h1, l l2)
    {
        Gson Gson3 = new Gson();
        List List4 = com.clilystudio.netbook.hpay100.a.a.f();
        Object Object5 = new ArrayList();
        Iterator Iterator6 = List4.iterator();

        while( Iterator6.hasNext() )
            ((List) Object5).add( new ResponseBookFile( (BookFile) Iterator6.next() ) );
        l2.a( "application/json; charset=utf-8", Gson3.toJson( Object5 ) );
    }
}
