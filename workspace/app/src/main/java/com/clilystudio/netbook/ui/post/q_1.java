
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;

final class q implements View$OnClickListener {

    q(AddGamePostActivity AddGamePostActivity1, Dialog Dialog2, String String3)
    {
        c = AddGamePostActivity1;
        a = Dialog2;
        b = String3;
    }

    private Dialog a;
    private String b;
    private AddGamePostActivity c;

    public final void onClick(View View1)
    {
        String String2;
        String String3;
        t t4;
        String[] String_1darray5;

        a.dismiss();
        String2 = c.getIntent().getStringExtra( "post_game_id" );
        String3 = AddGamePostActivity.c( c ).getText().toString().trim();
        t4 = new t( c, (Activity) c, 2131034430 );
        String_1darray5 = new String[3];
        String_1darray5[0] = b;
        String_1darray5[1] = String2;
        String_1darray5[2] = String3;
        t4.b( String_1darray5 );
    }
}
