
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.UserInfo;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;

final class r extends com.clilystudio.netbook.a.e {

    r(ModifyUserInfoActivity ModifyUserInfoActivity1, byte byte2)
    {
        this( ModifyUserInfoActivity1 );
    }

    private ModifyUserInfoActivity a;

    private r(ModifyUserInfoActivity ModifyUserInfoActivity1)
    {
        a = ModifyUserInfoActivity1;
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
        if( Object2 != null )
        {
            if( ((UserInfo) Object2).isOk() )
            {
                Date Date5;

                MyApplication.a().a( (Serializable) Object2, "savedObject_userinfo" );
                Date5 = ((UserInfo) Object2).getNicknameUpdated();
                if( Date5 != null )
                    ;
                ModifyUserInfoActivity.b( a, true );
                ModifyUserInfoActivity.c( a, ((UserInfo) Object2).isGenderChanged() );
            }
            else if( "TOKEN_INVALID".equals( ((UserInfo) Object2).getCode() ) )
            {
                com.clilystudio.netbook.util.e.a( (Activity) a, "\u5E10\u53F7\u65E0\u6548\u6216\u8FC7\u671F\uFF0C\u8BF7\u9000\u51FA\u767B\u5F55\u540E\u91CD\u8BD5" );
                return;
            }
        }
        else
        {
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u8F7D\u5165\u5931\u8D25" );
            MyApplication.a().b( "savedObject_userinfo" );
        }
    }
}
