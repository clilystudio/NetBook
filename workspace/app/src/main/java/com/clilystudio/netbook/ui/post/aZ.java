
package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class aZ implements View$OnClickListener {

    aZ(CommonPostListActivity CommonPostListActivity1, ImageView ImageView2)
    {
        b = CommonPostListActivity1;
        a = ImageView2;
    }

    private ImageView a;
    private CommonPostListActivity b;

    public final void onClick(View View1)
    {
        CommonPostListActivity.a( b, 1 ).showAsDropDown( View1, 0, 1 );
        a.setImageDrawable( b.getResources().getDrawable( 2130837722 ) );
    }
}
