
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import java.util.List;

final class N implements AdapterView$OnItemClickListener {

    N(HomeTopicFragment HomeTopicFragment1)
    {
        a = HomeTopicFragment1;
    }

    private HomeTopicFragment a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = -1 + (int3 - HomeTopicFragment.b( a ).getHeaderViewsCount());

        if( int6 >= 0 && int6 < HomeTopicFragment.c( a ).size() )
        {
            BookShelfTopic BookShelfTopic7 = (BookShelfTopic) HomeTopicFragment.c( a ).get( int6 );
            Intent Intent8 = BookPostTabActivity.a( (Context) a.getActivity(), BookShelfTopic7.getBookId(), BookShelfTopic7.getTitle() );

            a.startActivity( Intent8 );
            BookTopicEnterRecord.updateCount( BookShelfTopic7.getBookId(), BookShelfTopic7.getPostCount() );
        }
    }
}
