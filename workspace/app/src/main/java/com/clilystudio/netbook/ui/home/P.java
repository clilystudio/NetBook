
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import java.io.IOException;
import java.io.Serializable;

final class P extends com.clilystudio.netbook.a.e {

    P(HomeTopicFragment HomeTopicFragment1, byte byte2)
    {
        this( HomeTopicFragment1 );
    }

    private HomeTopicFragment a;

    private P(HomeTopicFragment HomeTopicFragment1)
    {
        a = HomeTopicFragment1;
    }

    private transient UserInfo a(String[] String_1darray1)
    {
        UserInfo UserInfo4;

        try
        {
            UserInfo4 = com.clilystudio.netbook.api.b.b().K( String_1darray1[0] );
        }
        catch( IOException IOException2 )
        {
            IOException2.printStackTrace();
            return null;
        }
        return UserInfo4;
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
                String String5;

                MyApplication.a().a( (Serializable) Object2, "savedObject_userinfo" );
                String5 = ((UserInfo) Object2).getGender();
                if( String5 != null )
                {
                    Account Account6 = am.e();

                    Account6.getUser().setGender( String5 );
                    MyApplication.a().a( Account6 );
                    HomeTopicFragment.a( a, String5 );
                }
                else
                {
                    com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u65E0\u6CD5\u83B7\u53D6\u6027\u522B\u4FE1\u606F\uFF0C\u8BF7\u9000\u51FA\u767B\u5F55\u540E\u91CD\u8BD5" );
                    return;
                }
            }
            else if( "TOKEN_INVALID".equals( ((UserInfo) Object2).getCode() ) )
            {
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u5E10\u53F7\u65E0\u6548\u6216\u8FC7\u671F\uFF0C\u8BF7\u9000\u51FA\u767B\u5F55\u540E\u91CD\u8BD5" );
                return;
            }
        }
        else
        {
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u5E10\u53F7\u65E0\u6548\u6216\u8FC7\u671F\uFF0C\u8BF7\u9000\u51FA\u767B\u5F55\u540E\u91CD\u8BD5" );
            MyApplication.a().b( "savedObject_userinfo" );
        }
    }
}
