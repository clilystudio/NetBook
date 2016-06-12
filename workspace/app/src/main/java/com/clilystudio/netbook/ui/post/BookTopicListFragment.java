
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import java.util.ArrayList;
import java.util.List;

public class BookTopicListFragment extends BookPostListFragment {

    private aR h;
    private aQ i;
    private com.clilystudio.netbook.adapter.j j;
    private List k = new ArrayList();
    private com.handmark.pulltorefresh.library.j l = new aP( this );

    static aQ a(BookTopicListFragment BookTopicListFragment1, aQ aQ2)
    {
        BookTopicListFragment1.i = aQ2;
        return aQ2;
    }

    static void a(BookTopicListFragment BookTopicListFragment1)
    {
        Object[] Object_1darray2 = { "\u9ED8\u8BA4\u6392\u5E8F", "\u6700\u65B0\u53D1\u5E03", "\u6700\u591A\u8BC4\u8BBA" };
        AlertDialog$Builder Builder3 = new AlertDialog$Builder( (Context) BookTopicListFragment1.getActivity() );
        AlertDialog AlertDialog7;

        Builder3.setTitle( (CharSequence) "\u6392\u5E8F" );
        Builder3.setSingleChoiceItems( (CharSequence[]) Object_1darray2, BookTopicListFragment1.g, (DialogInterface$OnClickListener) new aO( BookTopicListFragment1 ) );
        Builder3.setNegativeButton( (CharSequence) "\u53D6\u6D88", null );
        AlertDialog7 = Builder3.create();
        AlertDialog7.setCanceledOnTouchOutside( true );
        AlertDialog7.show();
    }

    static aQ b(BookTopicListFragment BookTopicListFragment1)
    {
        return BookTopicListFragment1.i;
    }

    static void c(BookTopicListFragment BookTopicListFragment1)
    {
        BookTopicListFragment1.e();
    }

    public static BookTopicListFragment d()
    {
        return new BookTopicListFragment();
    }

    static List d(BookTopicListFragment BookTopicListFragment1)
    {
        return BookTopicListFragment1.k;
    }

    private void e()
    {
        aR aR1;
        String[] String_1darray2;

        h = new aR( this, (byte) 0 );
        aR1 = h;
        String_1darray2 = new String[2];
        String_1darray2[0] = a();
        String_1darray2[1] = f;
        aR1.b( String_1darray2 );
    }

    static void e(BookTopicListFragment BookTopicListFragment1)
    {
        ((BookPostTabActivity) BookTopicListFragment1.getActivity()).k();
    }

    static void f(BookTopicListFragment BookTopicListFragment1)
    {
        if( BookTopicListFragment1.e.getVisibility() == 8 )
        {
            BookTopicListFragment1.e.setVisibility( 0 );
            BookTopicListFragment1.e.setImageResource( 2130837885 );
            BookTopicListFragment1.e.setOnClickListener( (View$OnClickListener) new aN( BookTopicListFragment1 ) );
            BookTopicListFragment1.e.setContentDescription( (CharSequence) "\u53D1\u5E03\u8BA8\u8BBA" );
        }
    }

    static com.clilystudio.netbook.adapter.j g(BookTopicListFragment BookTopicListFragment1)
    {
        return BookTopicListFragment1.j;
    }

    static com.handmark.pulltorefresh.library.j h(BookTopicListFragment BookTopicListFragment1)
    {
        return BookTopicListFragment1.l;
    }

    static aR i(BookTopicListFragment BookTopicListFragment1)
    {
        return BookTopicListFragment1.h;
    }

    public final void b()
    {
        super.b();
        d.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u8BDD\u9898\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new aK( this ) );
        b.setOnItemClickListener( (AdapterView$OnItemClickListener) new aM( this ) );
        j = new com.clilystudio.netbook.adapter.j( LayoutInflater.from( (Context) getActivity() ) );
        b.setAdapter( (ListAdapter) j );
        f = ((BookPostTabActivity) getActivity()).l();
        g = BookPostTabActivity.a( f );
        e();
    }

    public void onAttach(Activity Activity1)
    {
        super.onAttach( Activity1 );
        ((BookPostTabActivity) Activity1).a( (ax) new aJ( this ) );
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
