
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class Z implements View$OnClickListener {

    Z(HomeFindItem HomeFindItem1, Context Context2, String String3)
    {
        c = HomeFindItem1;
        a = Context2;
        b = String3;
    }

    private Context a;
    private String b;
    private HomeFindItem c;

    public final void onClick(View View1)
    {
        c.a( a, b );
    }
}
