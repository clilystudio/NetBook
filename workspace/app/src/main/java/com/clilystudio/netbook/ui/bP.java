
package com.clilystudio.netbook.ui;

import android.text.Editable;
import com.clilystudio.netbook.widget.SearchEditText;
import java.util.List;

final class bP extends bR {

    bP(SearchActivity SearchActivity1, byte byte2)
    {
        this( SearchActivity1 );
    }

    private SearchActivity b;

    private bP(SearchActivity SearchActivity1)
    {
        super( SearchActivity1, (byte) 0 );
        b = SearchActivity1;
    }

    protected final void a(List List1)
    {
        super.a( List1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        super.a( (List) Object1 );
    }

    protected final void onPreExecute()
    {
        super.onPreExecute();
        SearchActivity.b( b, SearchActivity.f( b ).getText().toString() );
    }
}
