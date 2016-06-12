
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.PopupWindow$OnDismissListener;

final class bx implements PopupWindow$OnDismissListener {

    bx(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    private GirlTopicListActivity a;

    public final void onDismiss()
    {
        GirlTopicListActivity.b( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
        GirlTopicListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837721 ) );
    }
}
