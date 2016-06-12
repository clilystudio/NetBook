
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.PopupWindow$OnDismissListener;

final class aW implements PopupWindow$OnDismissListener {

    aW(CommonPostListActivity CommonPostListActivity1)
    {
        a = CommonPostListActivity1;
    }

    private CommonPostListActivity a;

    public final void onDismiss()
    {
        CommonPostListActivity.l( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
        CommonPostListActivity.m( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
    }
}
