
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookHelpList;
import com.clilystudio.netbook.model.BookHelpSummary;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class au extends com.clilystudio.netbook.a.e {

    au(BookHelpListActivity BookHelpListActivity1, byte byte2)
    {
        this( BookHelpListActivity1 );
    }

    private BookHelpListActivity a;

    private au(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    private transient BookHelpList a(String[] String_1darray1)
    {
        if( !isCancelled() )
        {
            try
            {
                BookHelpList BookHelpList3 = com.clilystudio.netbook.api.b.b().a( String_1darray1[0], String_1darray1[1], BookHelpListActivity.j( a ).size(), 20, BookHelpListActivity.n( a ) );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
            }
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (BookHelpList) Object1;

        super.onPostExecute( Object2 );
        BookHelpListActivity.d( a ).setVisibility( 8 );
        BookHelpListActivity.o( a ).setVisibility( 8 );
        BookHelpListActivity.p( a ).setVisibility( 8 );
        BookHelpListActivity.l( a ).n();
        if( !isCancelled() )
        {
            if( Object2 != null && ((BookHelpList) Object2).getHelps() != null )
            {
                BookHelpSummary[] BookHelpSummary_1darray3 = ((BookHelpList) Object2).getHelps();
                int int4 = BookHelpSummary_1darray3.length;

                if( int4 > 0 )
                {
                    Object Object5 = Arrays.asList( BookHelpSummary_1darray3 );

                    BookHelpListActivity.j( a ).addAll( (Collection) Object5 );
                    BookHelpListActivity.q( a ).a( (Collection) BookHelpListActivity.j( a ) );
                    if( int4 < 20 )
                        BookHelpListActivity.l( a ).setOnLastItemVisibleListener( null );
                    else
                    {
                        BookHelpListActivity.l( a ).setOnLastItemVisibleListener( BookHelpListActivity.r( a ) );
                        return;
                    }
                }
                else
                {
                    BookHelpListActivity.l( a ).setOnLastItemVisibleListener( null );
                    return;
                }
            }
            else
            {
                com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
                return;
            }
        }
    }
}
