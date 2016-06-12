
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.util.J;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;

final class aK extends com.clilystudio.netbook.a.e {

    aK(UserInfoActivity UserInfoActivity1, byte byte2)
    {
        this( UserInfoActivity1 );
    }

    private UserInfoActivity a;

    private aK(UserInfoActivity UserInfoActivity1)
    {
        a = UserInfoActivity1;
    }

    private transient UserInfo a(String[] String_1darray1)
    {
        UserInfo UserInfo3;

        try
        {
            UserInfo3 = com.clilystudio.netbook.api.b.b().K( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return UserInfo3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (UserInfo) Object1;

        super.onPostExecute( Object2 );
        UserInfoActivity.c( a );
        if( Object2 != null )
        {
            if( ((UserInfo) Object2).isOk() )
            {
                UserInfoActivity.a( a, (UserInfo) Object2 );
                MyApplication.a().a( (Serializable) Object2, "savedObject_userinfo" );
                UserInfoActivity.a( a, ((UserInfo) Object2).getNicknameUpdated() );
                UserInfoActivity.a( a, J.a( (Context) a ).a() );
                UserInfoActivity.b( a, (UserInfo) Object2 );
            }
            else if( "TOKEN_INVALID".equals( ((UserInfo) Object2).getCode() ) )
            {
                com.clilystudio.netbook.util.e.a( (Activity) a, "\u5E10\u53F7\u65E0\u6548\u6216\u8FC7\u671F\uFF0C\u8BF7\u9000\u51FA\u767B\u5F55\u540E\u91CD\u8BD5" );
                return;
            }
        }
        else
        {
            UserInfo UserInfo3;

            com.clilystudio.netbook.util.e.a( (Activity) a, "\u8F7D\u5165\u5931\u8D25" );
            UserInfo3 = (UserInfo) MyApplication.a().b( "savedObject_userinfo" );
            if( UserInfo3 != null )
            {
                UserInfoActivity.a( a, UserInfo3 );
                return;
            }
        }
    }
}
