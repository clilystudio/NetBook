
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Advert;

final class aE implements View$OnClickListener {

    aE(BookInfoActivity BookInfoActivity1, Advert Advert2)
    {
        a = Advert2;
    }

    private Advert a;

    public final void onClick(View View1)
    {
        a.processClick( View1 );
    }
}
