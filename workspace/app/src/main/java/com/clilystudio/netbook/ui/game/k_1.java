
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.support.v7.widget.m;
import android.view.MenuItem;
import com.clilystudio.netbook.util.N;

final class k implements m {

    k(GameDetailActivity GameDetailActivity1, String String2)
    {
        b = GameDetailActivity1;
        a = String2;
    }

    private String a;
    private GameDetailActivity b;

    public final boolean a(MenuItem MenuItem1)
    {
        switch( MenuItem1.getItemId() )
        {
            case 1195:
                new N( (Activity) b ).a( a );
                break;
            case 1196:
                new N( (Activity) b ).b( a, null );
                break;
            default:
                break;
        }
        return true;
    }
}
