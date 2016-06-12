
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import java.util.List;

final class A implements View$OnClickListener {

    A(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final void onClick(View View1)
    {
        if( HomeShelfFragment.a( a ) != null )
        {
            List List2 = HomeShelfFragment.a( a ).e();

            if( List2 == null || List2.size() == 0 )
                com.clilystudio.netbook.util.e.a( (Context) a.getActivity(), "\u4F60\u6CA1\u6709\u9009\u62E9\u8981\u5220\u9664\u7684\u4E66\u54E6" );
            else
            {
                HomeShelfFragment.a( a, List2 );
                return;
            }
        }
    }
}
