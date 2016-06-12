
package com.clilystudio.netbook.util;

import android.app.Activity;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.RemoteBookShelf;

final class ac extends com.clilystudio.netbook.a.c {

    public ac(Z Z1, Activity Activity2)
    {
        super( Activity2, 2131034524 );
        a = Z1;
    }

    private Z a;

    public final Object a(Object[] Object_1darray1)
    {
        String[] String_1darray2 = (String[]) Object_1darray1;
        Object Object3 = Z.a( a, String_1darray2[0] );

        if( Object3 != null )
        {
            if( ((RemoteBookShelf) Object3).isNeedSync() )
            {
                if( ((RemoteBookShelf) Object3).isOk() )
                {
                    Z.a( a, (RemoteBookShelf) Object3 );
                    e.a( Z.b( a ), "\u540C\u6B65\u5B8C\u6210" );
                }
                else if( "TOKEN_INVALID".equals( ((RemoteBookShelf) Object3).getCode() ) )
                    e.a( Z.b( a ), 2131034525 );
                else
                    e.a( Z.b( a ), "\u540C\u6B65\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
            }
            else
                e.a( Z.b( a ), "\u540C\u6B65\u5B8C\u6210" );
        }
        else
            e.a( Z.b( a ), "\u540C\u6B65\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
        return Object3;
    }

    public final void a(Object Object1)
    {
        RemoteBookShelf RemoteBookShelf2 = (RemoteBookShelf) Object1;

        if( RemoteBookShelf2 != null )
            i.a().c( new A( RemoteBookShelf2.getTotalBookCounts() ) );
        else
            i.a().c( new A( 1 ) );
    }
}
