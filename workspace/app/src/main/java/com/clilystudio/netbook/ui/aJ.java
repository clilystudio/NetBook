
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aJ implements View$OnClickListener {

    aJ(BookListActivity BookListActivity1)
    {
        a = BookListActivity1;
    }

    private BookListActivity a;

    public final void onClick(View View1)
    {
        a.b();
    }
}
