
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.k;
import com.clilystudio.netbook.adapter.HomeTopicAdapter;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.o;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.post.BookHelpListActivity;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.ui.post.GirlTopicListActivity;
import com.clilystudio.netbook.ui.post.ReviewListActivity;
import com.clilystudio.netbook.ui.post.TweetTabActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;
import com.clilystudio.netbook.widget.CommunitySection;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HomeTopicFragment extends HomeFragment implements View$OnClickListener {

    private PullToRefreshListView b;
    private ListView c;
    private HomeTopicAdapter d;
    private View f;
    private List e = new ArrayList();
    protected com.clilystudio.netbook.api.b a = com.clilystudio.netbook.api.b.a();

    private void a(View View1)
    {
        CommunitySection CommunitySection2 = (CommunitySection) View1.findViewById( 2131493510 );

        if( com.clilystudio.netbook.hpay100.a.a.r( (Context) getActivity(), "switch_news" ) )
        {
            CommunitySection2.a( com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), "FRIST_RUN_POST", true ) );
            CommunitySection2.setOnClickListener( this );
        }
        else
            CommunitySection2.setVisibility( 8 );
        View1.findViewById( 2131493511 ).setOnClickListener( this );
        View1.findViewById( 2131493512 ).setOnClickListener( this );
        View1.findViewById( 2131493513 ).setOnClickListener( this );
        View1.findViewById( 2131493514 ).setOnClickListener( this );
    }

    static void a(HomeTopicFragment HomeTopicFragment1)
    {
        HomeTopicFragment1.d();
    }

    static void a(HomeTopicFragment HomeTopicFragment1, String String2)
    {
        HomeTopicFragment1.b( String2 );
    }

    private void a(String String1)
    {
        new O( this, (byte) 0 ).b( new String[] { String1 } );
    }

    static ListView b(HomeTopicFragment HomeTopicFragment1)
    {
        return HomeTopicFragment1.c;
    }

    public static HomeTopicFragment b()
    {
        return new HomeTopicFragment();
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void b(String String1)
    {
    }

    static List c(HomeTopicFragment HomeTopicFragment1)
    {
        return HomeTopicFragment1.e;
    }

    private void c()
    {
        if( b != null )
            b.n();
    }

    private void d()
    {
        List List1 = BookReadRecord.getAll();
        String String2;

        if( List1 != null && !List1.isEmpty() )
        {
            StringBuilder StringBuilder3 = new StringBuilder();
            Iterator Iterator4 = List1.iterator();
            String String5;

            while( Iterator4.hasNext() )
            {
                StringBuilder3.append( ((BookReadRecord) Iterator4.next()).getBookId() );
                StringBuilder3.append( "," );
            }
            String5 = StringBuilder3.toString();
            String2 = String5.substring( 0, -1 + String5.length() );
        }
        else
            String2 = "";
        if( "".equals( String2 ) )
        {
            c();
            e.clear();
            if( d != null )
                d.a( e );
        }
        a( String2 );
    }

    static void d(HomeTopicFragment HomeTopicFragment1)
    {
        HomeTopicFragment1.c();
    }

    static HomeTopicAdapter e(HomeTopicFragment HomeTopicFragment1)
    {
        return HomeTopicFragment1.d;
    }

    public final String a()
    {
        return "home_topic";
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        List List2;
        int int3;

        super.onActivityCreated( Bundle1 );
        c = (ListView) b.h();
        com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), c );
        f = LayoutInflater.from( (Context) getActivity() ).inflate( 2130903231, (ViewGroup) c, false );
        c.addHeaderView( f, null, false );
        a( f );
        b.setOnRefreshListener( (k) new L( this ) );
        c.setOnItemClickListener( (AdapterView$OnItemClickListener) new N( this ) );
        d = new HomeTopicAdapter( getActivity() );
        c.setAdapter( (ListAdapter) d );
        List2 = BookReadRecord.getAll();
        if( List2 != null && List2.size() > 0 )
        {
            Iterator Iterator4 = List2.iterator();

            while( Iterator4.hasNext() )
            {
                BookReadRecord BookReadRecord5 = (BookReadRecord) Iterator4.next();
                Object Object6 = new BookShelfTopic();

                ((BookShelfTopic) Object6).setBookId( BookReadRecord5.getBookId() );
                ((BookShelfTopic) Object6).setTitle( BookReadRecord5.getTitle() );
                ((BookShelfTopic) Object6).setFullCover( BookReadRecord5.getFullCover() );
                ((BookShelfTopic) Object6).setPostCount( 0 );
                e.add( Object6 );
            }
            d.a( e );
            int3 = 1;
        }
        else
            int3 = 0;
        if( int3 != 0 )
            b.setRefreshing();
        else
            a( "" );
    }

    public void onBookAdded(com.clilystudio.netbook.event.c c1)
    {
        d();
    }

    public void onBookRemoved(com.clilystudio.netbook.event.h h1)
    {
        d();
    }

    public void onBookShelfRefresh(BookShelfRefreshEvent BookShelfRefreshEvent1)
    {
        d();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onClick(View View1)
    {
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        i.a().a( this );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903214, ViewGroup2, false );

        b = (PullToRefreshListView) View4.findViewById( 2131493443 );
        b.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        return View4;
    }

    public void onEnterTweet(o o1)
    {
        a( f );
    }

    public void onPause()
    {
        super.onPause();
        i.a().b( this );
    }

    public void onResume()
    {
        super.onResume();
        i.a().a( this );
        d.notifyDataSetChanged();
    }
}
