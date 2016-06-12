
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

final class k implements View$OnClickListener {

    k(AddBookHelpActivity AddBookHelpActivity1, Dialog Dialog2, String String3)
    {
        c = AddBookHelpActivity1;
        a = Dialog2;
        b = String3;
    }

    private Dialog a;
    private String b;
    private AddBookHelpActivity c;

    public final void onClick(View View1)
    {
        String String2;
        String String3;
        n n4;
        String[] String_1darray5;

        a.dismiss();
        String2 = AddBookHelpActivity.c( c ).getText().toString().trim();
        String3 = AddBookHelpActivity.d( c ).getText().toString().trim();
        n4 = new n( c, (Activity) c, 2131034430 );
        String_1darray5 = new String[3];
        String_1darray5[0] = b;
        String_1darray5[1] = String2;
        String_1darray5[2] = String3;
        n4.b( String_1darray5 );
    }
}
