
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class c implements Runnable {

    c(AbsPostActivity AbsPostActivity1, EditText EditText2)
    {
        b = AbsPostActivity1;
        a = EditText2;
    }

    private EditText a;
    private AbsPostActivity b;

    public final void run()
    {
        b.getWindow().setSoftInputMode( 5 );
        a.requestFocus();
        ((InputMethodManager) b.getSystemService( "input_method" )).showSoftInput( (View) a, 1 );
    }
}
