
package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class BookPostListFragment extends Fragment {

    protected PullToRefreshListView a;
    protected ListView b;
    protected View c;
    protected TextView d;
    protected FloatingActionButton e;
    protected String f;
    protected int g;
    private View h;

    public final String a()
    {
        if( (BookPostTabActivity) getActivity() != null )
            return ((BookPostTabActivity) getActivity()).j();
        else
            return "";
    }

    public void b()
    {
        d.setVisibility( 0 );
    }

    public final void c()
    {
        d.setVisibility( 8 );
        h.setVisibility( 8 );
        c.setVisibility( 8 );
        a.n();
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903211, ViewGroup2, false );

        h = View4.findViewById( 2131493085 );
        d = (TextView) View4.findViewById( 2131493100 );
        c = LayoutInflater1.inflate( 2130903325, null );
        a = (PullToRefreshListView) View4.findViewById( 2131493099 );
        b = (ListView) a.h();
        b.addFooterView( c );
        if( com.clilystudio.netbook.hpay100.a.a.j() )
            b.setFooterDividersEnabled( false );
        e = (FloatingActionButton) View4.findViewById( 2131493437 );
        return View4;
    }
}
