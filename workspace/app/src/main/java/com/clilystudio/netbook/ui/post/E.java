
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

final class E implements View$OnClickListener {

    E(AddReviewContentActivity AddReviewContentActivity1, Dialog Dialog2, String String3)
    {
        c = AddReviewContentActivity1;
        a = Dialog2;
        b = String3;
    }

    private Dialog a;
    private String b;
    private AddReviewContentActivity c;

    public final void onClick(View View1)
    {
        String String2;
        String String3;
        F F4;
        String[] String_1darray5;

        a.dismiss();
        String2 = AddReviewContentActivity.c( c ).getText().toString().trim();
        String3 = AddReviewContentActivity.d( c ).getText().toString().trim();
        F4 = new F( c, (Activity) c, 2131034430 );
        String_1darray5 = new String[5];
        String_1darray5[0] = b;
        String_1darray5[1] = AddReviewContentActivity.e( c );
        String_1darray5[2] = String2;
        String_1darray5[3] = String3;
        String_1darray5[4] = String.valueOf( AddReviewContentActivity.f( c ) );
        F4.b( String_1darray5 );
    }
}
