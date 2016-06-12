
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Account;
import java.util.List;

final class Y implements View$OnClickListener {

    Y(AddVoteItemActivity AddVoteItemActivity1, Dialog Dialog2)
    {
        b = AddVoteItemActivity1;
        a = Dialog2;
    }

    private Dialog a;
    private AddVoteItemActivity b;

    public final void onClick(View View1)
    {
        String String2;
        Z Z3;
        String[] String_1darray4;

        a.dismiss();
        String2 = TextUtils.join( (CharSequence) ",", AddVoteItemActivity.i( b ).toArray() );
        Z3 = new Z( b, (Activity) b, 2131034430 );
        String_1darray4 = new String[5];
        String_1darray4[0] = AddVoteItemActivity.j( b ).getToken();
        String_1darray4[1] = AddVoteItemActivity.k( b );
        String_1darray4[2] = AddVoteItemActivity.l( b ).trim();
        String_1darray4[3] = AddVoteItemActivity.m( b ).trim();
        String_1darray4[4] = String2;
        Z3.b( String_1darray4 );
    }
}
