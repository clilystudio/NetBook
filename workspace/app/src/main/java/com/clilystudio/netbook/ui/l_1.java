
package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.ScrollLoadListView;

final class l implements Runnable {

    l(AudioBookPlayActivity AudioBookPlayActivity1)
    {
        a = AudioBookPlayActivity1;
    }

    private AudioBookPlayActivity a;

    public final void run()
    {
        int int1 = AudioBookPlayActivity.s( a ).getFirstVisiblePosition();

        if( int1 >= AudioBookPlayActivity.k( a ) )
            AudioBookPlayActivity.s( a ).smoothScrollToPosition( AudioBookPlayActivity.k( a ) );
        else
            AudioBookPlayActivity.s( a ).smoothScrollToPosition( AudioBookPlayActivity.k( a ) + (AudioBookPlayActivity.s( a ).getLastVisiblePosition() - int1) / 2 );
    }
}
