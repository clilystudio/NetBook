
package com.clilystudio.netbook.util;

import android.content.Context;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.BookTopRoot$Favorite;
import java.io.IOException;

public final class s extends e {

    public s(Context Context1)
    {
        a = Context1;
    }

    private Context a;

    private transient BookTopRoot a()
    {
        BookTopRoot BookTopRoot2;

        try
        {
            BookTopRoot2 = c().u();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return BookTopRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (BookTopRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null )
        {
            BookTopRoot$Favorite Favorite3 = ((BookTopRoot) Object2).getFavorite();

            if( Favorite3 != null )
                com.clilystudio.netbook.hpay100.a.a.b( a, Favorite3.getBookID(), Favorite3.getTocID(), Favorite3.getChecksum() );
        }
    }
}
