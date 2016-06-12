
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class t extends c {

    public t(AddGamePostActivity AddGamePostActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034430 );
        a = AddGamePostActivity1;
    }

    private AddGamePostActivity a;

    private transient PostPublish a(String[] String_1darray1)
    {
        PostPublish PostPublish3;

        try
        {
            PostPublish3 = com.clilystudio.netbook.api.b.b().i( String_1darray1[0], String_1darray1[1], String_1darray1[2] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PostPublish3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        PostPublish PostPublish2 = (PostPublish) Object1;

        if( PostPublish2 != null )
        {
            if( PostPublish2.isOk() )
            {
                e.a( (Activity) a, "\u53D1\u5E03\u6210\u529F" );
                a.finish();
            }
            else if( "TOKEN_INVALID".equals( PostPublish2.getCode() ) )
                e.a( (Activity) a, "\u8EAB\u4EFD\u8BA4\u8BC1\u5931\u8D25\uFF0C\u8BF7\u91CD\u65B0\u767B\u5F55\u540E\u518D\u53D1\u5E03" );
            else if( "LV_NOT_ENOUGH".equals( PostPublish2.getCode() ) )
                e.a( (Activity) a, "\u5F88\u62B1\u6B49\uFF0C\u60A8\u7684\u7B49\u7EA7\u4E0D\u591F" );
            else if( "FORBIDDEN".equals( PostPublish2.getCode() ) )
            {
                String String3 = PostPublish2.getMsg();

                if( String3 != null )
                    e.a( (Activity) a, String3 );
                else
                    e.a( (Activity) a, 2131034388 );
            }
            else
                e.a( (Activity) a, "\u53D1\u5E03\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        }
        else
            e.a( (Activity) a, "\u53D1\u5E03\u5F02\u5E38\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5" );
    }
}
