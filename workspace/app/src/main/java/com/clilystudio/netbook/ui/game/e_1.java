
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import com.clilystudio.netbook.model.GamePostRoot$GamePost;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import java.util.List;

final class e implements AdapterView$OnItemClickListener {

    e(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private GameDetailActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - GameDetailActivity.b( a ).getHeaderViewsCount();

        if( int6 >= 0 && int6 < GameDetailActivity.c( a ).size() )
        {
            GamePostRoot$GamePost GamePost7 = (GamePostRoot$GamePost) GameDetailActivity.c( a ).get( int6 );
            Intent Intent8 = PostDetailActivity.a( (Context) a, GamePost7.get_id(), "game" );

            a.startActivity( Intent8 );
        }
    }
}
