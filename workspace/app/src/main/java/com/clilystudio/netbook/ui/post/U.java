
package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.widget.EditText;

final class U implements DialogInterface$OnClickListener {

    U(AddVoteItemActivity AddVoteItemActivity1, EditText EditText2)
    {
        b = AddVoteItemActivity1;
        a = EditText2;
    }

    private EditText a;
    private AddVoteItemActivity b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        AddVoteItemActivity.a( b, (View) a );
    }
}
