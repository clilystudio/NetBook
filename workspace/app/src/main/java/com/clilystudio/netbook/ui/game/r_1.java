
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.view.View;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.GamePostRoot;
import com.clilystudio.netbook.model.GamePostRoot$GamePost;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class r extends com.clilystudio.netbook.a.e {

    r(GameDetailActivity GameDetailActivity1, byte byte2)
    {
        this( GameDetailActivity1 );
    }

    private GameDetailActivity a;

    private r(GameDetailActivity GameDetailActivity1)
    {
        a = GameDetailActivity1;
    }

    private transient List a(String[] String_1darray1)
    {
        try
        {
            GamePostRoot GamePostRoot3 = com.clilystudio.netbook.api.b.b().d( String_1darray1[0], GameDetailActivity.c( a ).size(), 10 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        GameDetailActivity.i( a ).setVisibility( 8 );
        GameDetailActivity.b( a ).setOnLastItemListener( GameDetailActivity.j( a ) );
        if( Object2 != null )
        {
            int int3 = ((List) Object2).size();

            GameDetailActivity.c( a ).addAll( (Collection) Object2 );
            GameDetailActivity.k( a ).a( (Collection) GameDetailActivity.c( a ) );
            if( int3 < 10 )
            {
                GameDetailActivity.b( a ).removeFooterView( GameDetailActivity.i( a ) );
                GameDetailActivity.b( a ).setOnLastItemListener( null );
            }
        }
        else
        {
            GameDetailActivity.l( a );
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5" );
        }
    }
}
