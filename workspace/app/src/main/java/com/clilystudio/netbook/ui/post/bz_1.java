
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class bz implements View$OnClickListener {

    bz(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    private GirlTopicListActivity a;

    public final void onClick(View View1)
    {
        GirlTopicListActivity.a( a, true ).showAsDropDown( View1 );
        GirlTopicListActivity.b( a ).setImageDrawable( a.getResources().getDrawable( 2130837722 ) );
    }
}
