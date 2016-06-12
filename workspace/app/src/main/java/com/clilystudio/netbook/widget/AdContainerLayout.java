
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class AdContainerLayout extends RelativeLayout {

    public AdContainerLayout(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private f b;
    private boolean a = false;

    public boolean onInterceptTouchEvent(MotionEvent MotionEvent1)
    {
        switch( MotionEvent1.getAction() )
        {
            case 0:
                if( a )
                {
                    if( b != null )
                        b.a();
                    return true;
                }
                else
                {
                    if( b != null )
                    {
                        b.b();
                        break;
                    }
                    break;
                }
            default:
                break;
        }
        return super.onInterceptTouchEvent( MotionEvent1 );
    }

    public void setIsShowConfirm(boolean boolean1)
    {
        a = boolean1;
    }

    public void setSplashAdContainerClickListener(f f1)
    {
        b = f1;
    }
}
