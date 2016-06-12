
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.TimelineResult$Names;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TweetTimelineFragment extends Fragment {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    private eb a;
    private ea b;
    private PullToRefreshListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private RelativeLayout h;
    private TextView i;
    private G j;
    private List k = new ArrayList();
    private com.handmark.pulltorefresh.library.j l = new dZ( this );

    static TextView a(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.g;
    }

    static ea a(TweetTimelineFragment TweetTimelineFragment1, ea ea2)
    {
        TweetTimelineFragment1.b = ea2;
        return ea2;
    }

    static List a(TweetTimelineFragment TweetTimelineFragment1, List List2, TimelineResult TimelineResult3)
    {
        return TweetTimelineFragment1.a( List2, TimelineResult3 );
    }

    private List a(List List1, TimelineResult TimelineResult2)
    {
        Object Object3 = new ArrayList();
        TimelineResult$Temp[] Temp_1darray4 = TimelineResult2.getTweets();
        int int5 = Temp_1darray4.length;
        int int6;
        Iterator Iterator7;

        for( int6 = 0; int6 < int5; ++int6 )
            ((List) Object3).add( Temp_1darray4[int6].getTweet() );
        Iterator7 = ((List) Object3).iterator();
        while( Iterator7.hasNext() )
        {
            Object Object8 = (Tweet) Iterator7.next();

            if( a( List1, (Tweet) Object8 ) )
                continue;
            if( ((Tweet) Object8).isRetween() )
                ((Tweet) Object8).names = a( TimelineResult2.getRetweetNames(), ((Tweet) Object8).getRefTweet().get_id() );
            List1.add( Object8 );
        }
        return List1;
    }

    private void a()
    {
        if( am.e() != null )
        {
            Account Account1;
            eb eb2;
            String[] String_1darray3;

            h.setVisibility( 8 );
            Account1 = am.e();
            a = new eb( this, (byte) 0 );
            eb2 = a;
            String_1darray3 = new String[2];
            String_1darray3[0] = Account1.getToken();
            String_1darray3[1] = am.e().getUser().getId();
            eb2.b( String_1darray3 );
        }
        else
        {
            c();
            b();
        }
    }

    private void a(TimelineResult TimelineResult1)
    {
        TimelineResult$Temp[] Temp_1darray2 = TimelineResult1.getTweets();

        if( Temp_1darray2.length > 0 )
        {
            int int3;
            int int4;

            k.clear();
            int3 = Temp_1darray2.length;
            for( int4 = 0; int4 < int3; ++int4 )
            {
                TimelineResult$Temp Temp5 = Temp_1darray2[int4];

                Temp5.getTweet().setUser( Temp5.getUser() );
            }
            k = a( (List) new ArrayList(), TimelineResult1 );
            j.a( k );
        }
    }

    static void a(TweetTimelineFragment TweetTimelineFragment1, TimelineResult TimelineResult2)
    {
        TweetTimelineFragment1.a( TimelineResult2 );
    }

    private static boolean a(Tweet Tweet1)
    {
        User User2 = am.e().getUser();

        if( Tweet1.getNames() != null )
        {
            String[] String_1darray3 = Tweet1.getNames();
            int int4 = String_1darray3.length;
            int int5 = 0;

            while( int5 < int4 )
            {
                if( String_1darray3[int5].equals( User2.getNickname() ) )
                    return true;
                else
                    ++int5;
            }
        }
        return false;
    }

    private static boolean a(List List1, Tweet Tweet2)
    {
        Iterator Iterator3 = List1.iterator();

        while( Iterator3.hasNext() )
        {
            Tweet Tweet4 = (Tweet) Iterator3.next();

            if( !Tweet2.isRetween() || !Tweet2.getRefTweet().equals( Tweet4.getRefTweet() ) )
            {
                if( Tweet2.isRetween() || !Tweet2.equals( Tweet4.getRefTweet() ) )
                    continue;
            }
            return true;
        }
        return false;
    }

    private static String[] a(TimelineResult$Names[] Names_1darray1, String String2)
    {
        if( Names_1darray1 != null )
        {
            int int3 = Names_1darray1.length;
            int int4 = 0;

            while( int4 < int3 )
            {
                TimelineResult$Names Names5 = Names_1darray1[int4];

                if( Names5.getId().equals( String2 ) )
                    return Names5.getNames();
                else
                    ++int4;
            }
        }
        return null;
    }

    static ea b(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.b;
    }

    private void b()
    {
        if( am.e() == null )
            h.setVisibility( 0 );
        else
        {
            g.setVisibility( 0 );
            g.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u8BDD\u9898\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
        }
    }

    private void b(TimelineResult TimelineResult1)
    {
        TimelineResult$Temp[] Temp_1darray2 = TimelineResult1.getTweets();
        User User3 = am.e().getUser();
        Object Object4 = new ArrayList();
        int int5 = Temp_1darray2.length;
        int int6;

        for( int6 = 0; int6 < int5; ++int6 )
        {
            TimelineResult$Temp Temp7 = Temp_1darray2[int6];

            if( Temp7.getTweet().isRetween() && a( Temp7.getTweet() ) )
            {
                Object Object8 = new RetweenRecord();

                ((RetweenRecord) Object8).setUserId( User3.getId() );
                ((RetweenRecord) Object8).setTweetId( Temp7.getTweet().getRefTweet().get_id() );
                ((List) Object4).add( Object8 );
            }
        }
        RetweenRecord.save2DB( (List) Object4 );
    }

    static void b(TweetTimelineFragment TweetTimelineFragment1, TimelineResult TimelineResult2)
    {
        User User3 = am.e().getUser();
        String String4;

        TweetCache.delete( User3.getId(), 1 );
        String4 = new Gson().toJson( TimelineResult2 );
        TweetCache.save2DB( User3.getId(), 1, String4 );
        RetweenRecord.clear( User3.getId() );
        TweetTimelineFragment1.b( TimelineResult2 );
    }

    private void c()
    {
        g.setVisibility( 8 );
        f.setVisibility( 8 );
        e.setVisibility( 8 );
        c.n();
    }

    static void c(TweetTimelineFragment TweetTimelineFragment1)
    {
        TweetTimelineFragment1.a();
    }

    static void c(TweetTimelineFragment TweetTimelineFragment1, TimelineResult TimelineResult2)
    {
        TweetTimelineFragment1.b( TimelineResult2 );
    }

    static void d(TweetTimelineFragment TweetTimelineFragment1)
    {
        TweetTimelineFragment1.c();
    }

    static PullToRefreshListView e(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.c;
    }

    static com.handmark.pulltorefresh.library.j f(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.l;
    }

    static void g(TweetTimelineFragment TweetTimelineFragment1)
    {
        TweetTimelineFragment1.b();
    }

    static List h(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.k;
    }

    static G i(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.j;
    }

    static View j(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.e;
    }

    static eb k(TweetTimelineFragment TweetTimelineFragment1)
    {
        return TweetTimelineFragment1.a;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onActivityCreated(Bundle Bundle1)
    {
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        com.clilystudio.netbook.event.i.a().a( this );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View4 = LayoutInflater1.inflate( 2130903211, ViewGroup2, false );

        f = View4.findViewById( 2131493085 );
        f.setVisibility( 8 );
        g = (TextView) View4.findViewById( 2131493100 );
        c = (PullToRefreshListView) View4.findViewById( 2131493099 );
        c.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        h = (RelativeLayout) View4.findViewById( 2131493438 );
        i = (TextView) View4.findViewById( 2131493589 );
        i.setOnClickListener( (View$OnClickListener) new dW( this ) );
        d = (ListView) c.h();
        e = LayoutInflater1.inflate( 2130903325, null );
        d.addFooterView( e );
        if( com.clilystudio.netbook.hpay100.a.a.j() )
            d.setFooterDividersEnabled( false );
        c.setEnabled( false );
        c.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new dX( this ) );
        j = new G( (Activity) getActivity(), false, false );
        j.a( k );
        d.setAdapter( (ListAdapter) j );
        return View4;
    }

    public void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }

    public void onLogin(t t1)
    {
        a();
    }
}
