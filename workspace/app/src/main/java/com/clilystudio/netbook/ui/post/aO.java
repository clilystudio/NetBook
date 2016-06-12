
package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.support.v4.app.FragmentActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aO implements DialogInterface$OnClickListener {

    aO(BookTopicListFragment BookTopicListFragment1)
    {
        a = BookTopicListFragment1;
    }

    private BookTopicListFragment a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        if( a.g != int2 )
        {
            BookTopicListFragment BookTopicListFragment3;

            a.g = int2;
            BookTopicListFragment3 = a;
            BookTopicListFragment3.f = BookPostTabActivity.f( a.g );
            a.a.setRefreshing();
        }
    }
}
