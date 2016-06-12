
package com.clilystudio.netbook.ui;

import android.widget.ListView;

final class bS implements Runnable {

    bS(bR bR1)
    {
        a = bR1;
    }

    private bR a;

    public final void run()
    {
        if( SearchActivity.a( a.a ) != null )
        {
            SearchActivity.a( a.a ).setSelectionAfterHeaderView();
            SearchActivity.a( a.a ).setSelection( 0 );
        }
    }
}
