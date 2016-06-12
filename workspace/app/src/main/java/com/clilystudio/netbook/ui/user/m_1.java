
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.AsyncTask;

final class m implements DialogInterface$OnClickListener {

    m(ModifyUserInfoActivity ModifyUserInfoActivity1, boolean boolean2)
    {
        b = ModifyUserInfoActivity1;
        a = boolean2;
    }

    private boolean a;
    private ModifyUserInfoActivity b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        q q3 = new q( b, (Activity) b, 2131034218 );
        String[] String_1darray4 = new String[1];
        String String5;

        if( a )
            String5 = "male";
        else
            String5 = "female";
        String_1darray4[0] = String5;
        q3.b( String_1darray4 );
    }
}
