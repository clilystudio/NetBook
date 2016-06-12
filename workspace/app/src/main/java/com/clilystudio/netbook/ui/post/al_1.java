
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class al implements View$OnClickListener {

    al(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    private BookHelpListActivity a;

    public final void onClick(View View1)
    {
        BookHelpListActivity.a( a, true ).showAsDropDown( View1 );
        BookHelpListActivity.b( a ).setImageDrawable( a.getResources().getDrawable( 2130837722 ) );
    }
}
