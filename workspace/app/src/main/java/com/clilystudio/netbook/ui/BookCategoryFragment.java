
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.k;
import com.clilystudio.netbook.model.CategoryBook;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class BookCategoryFragment extends Fragment {

    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private com.clilystudio.netbook.adapter.c d;
    private View e;
    private TextView f;
    private String g;
    private aq h;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j j = new ap( this );

    static ListView a(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.b;
    }

    public static BookCategoryFragment a(String String1)
    {
        BookCategoryFragment BookCategoryFragment2 = new BookCategoryFragment();
        Bundle Bundle3 = new Bundle();

        Bundle3.putString( "bookcategory_type", String1 );
        BookCategoryFragment2.setArguments( Bundle3 );
        return BookCategoryFragment2;
    }

    static aq a(BookCategoryFragment BookCategoryFragment1, aq aq2)
    {
        BookCategoryFragment1.h = aq2;
        return aq2;
    }

    static void a(BookCategoryFragment BookCategoryFragment1, CategoryBook CategoryBook2)
    {
        if( CategoryBook2 != null )
            BookCategoryFragment1.startActivity( BookInfoActivity.a( (Context) BookCategoryFragment1.getActivity(), CategoryBook2.getId() ) );
    }

    static List b(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.i;
    }

    static TextView c(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.f;
    }

    static aq d(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.h;
    }

    static View e(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.e;
    }

    static View f(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.c;
    }

    static PullToRefreshListView g(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.a;
    }

    static com.clilystudio.netbook.adapter.c h(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.d;
    }

    static com.handmark.pulltorefresh.library.j i(BookCategoryFragment BookCategoryFragment1)
    {
        return BookCategoryFragment1.j;
    }

    public final void a()
    {
        e.setVisibility( 0 );
        i.clear();
        d.a( (Collection) i );
        h = new aq( this );
        h.b( new String[0] );
    }

    public final void b(String String1)
    {
        g = String1;
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a();
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View5;
        LayoutInflater LayoutInflater6;

        super.onCreateView( LayoutInflater1, ViewGroup2, Bundle3 );
        View5 = LayoutInflater1.inflate( 2130903209, ViewGroup2, false );
        g = ((BookCategoryListActivity) getActivity()).g();
        a = (PullToRefreshListView) View5.findViewById( 2131493099 );
        b = (ListView) a.h();
        com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), b );
        e = View5.findViewById( 2131493085 );
        f = (TextView) View5.findViewById( 2131493100 );
        LayoutInflater6 = LayoutInflater.from( (Context) getActivity() );
        c = LayoutInflater6.inflate( 2130903325, null );
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            b.setFooterDividersEnabled( false );
        b.addFooterView( c );
        c.setVisibility( 8 );
        b.setOnItemClickListener( (AdapterView$OnItemClickListener) new am( this ) );
        a.setOnRefreshListener( (k) new an( this ) );
        d = new com.clilystudio.netbook.adapter.c( LayoutInflater6 );
        b.setAdapter( (ListAdapter) d );
        return View5;
    }

    public void setUserVisibleHint(boolean boolean1)
    {
        String String2;

        super.setUserVisibleHint( boolean1 );
        String2 = ((BookCategoryListActivity) getActivity()).g();
        if( boolean1 && !g.equals( String2 ) )
        {
            g = String2;
            a();
        }
    }
}
