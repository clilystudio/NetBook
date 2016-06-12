
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class e extends com.clilystudio.netbook.a.e {

    e(AbsUGCListFragment AbsUGCListFragment1, byte byte2)
    {
        this( AbsUGCListFragment1 );
    }

    private AbsUGCListFragment a;

    private e(AbsUGCListFragment AbsUGCListFragment1)
    {
        a = AbsUGCListFragment1;
    }

    private transient UGCBookListRoot a()
    {
        try
        {
            Account Account2 = am.a( (Activity) (BaseActivity) a.getActivity() );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (UGCBookListRoot) Object1;

        super.onPostExecute( Object2 );
        a.j.setVisibility( 8 );
        a.d.setVisibility( 8 );
        a.e.setVisibility( 8 );
        a.a.n();
        a.a.setOnLastItemVisibleListener( AbsUGCListFragment.a( a ) );
        if( Object2 != null )
        {
            if( ((UGCBookListRoot) Object2).isOk() )
            {
                UGCBookListRoot$UGCBook[] UGCBook_1darray3;
                int int4;
                Iterator Iterator5;

                a.i.clear();
                UGCBook_1darray3 = ((UGCBookListRoot) Object2).getBookLists();
                int4 = UGCBook_1darray3.length;
                Iterator5 = Arrays.asList( UGCBook_1darray3 ).iterator();
                while( Iterator5.hasNext() )
                {
                    UGCBookListRoot$UGCBook UGCBook6 = (UGCBookListRoot$UGCBook) Iterator5.next();

                    if( UGCBook6 == null )
                        continue;
                    a.i.add( UGCBook6 );
                }
                a.c.a( (Collection) a.i );
                AbsUGCListFragment.a( a, int4 );
                if( int4 < 10 )
                {
                    a.a.setOnLastItemVisibleListener( null );
                    if( int4 == 0 )
                    {
                        a.j.setVisibility( 0 );
                        a.j.setText( (CharSequence) a.c() );
                    }
                }
            }
            else
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u4E0B\u62C9\u5237\u65B0\u91CD\u8BD5" );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u4E0B\u62C9\u5237\u65B0\u91CD\u8BD5" );
    }
}
