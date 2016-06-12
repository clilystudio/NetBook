
package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UGCMainListFragment extends Fragment implements AdapterView$OnItemClickListener {

    private PullToRefreshListView a;
    private ListView b;
    private View c;
    private X d;
    private View e;
    private TextView f;
    private at g;
    private as h;
    private String j;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j k = new ar( this );

    static TextView a(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.f;
    }

    public static UGCMainListFragment a(String String1, String String2)
    {
        UGCMainListFragment UGCMainListFragment3 = new UGCMainListFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString( "sort", String1 );
        Bundle4.putString( "duration", String2 );
        UGCMainListFragment3.setArguments( Bundle4 );
        return UGCMainListFragment3;
    }

    static as a(UGCMainListFragment UGCMainListFragment1, as as2)
    {
        UGCMainListFragment1.h = as2;
        return as2;
    }

    static at a(UGCMainListFragment UGCMainListFragment1, at at2)
    {
        UGCMainListFragment1.g = at2;
        return at2;
    }

    static at b(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.g;
    }

    static View c(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.e;
    }

    static View d(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.c;
    }

    static PullToRefreshListView e(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.a;
    }

    static com.handmark.pulltorefresh.library.j f(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.k;
    }

    static List g(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.i;
    }

    static X h(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.d;
    }

    static as i(UGCMainListFragment UGCMainListFragment1)
    {
        return UGCMainListFragment1.h;
    }

    public final void a()
    {
        e.setVisibility( 0 );
        i.clear();
        d.a( (Collection) i );
        g = new at( this, (byte) 0 );
        g.b( new String[0] );
    }

    public final void a(String String1)
    {
        j = String1;
    }

    public final String b()
    {
        if( getActivity().getString( 2131034561 ).equals( j ) )
            return "";
        else
        {
            String String2;

            try
            {
                String2 = URLEncoder.encode( j, "utf-8" );
            }
            catch( UnsupportedEncodingException UnsupportedEncodingException1 )
            {
                UnsupportedEncodingException1.printStackTrace();
                return j;
            }
            return String2;
        }
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        new at( this, (byte) 0 ).b( new String[0] );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View5;
        LayoutInflater LayoutInflater6;

        super.onCreateView( LayoutInflater1, ViewGroup2, Bundle3 );
        View5 = LayoutInflater1.inflate( 2130903220, ViewGroup2, false );
        a = (PullToRefreshListView) View5.findViewById( 2131493099 );
        b = (ListView) a.h();
        com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), b );
        b.setOnItemClickListener( this );
        e = View5.findViewById( 2131493085 );
        f = (TextView) View5.findViewById( 2131493100 );
        LayoutInflater6 = LayoutInflater.from( (Context) getActivity() );
        c = LayoutInflater6.inflate( 2130903325, null );
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            b.setFooterDividersEnabled( false );
        b.addFooterView( c );
        c.setVisibility( 8 );
        a.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new ap( this ) );
        d = new X( LayoutInflater6 );
        b.setAdapter( (ListAdapter) d );
        return View5;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
    }

    public void setUserVisibleHint(boolean boolean1)
    {
        String String2;

        super.setUserVisibleHint( boolean1 );
        String2 = ((UGCMainActivity) getActivity()).b();
        if( boolean1 && !j.equals( String2 ) )
        {
            j = String2;
            a();
        }
    }
}
