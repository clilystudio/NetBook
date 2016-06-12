
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import com.clilystudio.netbook.model.PayConsumeRecord$Order;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class T implements View$OnClickListener {

    T(S S1, int int2, PayConsumeRecord$Order Order3, ImageView ImageView4, View View5)
    {
        e = S1;
        a = int2;
        b = Order3;
        c = ImageView4;
        d = View5;
    }

    int a;     // final access specifier removed
    PayConsumeRecord$Order b;     // final access specifier removed
    ImageView c;     // final access specifier removed
    View d;     // final access specifier removed
    S e;     // final access specifier removed

    public final void onClick(View View1)
    {
        int int2 = a;
        int int3 = PayConsumeActivity.a( e.a ).getLastVisiblePosition() - PayConsumeActivity.a( e.a ).getFooterViewsCount();
        int int4 = 0;

        if( int2 >= int3 )
        {
            PayConsumeActivity.a( e.a ).smoothScrollToPosition( 2 + a );
            int4 = 200;
        }
        new Handler().postDelayed( (Runnable) new U( this ), (long) int4 );
    }
}
