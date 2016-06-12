
package com.clilystudio.netbook.ui.post;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class W implements TextWatcher {

    W(AddVoteItemActivity AddVoteItemActivity1, EditText EditText2, Button Button3)
    {
        a = EditText2;
        b = Button3;
    }

    private EditText a;
    private Button b;

    public final void afterTextChanged(Editable Editable1)
    {
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
        if( com.clilystudio.netbook.hpay100.a.a.Q( a.getText().toString() ) )
            b.setEnabled( false );
        else
            b.setEnabled( true );
    }
}
