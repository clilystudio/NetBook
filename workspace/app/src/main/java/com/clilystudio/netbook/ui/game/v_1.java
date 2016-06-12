
package com.clilystudio.netbook.ui.game;

import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.adapter.GameGiftGroupAdapter;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GamesGiftRoot;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class v extends com.clilystudio.netbook.a.e {

    v(GameGiftFragment GameGiftFragment1, byte byte2)
    {
        this( GameGiftFragment1 );
    }

    private GameGiftFragment a;

    private v(GameGiftFragment GameGiftFragment1)
    {
        a = GameGiftFragment1;
    }

    private static transient List a()
    {
        try
        {
            GamesGiftRoot GamesGiftRoot3;

            com.clilystudio.netbook.api.b.a();
            GamesGiftRoot3 = com.clilystudio.netbook.api.b.b().b( 0, 30 );
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
            if( Object2 != null )
            {
                if( ((List) Object2).size() > 0 )
                {
                    a.c();
                    GameGiftFragment.a( a, (List) Object2 );
                    GameGiftFragment.d( a ).a( GameGiftFragment.b( a ) );
                    GameGiftFragment.c( a );
                }
                else
                {
                    a.d();
                    return;
                }
            }
            else
            {
                a.e();
                return;
            }
        }
    }
}
