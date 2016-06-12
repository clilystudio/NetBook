
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class g extends c {

    public g(AbsPostActivity AbsPostActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034430 );
        a = AbsPostActivity1;
    }

    private AbsPostActivity a;

    private transient ResultStatus a(String[] String_1darray1)
    {
        ResultStatus ResultStatus3;

        try
        {
            ResultStatus3 = com.clilystudio.netbook.api.b.b().f( String_1darray1[0], String_1darray1[1], String_1darray1[2], String_1darray1[3] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return ResultStatus3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        ResultStatus ResultStatus2 = (ResultStatus) Object1;
        boolean boolean3 = true;

        if( ResultStatus2 != null )
        {
            if( ResultStatus2.isOk() )
            {
                e.a( (Activity) a, "\u56DE\u590D\u6210\u529F" );
                a.o();
            }
            else if( "TOKEN_INVALID".equals( ResultStatus2.getCode() ) )
                a.d();
            else if( "FORBIDDEN".equals( ResultStatus2.getCode() ) )
            {
                String String4 = ResultStatus2.getMsg();

                if( String4 != null )
                {
                    e.a( (Activity) a, String4 );
                    boolean3 = false;
                }
                else
                    e.a( (Activity) a, 2131034388 );
            }
            else
                e.a( (Activity) a, "\u56DE\u590D\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        }
        else
            e.a( (Activity) a, "\u56DE\u590D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
        a.a( boolean3 );
    }
}
