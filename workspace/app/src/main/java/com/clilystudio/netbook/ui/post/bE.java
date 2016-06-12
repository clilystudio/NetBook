
package com.clilystudio.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.PopupWindow;

final class bE implements View$OnTouchListener {

    bE(GirlTopicListActivity GirlTopicListActivity1, PopupWindow PopupWindow2)
    {
        a = PopupWindow2;
    }

    private PopupWindow a;

    public final boolean onTouch(View View1, MotionEvent MotionEvent2)
    {
        if( a != null && a.isShowing() )
            a.dismiss();
        return true;
    }
}
