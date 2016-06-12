
package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.iflytek.cloud.InitListener;
import com.clilystudio.netbook.util.e;

final class al implements InitListener {

    al(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onInit(int int1)
    {
        if( int1 != 0 )
            e.a( (Activity) a, "\u521D\u59CB\u5316\u8BED\u97F3\u7EC4\u4EF6\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5" );
    }
}
