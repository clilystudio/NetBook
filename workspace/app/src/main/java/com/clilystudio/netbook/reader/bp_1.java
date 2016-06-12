
package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterKeysRoot$ChapterKey;
import java.util.HashMap;
import java.util.Map;

final class bp extends com.clilystudio.netbook.a.e {

    bp(ReaderActivity ReaderActivity1, byte byte2)
    {
        this( ReaderActivity1 );
    }

    private ReaderActivity a;

    private bp(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private transient ChapterKeysRoot a()
    {
        ChapterKeysRoot ChapterKeysRoot3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            ChapterKeysRoot3 = com.clilystudio.netbook.api.b.b().g( am.e().getToken(), ReaderActivity.M( a ) );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return ChapterKeysRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        ChapterKeysRoot ChapterKeysRoot2 = (ChapterKeysRoot) Object1;
        Object Object3;

        if( ChapterKeysRoot2 != null && ChapterKeysRoot2.isOk() )
        {
            ChapterKeysRoot$ChapterKey[] ChapterKey_1darray4;
            int int5;
            int int6;

            Object3 = new HashMap( (int) ((double) ChapterKeysRoot2.getKeyLength() / 0.69999999999999996) );
            ChapterKey_1darray4 = ChapterKeysRoot2.getKeys();
            int5 = ChapterKey_1darray4.length;
            for( int6 = 0; int6 < int5; ++int6 )
            {
                ChapterKeysRoot$ChapterKey ChapterKey7 = ChapterKey_1darray4[int6];

                ((HashMap) Object3).put( ChapterKey7.get_id(), ChapterKey7.getKey() );
            }
            com.clilystudio.netbook.hpay100.a.a.a( ReaderActivity.M( a ), (Map) Object3 );
        }
        else
        {
            Object3 = com.clilystudio.netbook.hpay100.a.a.M( ReaderActivity.M( a ) );
            if( Object3 == null )
                Object3 = new HashMap();
        }
        ReaderActivity.Y( a ).a( (Map) Object3 );
    }
}
