
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameRoot;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class am extends com.clilystudio.netbook.a.e {

    am(GameRankListFragment GameRankListFragment1, byte byte2)
    {
        this( GameRankListFragment1 );
    }

    private GameRankListFragment a;

    private am(GameRankListFragment GameRankListFragment1)
    {
        a = GameRankListFragment1;
    }

    private transient List a()
    {
        try
        {
            GameRoot GameRoot3;

            com.clilystudio.netbook.api.b.a();
            GameRoot3 = com.clilystudio.netbook.api.b.b().a( GameRankListFragment.b( a ).size(), 20 );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null )
        {
            boolean boolean3;

            GameRankListFragment.d( a ).setVisibility( 8 );
            boolean3 = GameRankListFragment.b( a ).isEmpty();
            if( Object2 != null )
            {
                int int4 = ((List) Object2).size();

                if( int4 > 0 )
                {
                    a.c();
                    GameRankListFragment.b( a ).addAll( (Collection) Object2 );
                    GameRankListFragment.e( a ).a( (Collection) GameRankListFragment.b( a ) );
                    GameRankListFragment.c( a );
                    if( int4 >= 20 )
                    {
                        GameRankListFragment.a( a ).setOnLastItemListener( GameRankListFragment.f( a ) );
                        return;
                    }
                }
                else if( boolean3 )
                {
                    a.d();
                    return;
                }
                GameRankListFragment.a( a ).setOnLastItemListener( null );
            }
            else if( boolean3 )
                a.e();
            else
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
            return;
        }
    }
}
