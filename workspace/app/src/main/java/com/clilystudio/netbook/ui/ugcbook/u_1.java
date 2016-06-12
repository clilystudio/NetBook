
package com.clilystudio.netbook.ui.ugcbook;

import android.text.Editable;
import android.text.TextWatcher;

final class u implements TextWatcher {

    u(UGCGuideAddBookActivity UGCGuideAddBookActivity1)
    {
        a = UGCGuideAddBookActivity1;
    }

    private UGCGuideAddBookActivity a;

    public final void afterTextChanged(Editable Editable1)
    {
        UGCGuideAddBookActivity UGCGuideAddBookActivity2 = a;
        boolean boolean3;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( Editable1.toString() ) )
            boolean3 = true;
        else
            boolean3 = false;
        UGCGuideAddBookActivity.c( UGCGuideAddBookActivity2, boolean3 );
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
        UGCGuideAddBookActivity.a( a, null );
    }
}
