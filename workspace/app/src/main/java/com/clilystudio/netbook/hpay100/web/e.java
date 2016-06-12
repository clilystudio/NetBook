
package com.clilystudio.netbook.hpay100.web;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class e implements View$OnTouchListener {

    e(HPayWebActivity HPayWebActivity1)
    {
    }

    public final boolean onTouch(View View1, MotionEvent MotionEvent2)
    {
        switch( MotionEvent2.getAction() )
        {
            case 1:
            case 0:
                if( !View1.hasFocus() )
                {
                    View1.requestFocus();
                    break;
                }
                break;
            default:
                break;
        }
        return false;
    }
}
