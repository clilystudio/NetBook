
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.AsyncTask;
import android.text.Editable;
import android.widget.EditText;

final class o implements DialogInterface$OnClickListener {

    o(ModifyUserInfoActivity ModifyUserInfoActivity1, EditText EditText2)
    {
        b = ModifyUserInfoActivity1;
        a = EditText2;
    }

    private EditText a;
    private ModifyUserInfoActivity b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        s s3 = new s( b, (Activity) b, 2131034218 );
        String[] String_1darray4 = new String[1];

        String_1darray4[0] = a.getText().toString();
        s3.b( String_1darray4 );
    }
}
