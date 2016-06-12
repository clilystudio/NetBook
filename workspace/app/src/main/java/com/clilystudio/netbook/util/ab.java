
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.RemoteBookShelf;

final class ab extends e {

    ab(Z Z1, byte byte2)
    {
        this( Z1 );
    }

    private Z a;

    private ab(Z Z1)
    {
        a = Z1;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        String[] String_1darray2 = (String[]) Object_1darray1;

        Z.b( true );
        return Z.a( a, String_1darray2[0] );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (RemoteBookShelf) Object1;

        super.onPostExecute( Object2 );
        Z.b( false );
        if( Object2 != null && ((RemoteBookShelf) Object2).isNeedSync() && ((RemoteBookShelf) Object2).isOk() )
        {
            Z.a( a, (RemoteBookShelf) Object2 );
            i.a().c( new A( ((RemoteBookShelf) Object2).getTotalBookCounts() ) );
        }
    }
}
