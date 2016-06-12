
package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class E implements j {

    E(MyTopicFragment MyTopicFragment1)
    {
        a = MyTopicFragment1;
    }

    private MyTopicFragment a;

    public final void a()
    {
        if( MyTopicFragment.e( a ) == null || MyTopicFragment.e( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            F F2;
            String[] String_1darray3;

            MyTopicFragment.i( a ).setVisibility( 0 );
            if( MyTopicFragment.f( a ) != null && MyTopicFragment.f( a ).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.user.MyTopicFragment.f( a ).isCancelled() )
                MyTopicFragment.f( a ).cancel( true );
            MyTopicFragment.a( a, new F( a, (byte) 0 ) );
            F2 = MyTopicFragment.e( a );
            String_1darray3 = new String[1];
            String_1darray3[0] = MyTopicFragment.b( a );
            F2.b( String_1darray3 );
        }
    }
}
