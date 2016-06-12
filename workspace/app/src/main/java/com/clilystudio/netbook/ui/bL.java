
package com.clilystudio.netbook.ui;

import android.text.Editable;
import android.view.View;
import android.view.View$OnFocusChangeListener;
import com.clilystudio.netbook.widget.SearchEditText;

final class bL implements View$OnFocusChangeListener {

    bL(SearchActivity SearchActivity1)
    {
        a = SearchActivity1;
    }

    private SearchActivity a;

    public final void onFocusChange(View View1, boolean boolean2)
    {
        SearchActivity SearchActivity3 = a;
        boolean boolean4;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( SearchActivity.f( a ).getText().toString() ) )
            boolean4 = true;
        else
            boolean4 = false;
        SearchActivity.a( SearchActivity3, boolean4 );
    }
}
