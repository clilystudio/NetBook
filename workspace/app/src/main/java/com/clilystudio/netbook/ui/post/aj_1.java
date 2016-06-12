
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.PopupWindow$OnDismissListener;

final class aj implements PopupWindow$OnDismissListener {

    aj(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    private BookHelpListActivity a;

    public final void onDismiss()
    {
        BookHelpListActivity.b( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
        BookHelpListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
    }
}
