
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class r implements View$OnClickListener {

    r(AudiobookCategoryActivity AudiobookCategoryActivity1)
    {
        a = AudiobookCategoryActivity1;
    }

    private AudiobookCategoryActivity a;

    public final void onClick(View View1)
    {
        AudiobookCategoryActivity.b( a );
    }
}
