
package com.clilystudio.netbook.ui;

import android.widget.Filter;
import com.clilystudio.netbook.widget.ax;
import java.util.Calendar;

final class bD implements ax {

    bD(SearchActivity SearchActivity1, SearchActivity$SearchPromptAdapter SearchPromptAdapter2)
    {
        a = SearchPromptAdapter2;
    }

    private SearchActivity$SearchPromptAdapter a;

    public final void a()
    {
        Object Object1 = String.valueOf( Calendar.getInstance().getTimeInMillis() );

        a.getFilter().filter( (CharSequence) Object1 );
    }
}
