
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ResultStatus;
import java.io.IOException;

final class q extends com.clilystudio.netbook.a.e {

    q(UGCDetailActivity UGCDetailActivity1, byte byte2)
    {
        this( UGCDetailActivity1 );
    }

    private UGCDetailActivity a;

    private q(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private transient ResultStatus a(String[] String_1darray1)
    {
        ResultStatus ResultStatus3;

        try
        {
            ResultStatus3 = com.clilystudio.netbook.api.b.b().D( String_1darray1[0], String_1darray1[1] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return ResultStatus3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (ResultStatus) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((ResultStatus) Object2).isOk() )
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u5DF2\u6536\u85CF" );
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u6536\u85CF\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
    }
}
