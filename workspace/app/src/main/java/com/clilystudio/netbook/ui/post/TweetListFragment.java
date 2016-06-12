
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.k;
import java.util.ArrayList;
import java.util.List;

public class TweetListFragment extends Fragment {

    private dO a;
    private dN b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private com.clilystudio.netbook.adapter.j h;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j j = new dM( this );

    static TextView a(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.g;
    }

    static dN a(TweetListFragment TweetListFragment1, dN dN2)
    {
        TweetListFragment1.b = dN2;
        return dN2;
    }

    private void a()
    {
        a = new dO( this, (byte) 0 );
        a.b( new String[] { "50bff3ec209793513100001c", "updated" } );
    }

    static dN b(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.b;
    }

    static void c(TweetListFragment TweetListFragment1)
    {
        TweetListFragment1.a();
    }

    static ListView d(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.d;
    }

    static List e(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.i;
    }

    static void f(TweetListFragment TweetListFragment1)
    {
        TweetListFragment1.g.setVisibility( 8 );
        TweetListFragment1.f.setVisibility( 8 );
        TweetListFragment1.e.setVisibility( 8 );
        TweetListFragment1.c.n();
    }

    static com.clilystudio.netbook.adapter.j g(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.h;
    }

    static PullToRefreshListView h(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.c;
    }

    static com.handmark.pulltorefresh.library.j i(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.j;
    }

    static void j(TweetListFragment TweetListFragment1)
    {
        TweetListFragment1.g.setVisibility( 0 );
        TweetListFragment1.g.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u8BDD\u9898\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
    }

    static View k(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.e;
    }

    static dO l(TweetListFragment TweetListFragment1)
    {
        return TweetListFragment1.a;
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a();
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903211, ViewGroup2, false );

        f = View4.findViewById( 2131493085 );
        g = (TextView) View4.findViewById( 2131493100 );
        c = (PullToRefreshListView) View4.findViewById( 2131493099 );
        c.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        d = (ListView) c.h();
        e = LayoutInflater1.inflate( 2130903325, null );
        d.addFooterView( e );
        if( com.clilystudio.netbook.hpay100.a.a.j() )
            d.setFooterDividersEnabled( false );
        c.setOnRefreshListener( (k) new dJ( this ) );
        d.setOnItemClickListener( (AdapterView$OnItemClickListener) new dL( this ) );
        h = new com.clilystudio.netbook.adapter.j( LayoutInflater1 );
        d.setAdapter( (ListAdapter) h );
        return View4;
    }
}
