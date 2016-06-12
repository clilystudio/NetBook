
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import android.widget.TextView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import java.io.IOException;

final class s extends com.clilystudio.netbook.a.c {

    public s(ModifyUserInfoActivity ModifyUserInfoActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034218 );
        b = ModifyUserInfoActivity1;
    }

    private String a;
    private ModifyUserInfoActivity b;

    private transient ChangeNickNameRoot a(String[] String_1darray1)
    {
        Account Account2;

        a = String_1darray1[0];
        Account2 = am.e();
        if( Account2 != null )
        {
            try
            {
                ChangeNickNameRoot ChangeNickNameRoot4 = com.clilystudio.netbook.api.b.b().u( Account2.getToken(), String_1darray1[0] );
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
        ChangeNickNameRoot ChangeNickNameRoot2 = (ChangeNickNameRoot) Object1;

        if( ChangeNickNameRoot2 != null )
        {
            if( ChangeNickNameRoot2.isOk() )
            {
                b.mNameView.setText( (CharSequence) a );
                com.clilystudio.netbook.util.e.a( (Activity) b, "\u4FEE\u6539\u6210\u529F" );
                i.a().c( new K() );
            }
            else
            {
                com.clilystudio.netbook.util.e.a( (Activity) b, ChangeNickNameRoot2.getErrorMessage() );
                return;
            }
        }
    }
}
