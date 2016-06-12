
package com.clilystudio.netbook.ui.ugcbook;

import android.text.Editable;
import android.view.View;
import android.view.View$OnFocusChangeListener;
import com.clilystudio.netbook.widget.SearchEditText;

final class v implements View$OnFocusChangeListener {

    v(UGCGuideAddBookActivity UGCGuideAddBookActivity1)
    {
        a = UGCGuideAddBookActivity1;
    }

    private UGCGuideAddBookActivity a;

    public final void onFocusChange(View View1, boolean boolean2)
    {
        UGCGuideAddBookActivity UGCGuideAddBookActivity3 = a;
        boolean boolean4;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( UGCGuideAddBookActivity.a( a ).getText().toString() ) )
            boolean4 = true;
        else
            boolean4 = false;
        UGCGuideAddBookActivity.c( UGCGuideAddBookActivity3, boolean4 );
    }
}
