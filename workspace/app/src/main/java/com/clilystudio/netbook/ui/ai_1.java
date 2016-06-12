
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class ai implements View$OnClickListener {

    ai(BookCategoryActivity BookCategoryActivity1)
    {
        a = BookCategoryActivity1;
    }

    private BookCategoryActivity a;

    public final void onClick(View View1)
    {
        BookCategoryActivity.a( a );
    }
}
