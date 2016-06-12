
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.widget.LabelPtrListView;
import java.util.ArrayList;
import java.util.List;

public class MyTopicFragment extends Fragment {

    private F a;
    private G b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private com.clilystudio.netbook.adapter.F h;
    private String j;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j k = new E( this );

    static TextView a(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.g;
    }

    static F a(MyTopicFragment MyTopicFragment1, F F2)
    {
        MyTopicFragment1.a = F2;
        return F2;
    }

    static G a(MyTopicFragment MyTopicFragment1, G G2)
    {
        MyTopicFragment1.b = G2;
        return G2;
    }

    static void a(MyTopicFragment MyTopicFragment1, int int2)
    {
        MyTopicFragment1.c.setCountText( "\u5171\u53D1\u5E03\u4E86%d\u6761\u8BDD\u9898", int2 );
    }

    static String b(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.j;
    }

    static View c(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.f;
    }

    static LabelPtrListView d(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.c;
    }

    static F e(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.a;
    }

    static G f(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.b;
    }

    static ListView g(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.d;
    }

    static List h(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.i;
    }

    static View i(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.e;
    }

    static com.handmark.pulltorefresh.library.j j(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.k;
    }

    static com.clilystudio.netbook.adapter.F k(MyTopicFragment MyTopicFragment1)
    {
        return MyTopicFragment1.h;
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903221, ViewGroup2, false );
        LayoutInflater LayoutInflater5;
        Account Account6;

        f = View4.findViewById( 2131493085 );
        g = (TextView) View4.findViewById( 2131493100 );
        LayoutInflater5 = LayoutInflater.from( (Context) getActivity() );
        c = (LabelPtrListView) View4.findViewById( 2131493099 );
        c.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        e = LayoutInflater5.inflate( 2130903325, null );
        d = (ListView) c.h();
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            d.setFooterDividersEnabled( false );
        d.addFooterView( e );
        e.setVisibility( 8 );
        c.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new B( this ) );
        d.setOnItemClickListener( (AdapterView$OnItemClickListener) new D( this ) );
        h = new com.clilystudio.netbook.adapter.F( LayoutInflater5 );
        d.setAdapter( (ListAdapter) h );
        Account6 = am.e();
        if( Account6 == null )
        {
            f.setVisibility( 8 );
            g.setVisibility( 0 );
            g.setText( (CharSequence) "\u8BF7\u767B\u5F55\u540E\u67E5\u770B" );
        }
        else
        {
            G G7;
            String[] String_1darray8;

            j = Account6.getToken();
            b = new G( this, (byte) 0 );
            G7 = b;
            String_1darray8 = new String[1];
            String_1darray8[0] = j;
            G7.b( String_1darray8 );
        }
        return View4;
    }
}
