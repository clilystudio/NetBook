
package com.clilystudio.netbook.ui.post;

import android.os.IBinder;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class b implements Runnable {

    b(a a1)
    {
        a = a1;
    }

    private a a;

    public final void run()
    {
        EditText EditText1 = AbsPostActivity.a( a.a );

        EditText1.clearFocus();
        ((InputMethodManager) a.a.getSystemService( "input_method" )).hideSoftInputFromWindow( EditText1.getWindowToken(), 0 );
    }
}
