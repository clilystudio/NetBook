
package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.model.DiscussSummary;
import java.util.List;

final class bc implements AdapterView$OnItemClickListener {

    bc(CommonPostListActivity CommonPostListActivity1)
    {
        a = CommonPostListActivity1;
    }

    private CommonPostListActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - CommonPostListActivity.g( a ).getHeaderViewsCount();

        if( int6 >= 0 && int6 < CommonPostListActivity.h( a ).size() )
        {
            DiscussSummary DiscussSummary7 = (DiscussSummary) CommonPostListActivity.h( a ).get( int6 );

            if( DiscussSummary7 != null )
            {
                Intent Intent8 = PostDetailActivity.a( (Context) a, DiscussSummary7.get_id(), "ramble" );

                a.startActivity( Intent8 );
            }
        }
    }
}
