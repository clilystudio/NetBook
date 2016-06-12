
package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.SettingWidget;

final class M implements com.clilystudio.netbook.umeng.update.a {

    M(ReaderTxtActivity ReaderTxtActivity1)
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
            case 2131493890:
                ReaderTxtActivity.s( a ).a();
                return;
            case 2131493892:
                ReaderTxtActivity.a( a );
                ReaderTxtActivity.t( a );
                return;
            case 2131493881:
                a.onBackPressed();
                return;
            case 2131493888:
                ReaderTxtActivity.b( a, true );
                ReaderTxtActivity.u( a );
                return;
            case 2131493859:
                ReaderTxtActivity.v( a );
                return;
        }
    }
}
