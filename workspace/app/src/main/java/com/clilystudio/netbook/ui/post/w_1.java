
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

final class w implements View$OnClickListener {

    w(AddGirlTopicActivity AddGirlTopicActivity1, Dialog Dialog2, String String3)
    {
        c = AddGirlTopicActivity1;
        a = Dialog2;
        b = String3;
    }

    private Dialog a;
    private String b;
    private AddGirlTopicActivity c;

    public final void onClick(View View1)
    {
        String String2;
        String String3;
        z z4;
        String[] String_1darray5;

        a.dismiss();
        String2 = AddGirlTopicActivity.c( c ).getText().toString().trim();
        String3 = AddGirlTopicActivity.d( c ).getText().toString().trim();
        z4 = new z( c, (Activity) c, 2131034430 );
        String_1darray5 = new String[3];
        String_1darray5[0] = b;
        String_1darray5[1] = String2;
        String_1darray5[2] = String3;
        z4.b( String_1darray5 );
    }
}
