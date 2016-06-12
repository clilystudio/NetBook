
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Review;
import java.util.ArrayList;
import java.util.List;

public class BookReviewListFragment extends BookPostListFragment {

    private aI h;
    private aH i;
    private com.clilystudio.netbook.adapter.h j;
    private List k = new ArrayList();
    private com.handmark.pulltorefresh.library.j l = new aF( this );

    static aH a(BookReviewListFragment BookReviewListFragment1, aH aH2)
    {
        BookReviewListFragment1.i = aH2;
        return aH2;
    }

    static void a(BookReviewListFragment BookReviewListFragment1)
    {
        Object[] Object_1darray2 = { "\u9ED8\u8BA4\u6392\u5E8F", "\u6700\u65B0\u53D1\u5E03", "\u6700\u591A\u8BC4\u8BBA" };
        android.support.v7.app.k k3 = new android.support.v7.app.k( (Context) BookReviewListFragment1.getActivity() );
        android.support.v7.app.j j7;

        k3.a( (CharSequence) "\u6392\u5E8F" );
        k3.a( (CharSequence[]) Object_1darray2, BookReviewListFragment1.g, (DialogInterface$OnClickListener) new aE( BookReviewListFragment1 ) );
        k3.b( (CharSequence) "\u53D6\u6D88", null );
        j7 = k3.b();
        j7.setCanceledOnTouchOutside( true );
        j7.show();
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(BookReviewListFragment BookReviewListFragment1, Review Review2)
    {
    }

    static aH b(BookReviewListFragment BookReviewListFragment1)
    {
        return BookReviewListFragment1.i;
    }

    static void b(BookReviewListFragment BookReviewListFragment1, Review Review2)
    {
        android.support.v7.app.k k3 = new android.support.v7.app.k( (Context) BookReviewListFragment1.getActivity() );

        k3.a( (CharSequence) "\u518D\u6B21\u7F16\u8F91" );
        k3.b( (CharSequence) "\u5373\u5C06\u8F7D\u5165\u4E4B\u524D\u53D1\u5E03\u7684\u4E66\u8BC4" );
        k3.a( 2131034424, (DialogInterface$OnClickListener) new aD( BookReviewListFragment1, Review2 ) );
        k3.c();
    }

    static void c(BookReviewListFragment BookReviewListFragment1)
    {
        BookReviewListFragment1.e();
    }

    public static BookReviewListFragment d()
    {
        return new BookReviewListFragment();
    }

    static List d(BookReviewListFragment BookReviewListFragment1)
    {
        return BookReviewListFragment1.k;
    }

    private void e()
    {
        aI aI1;
        String[] String_1darray2;

        h = new aI( this, (byte) 0 );
        aI1 = h;
        String_1darray2 = new String[2];
        String_1darray2[0] = a();
        String_1darray2[1] = f;
        aI1.b( String_1darray2 );
    }

    static void e(BookReviewListFragment BookReviewListFragment1)
    {
        Account Account2 = am.e();

        if( Account2 != null )
        {
            aG aG3 = new aG( BookReviewListFragment1, (Activity) BookReviewListFragment1.getActivity() );
            String[] String_1darray4 = new String[2];

            String_1darray4[0] = BookReviewListFragment1.a();
            String_1darray4[1] = Account2.getToken();
            aG3.b( String_1darray4 );
        }
        else
            BookReviewListFragment1.f();
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void f()
    {
    }

    static void f(BookReviewListFragment BookReviewListFragment1)
    {
        BookReviewListFragment1.f();
    }

    static void g(BookReviewListFragment BookReviewListFragment1)
    {
        if( BookReviewListFragment1.e.getVisibility() == 8 )
        {
            BookReviewListFragment1.e.setVisibility( 0 );
            BookReviewListFragment1.e.setImageResource( 2130837883 );
            BookReviewListFragment1.e.setOnClickListener( (View$OnClickListener) new aC( BookReviewListFragment1 ) );
            BookReviewListFragment1.e.setContentDescription( (CharSequence) "\u5199\u4E66\u8BC4" );
        }
    }

    static com.clilystudio.netbook.adapter.h h(BookReviewListFragment BookReviewListFragment1)
    {
        return BookReviewListFragment1.j;
    }

    static com.handmark.pulltorefresh.library.j i(BookReviewListFragment BookReviewListFragment1)
    {
        return BookReviewListFragment1.l;
    }

    static aI j(BookReviewListFragment BookReviewListFragment1)
    {
        return BookReviewListFragment1.h;
    }

    public final void b()
    {
        super.b();
        d.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u8BC4\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new az( this ) );
        b.setOnItemClickListener( (AdapterView$OnItemClickListener) new aB( this ) );
        j = new com.clilystudio.netbook.adapter.h( LayoutInflater.from( (Context) getActivity() ) );
        b.setAdapter( (ListAdapter) j );
        f = ((BookPostTabActivity) getActivity()).l();
        g = BookPostTabActivity.a( f );
        e();
    }

    public void onAttach(Activity Activity1)
    {
        super.onAttach( Activity1 );
        ((BookPostTabActivity) Activity1).b( (ax) new ay( this ) );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        com.clilystudio.netbook.event.i.a().a( this );
    }

    public void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }

    public void onRefreshEvent(com.clilystudio.netbook.event.f f1)
    {
        if( a != null )
            a.setRefreshing();
    }
}
