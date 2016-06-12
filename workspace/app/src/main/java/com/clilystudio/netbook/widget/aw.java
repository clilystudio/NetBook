
package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class aw implements TextWatcher {

    aw(SearchEditText SearchEditText1)
    {
        a = SearchEditText1;
    }

    private SearchEditText a;

    public final void afterTextChanged(Editable Editable1)
    {
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
        if( SearchEditText.a( a ) )
            SearchEditText.a( a, false );
        else if( SearchEditText.b( a ) != null )
        {
            SearchEditText.b( a ).a();
            return;
        }
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }
}
