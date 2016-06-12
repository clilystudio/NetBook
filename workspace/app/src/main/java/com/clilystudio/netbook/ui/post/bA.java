
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class bA implements View$OnClickListener {

    bA(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    private GirlTopicListActivity a;

    public final void onClick(View View1)
    {
        GirlTopicListActivity.a( a, false ).showAsDropDown( View1 );
        GirlTopicListActivity.c( a ).setImageDrawable( a.getResources().getDrawable( 2130837722 ) );
    }
}
