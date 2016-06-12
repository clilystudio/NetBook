
package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import com.clilystudio.netbook.ui.cd;

final class n implements cd {

    n(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private UGCDetailActivity a;

    public final void a(int int1)
    {
        switch( int1 )
        {
            case 0:
                UGCDetailActivity.a( a, new StringBuilder( "\u9009\u5BF9\u59FF\u52BF\u770B\u5C0F\u8BF4\uFF0C\u4E66\u8352886~" ).append( UGCDetailActivity.i( a ) ).append( "\uFF0C\u7CFB\u5217\u597D\u4E66\u6253\u5305\u63A8\u8350\uFF1A" ).append( UGCDetailActivity.j( a ) ).toString() );
                break;
            case 3:
            case 4:
            case 1:
                UGCDetailActivity.a( a, new StringBuilder( "\u7CFB\u5217\u597D\u4E66\u6253\u5305\u63A8\u8350\uFF1A" ).append( UGCDetailActivity.j( a ) ).toString() );
                break;
            case 2:
                UGCDetailActivity.a( a, UGCDetailActivity.i( a ) );
                break;
            default:
                break;
        }
        a.a( int1 );
        com.clilystudio.netbook.hpay100.a.a.a( (Context) a, int1, 3 );
    }
}
