
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class am implements View$OnClickListener {

    am(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    private BookHelpListActivity a;

    public final void onClick(View View1)
    {
        BookHelpListActivity.a( a, false ).showAsDropDown( View1 );
        BookHelpListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837722 ) );
    }
}
