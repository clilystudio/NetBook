
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class df implements View$OnClickListener {

    df(ReviewListActivity ReviewListActivity1)
    {
        a = ReviewListActivity1;
    }

    private ReviewListActivity a;

    public final void onClick(View View1)
    {
        ReviewListActivity.a( a, 1 ).showAsDropDown( View1, 0, 1 );
        ReviewListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837722 ) );
    }
}
