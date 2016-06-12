
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.bH;

final class k implements com.clilystudio.netbook.umeng.update.a {

    k(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void a(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                if( ReaderTxtActivity.F( a ).e() )
                    ReaderTxtActivity.G( a );
                else
                    ReaderTxtActivity.H( a );
                return;
            case 2:
                ReaderTxtActivity.G( a );
                return;
            case 0:
                ReaderTxtActivity.I( a );
                return;
        }
    }
}
