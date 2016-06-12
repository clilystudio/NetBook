
package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View$OnFocusChangeListener;
import android.view.Window;

final class p implements View$OnFocusChangeListener {

    p(ModifyUserInfoActivity ModifyUserInfoActivity1, AlertDialog AlertDialog2)
    {
        a = AlertDialog2;
    }

    private AlertDialog a;

    public final void onFocusChange(View View1, boolean boolean2)
    {
        if( boolean2 )
            a.getWindow().setSoftInputMode( 5 );
    }
}
