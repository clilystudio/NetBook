
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import android.widget.TextView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import java.io.IOException;
import java.io.Serializable;

final class q extends com.clilystudio.netbook.a.c {

    public q(ModifyUserInfoActivity ModifyUserInfoActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034218 );
        a = ModifyUserInfoActivity1;
    }

    private ModifyUserInfoActivity a;

    private transient ChangeGenderRoot a(String[] String_1darray1)
    {
        Account Account2 = am.e();

        if( Account2 != null )
        {
            try
            {
                ChangeGenderRoot ChangeGenderRoot4 = com.clilystudio.netbook.api.b.b().v( Account2.getToken(), String_1darray1[0] );
            }
            catch( IOException IOException3 )
            {
                IOException3.printStackTrace();
            }
        }
        return null;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        ChangeGenderRoot ChangeGenderRoot2 = (ChangeGenderRoot) Object1;

        if( ChangeGenderRoot2 != null )
        {
            if( ChangeGenderRoot2.isOk() )
            {
                Object Object3 = (UserInfo) MyApplication.a().b( "savedObject_userinfo" );
                String String4;
                Account Account6;
                TextView TextView7;
                Object Object8;

                if( ModifyUserInfoActivity.a( a ).getGender().equals( "male" ) )
                    String4 = "female";
                else
                    String4 = "male";
                ((UserInfo) Object3).setGender( String4 );
                MyApplication.a().a( (Serializable) Object3, "savedObject_userinfo" );
                Account6 = am.a( (Activity) a );
                if( Account6 != null )
                {
                    ModifyUserInfoActivity.a( a ).setGender( String4 );
                    Account6.setUser( ModifyUserInfoActivity.a( a ) );
                    MyApplication.a().a( Account6 );
                }
                TextView7 = a.mGenderView;
                if( String4.equals( "male" ) )
                    Object8 = "\u7537";
                else
                    Object8 = "\u5973";
                TextView7.setText( (CharSequence) Object8 );
                com.clilystudio.netbook.util.e.a( (Activity) a, "\u4FEE\u6539\u6210\u529F" );
                i.a().c( new K() );
            }
            else
            {
                com.clilystudio.netbook.util.e.a( (Activity) a, ChangeGenderRoot2.getErrorMessage() );
                return;
            }
        }
    }
}
