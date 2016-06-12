
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.PopupWindow$OnDismissListener;

final class de implements PopupWindow$OnDismissListener {

    de(ReviewListActivity ReviewListActivity1)
    {
        a = ReviewListActivity1;
    }

    private ReviewListActivity a;

    public final void onDismiss()
    {
        ReviewListActivity.b( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
        ReviewListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
        ReviewListActivity.d( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
    }
}
