
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import java.util.List;

final class ai implements AdapterView$OnItemClickListener {

    ai(GameRankListFragment GameRankListFragment1)
    {
        a = GameRankListFragment1;
    }

    private GameRankListFragment a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - GameRankListFragment.a( a ).getHeaderViewsCount();

        if( int6 >= 0 && int6 < GameRankListFragment.b( a ).size() )
        {
            Game Game7 = (Game) GameRankListFragment.b( a ).get( int6 );
            Intent Intent8 = GameDetailActivity.a( (Context) a.getActivity(), Game7.get_id() );

            a.startActivity( Intent8 );
        }
    }
}
