
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import com.clilystudio.netbook.adapter.z;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class ad extends com.clilystudio.netbook.a.e {

    ad(BookHelpActivity BookHelpActivity1, byte byte2)
    {
        this( BookHelpActivity1 );
    }

    private BookHelpActivity a;

    private ad(BookHelpActivity BookHelpActivity1)
    {
        a = BookHelpActivity1;
    }

    private transient PostDetailComment a(String[] String_1darray1)
    {
        PostDetailComment PostDetailComment3;

        try
        {
            PostDetailComment3 = com.clilystudio.netbook.api.b.b().f( String_1darray1[0], BookHelpActivity.c( a ).getCount(), 30 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PostDetailComment3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (PostDetailComment) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((PostDetailComment) Object2).isOk() )
        {
            Object Object3;

            a.b.setOnLastItemListener( BookHelpActivity.d( a ) );
            BookHelpActivity.e( a ).setVisibility( 8 );
            Object3 = Arrays.asList( ((PostDetailComment) Object2).getComments() );
            BookHelpActivity.f( a ).addAll( (Collection) Object3 );
            BookHelpActivity.c( a ).a( (Collection) BookHelpActivity.f( a ) );
            if( ((List) Object3).size() < 30 )
            {
                a.b.removeFooterView( BookHelpActivity.e( a ) );
                a.b.setOnLastItemListener( null );
            }
        }
        else
        {
            a.b.setOnLastItemListener( null );
            BookHelpActivity.g( a );
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5" );
        }
    }
}
