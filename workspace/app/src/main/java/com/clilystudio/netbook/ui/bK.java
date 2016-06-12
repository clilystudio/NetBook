
package com.clilystudio.netbook.ui;

import android.text.Editable;
import android.text.TextWatcher;

final class bK implements TextWatcher {

    bK(SearchActivity SearchActivity1)
    {
        a = SearchActivity1;
    }

    private SearchActivity a;

    public final void afterTextChanged(Editable Editable1)
    {
        SearchActivity SearchActivity2 = a;
        boolean boolean3;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( Editable1.toString() ) )
            boolean3 = true;
        else
            boolean3 = false;
        SearchActivity.a( SearchActivity2, boolean3 );
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
        SearchActivity.b( a, null );
    }
}
