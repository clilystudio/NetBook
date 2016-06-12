
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.AdapterView$OnItemLongClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.activeandroid.util.SQLiteUtils;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.ShelfMsg;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.AudioBookPlayActivity;
import com.clilystudio.netbook.ui.AudiobookInfoActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.user.RemoveAdActivity;
import com.clilystudio.netbook.util.DialogUtil$FeedIntroDialog;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.UmengGameTracer$From;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.CoverLoadingView;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.PlayableModel;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.SubordinatedAlbum;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HomeShelfFragment extends HomeFragment implements AbsListView$OnScrollListener {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    private static final String a = null;
    private View c;
    private PullToRefreshListView d;
    private ListView e;
    private View f;
    private View g;
    private View h;
    private ShelfMsg i;
    private HomeShelfAdapter j;
    private RelativeLayout l;
    private CoverLoadingView m;
    private TextView n;
    private TextView o;
    private ImageView p;
    private CommonRequest q;
    private Album r;
    private int s;
    private int t;
    private RelativeLayout w;
    private Button x;
    private Button y;
    private boolean b = true;
    private int k = 0;
    private as u = as.a();
    private int v = 0;
    private boolean z = false;
    private boolean A = false;
    private long B = 0L;
    private AdapterView$OnItemClickListener C = new p( this );
    private AdapterView$OnItemLongClickListener D = new q( this );
    private IXmPlayerStatusListener E = new x( this );

    static long a(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2, int int3)
    {
        if( BookShelf2.getType() == 3 )
            return BookShelf2.getBookFeed().getLastActionTime();
        else if( int3 == 0 )
            return BookShelf2.getLastUpdate();
        else
            return BookShelf2.getLastRead();
    }

    static HomeShelfAdapter a(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.j;
    }

    static BookShelf a(HomeShelfFragment HomeShelfFragment1, int int2)
    {
        return (BookShelf) HomeShelfFragment1.e.getAdapter().getItem( int2 );
    }

    static ShelfMsg a(HomeShelfFragment HomeShelfFragment1, ShelfMsg ShelfMsg2)
    {
        HomeShelfFragment1.i = ShelfMsg2;
        return ShelfMsg2;
    }

    private void a(int int1)
    {
        com.clilystudio.netbook.util.c.a().b();
        com.clilystudio.netbook.hpay100.a.a.b( (Context) getActivity(), new StringBuilder( "DELETE_SHELF_AD_KEY" ).append( int1 ).toString(), new Date().getTime() );
        k();
        com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "ad_delete_shelf" );
    }

    private void a(BookFile BookFile1)
    {
        TxtFileObject.delete( BookFile1 );
        k();
        new u( this, BookFile1.getFilePath() ).start();
    }

    private void a(BookReadRecord BookReadRecord1, boolean boolean2)
    {
        com.clilystudio.netbook.hpay100.a.a.t( BookReadRecord1.getBookId() );
        BookReadRecord.addAccountInfo( BookReadRecord1 );
        if( boolean2 )
        {
            k();
            com.clilystudio.netbook.hpay100.a.a.w( BookReadRecord1.getBookId() );
        }
    }

    private void a(BookShelf BookShelf1, boolean boolean2)
    {
        if( BookShelf1.getBookRecord() != null )
        {
            BookReadRecord BookReadRecord3 = BookShelf1.getBookRecord();
            String String4 = BookReadRecord3.getBookId();

            BookReadRecord.delete( BookReadRecord3 );
            a( String4 );
            if( boolean2 )
                b( String4 );
            a( String4, BookReadRecord3.getTitle(), BookReadRecord3.isRecommended() );
        }
        else if( BookShelf1.getTxt() != null )
        {
            a( BookShelf1.getTxt() );
            return;
        }
        else if( BookShelf1.getType() == 1 )
        {
            a( BookShelf1.getAdIndex() );
            return;
        }
        else if( BookShelf1.getType() == 4 )
        {
            BookShelf1.getAlbum().delete();
            k();
            return;
        }
    }

    static void a(HomeShelfFragment HomeShelfFragment1, AudioRecord AudioRecord2)
    {
        Album Album3 = AudioRecord2.convert2Album();
        int int4 = AudioRecord2.getTrack();
        String String5;
        Object Object6;
        Object Object8;

        com.clilystudio.netbook.util.e.a( (Context) HomeShelfFragment1.getActivity(), Album3.getId(), int4 );
        HomeShelfFragment1.s = int4;
        as.a( HomeShelfFragment1.E );
        HomeShelfFragment1.g();
        String5 = Album3.getCoverUrlSmall();
        Object6 = Album3.getAlbumTitle();
        HomeShelfFragment1.m.setImageUrl( String5 );
        HomeShelfFragment1.n.setText( (CharSequence) Object6 );
        com.clilystudio.netbook.util.e.a( (String) Object6 );
        new com.clilystudio.netbook.util.h().execute( new String[] { String5 } );
        HomeShelfFragment1.r = Album3;
        HomeShelfFragment1.t = int4 / 100;
        Object8 = new HashMap();
        ((Map) Object8).put( "album_id", new StringBuilder().append( Album3.getId() ).toString() );
        ((Map) Object8).put( "sort", "asc" );
        ((Map) Object8).put( "page", new StringBuilder().append( 1 + HomeShelfFragment1.t ).toString() );
        try
        {
            HomeShelfFragment1.q.setDefaultPagesize( 100 );
        }
        catch( XimalayaException XimalayaException12 )
        {
            XimalayaException12.printStackTrace();
        }
        CommonRequest.getTracks( (Map) Object8, (IDataCallBack) new D( HomeShelfFragment1, int4 ) );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, BookReadRecord BookReadRecord2)
    {
        if( BookReadRecord2 != null )
            HomeShelfFragment1.startActivity( BookInfoActivity.a( (Context) HomeShelfFragment1.getActivity(), BookReadRecord2.getBookId() ) );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, Advert Advert2)
    {
        Advert2.setRead( true );
        com.clilystudio.netbook.util.c.a().a( Advert2 );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2)
    {
        HomeShelfFragment1.a( BookShelf2, true );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2, boolean boolean3)
    {
        HomeShelfFragment1.a( BookShelf2, boolean3 );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, Track Track2)
    {
        HomeShelfFragment1.a( Track2 );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, List List2)
    {
        View View3 = HomeShelfFragment1.getActivity().getLayoutInflater().inflate( 2130903380, null, false );
        CheckBox CheckBox4 = (CheckBox) View3.findViewById( 2131493973 );

        new uk.me.lewisdeane.ldialogs.h( (Context) HomeShelfFragment1.getActivity() ).a( View3 ).a( "\u786E\u5B9A", (DialogInterface$OnClickListener) new t( HomeShelfFragment1, List2, CheckBox4 ) ).b( "\u53D6\u6D88", null ).a().show();
    }

    static void a(HomeShelfFragment HomeShelfFragment1, List List2, List List3)
    {
        int int4 = 0;
        int int5 = 0;
        int int6 = com.clilystudio.netbook.hpay100.a.a.a( (Context) HomeShelfFragment1.getActivity(), "feed_chapter_count", 50 );
        int int7 = List3.size();
        int int8 = List2.size();
        int int9;
        int int10;

        if( int7 <= int8 )
            int9 = int7;
        else
            int9 = int8;
        int10 = 0;
        while( int10 < int9 )
        {
            BookReadRecord BookReadRecord11 = (BookReadRecord) List3.get( int10 );
            BookUpdate BookUpdate12 = (BookUpdate) List2.get( int10 );
            int int13;

label_101:
            {
                if( BookReadRecord11 != null && BookUpdate12 != null )
                {
                    int int14 = BookUpdate12.getChaptersCount();
                    int int15;
                    int int16;

                    if( BookReadRecord11.getUpdated().getTime() < BookUpdate12.getUpdated().getTime() )
                        int15 = 1;
                    else
                        int15 = 0;
                    if( int15 != 0 )
                    {
                        BookReadRecord11.setUpdated( BookUpdate12.getUpdated() );
                        BookReadRecord11.setLastChapter( BookUpdate12.getLastChapter() );
                        BookReadRecord11.setUnread( true );
                        BookReadRecord11.setChapterCount( int14 );
                        BookReadRecord11.save();
                        int16 = 1;
                    }
                    else
                        int16 = int4;
                    if( BookReadRecord11.isFeeding() )
                    {
                        boolean boolean17 = BookReadRecord11.isFeedFat();
                        boolean boolean18;

                        if( int14 - BookReadRecord11.getChapterCountAtFeed() >= int6 )
                            boolean18 = true;
                        else
                            boolean18 = false;
                        if( boolean17 != boolean18 )
                        {
                            BookReadRecord11.setFeedFat( boolean18 );
                            BookReadRecord11.save();
                            int4 = int16;
                            int13 = 1;
                            break label_101;
                        }
                    }
                    int4 = int16;
                    int13 = int5;
                }
                else
                    int13 = int5;
            }
            ++int10;
            int5 = int13;
        }
        if( int4 != 0 )
        {
            HomeShelfFragment1.k();
            com.clilystudio.netbook.util.e.a( (Activity) HomeShelfFragment1.getActivity(), 2131034465 );
        }
        else if( int5 != 0 )
            HomeShelfFragment1.k();
        else
        {
            HomeShelfFragment1.j.notifyDataSetChanged();
            com.clilystudio.netbook.util.e.a( (Activity) HomeShelfFragment1.getActivity(), 2131034466 );
        }
    }

    static void a(HomeShelfFragment HomeShelfFragment1, List List2, boolean boolean3)
    {
        Iterator Iterator4 = List2.iterator();

        while( Iterator4.hasNext() )
        {
            BookShelf BookShelf5 = (BookShelf) Iterator4.next();

            if( BookShelf5.getBookRecord() != null )
            {
                BookReadRecord BookReadRecord6 = BookShelf5.getBookRecord();
                String String7 = BookReadRecord6.getBookId();

                BookReadRecord.delete( BookReadRecord6 );
                com.clilystudio.netbook.hpay100.a.a.t( String7 );
                if( boolean3 )
                    HomeShelfFragment1.b( String7 );
                HomeShelfFragment1.a( String7, BookReadRecord6.getTitle(), BookReadRecord6.isRecommended() );
                com.clilystudio.netbook.hpay100.a.a.v( BookShelf5.getBookRecord().getBookId() );
            }
            else if( BookShelf5.getTxt() != null )
                HomeShelfFragment1.a( BookShelf5.getTxt() );
            else if( BookShelf5.getType() == 1 )
                HomeShelfFragment1.a( BookShelf5.getAdIndex() );
            else
            {
                if( BookShelf5.getType() != 4 )
                    continue;
                BookShelf5.getAlbum().delete();
                HomeShelfFragment1.k();
            }
        }
        HomeShelfFragment1.k();
        com.clilystudio.netbook.event.i.a().c( new BookShelfRefreshEvent() );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, boolean boolean2)
    {
        HomeShelfFragment1.a( boolean2 );
    }

    static void a(HomeShelfFragment HomeShelfFragment1, CharSequence[] CharSequence_1darray2, BookShelf BookShelf3)
    {
        if( CharSequence_1darray2 != null && BookShelf3 != null )
        {
            uk.me.lewisdeane.ldialogs.h h4 = new uk.me.lewisdeane.ldialogs.h( (Context) HomeShelfFragment1.getActivity() );

            h4.d = BookShelf3.getTitle();
            h4.a( CharSequence_1darray2, (DialogInterface$OnClickListener) new r( HomeShelfFragment1, BookShelf3 ) ).b();
        }
    }

    private void a(Track Track1)
    {
        SubordinatedAlbum SubordinatedAlbum2 = Track1.getAlbum();

        if( SubordinatedAlbum2 != null )
        {
            com.clilystudio.netbook.util.e.a( SubordinatedAlbum2.getAlbumTitle() );
            n.setText( (CharSequence) SubordinatedAlbum2.getAlbumTitle() );
        }
        else
        {
            com.clilystudio.netbook.util.e.a( Track1.getTrackTitle() );
            n.setText( (CharSequence) Track1.getTrackTitle() );
        }
        if( TextUtils.isEmpty( (CharSequence) Track1.getCoverUrlSmall() ) )
            m.setImageResource( 2130837767 );
        else
            m.setImageUrl( Track1.getCoverUrlSmall() );
    }

    private void a(String String1)
    {
        k();
        com.clilystudio.netbook.hpay100.a.a.t( String1 );
        com.clilystudio.netbook.event.i.a().c( new BookShelfRefreshEvent() );
        com.clilystudio.netbook.hpay100.a.a.v( String1 );
    }

    private void a(String String1, String String2, boolean boolean3)
    {
        if( boolean3 )
            com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "book_recommend_delete_click", String2 );
        com.a.a.a.b( (Context) getActivity(), String1, com.clilystudio.netbook.hpay100.a.a.p( (Context) getActivity() ) );
    }

    private void a(List List1)
    {
        if( !List1.isEmpty() && am.q( (Context) getActivity() ) )
        {
            c( List1, 0 );
            if( com.clilystudio.netbook.hpay100.a.a.F( (Context) getActivity() ) )
            {
                com.clilystudio.netbook.util.c.a().c();
                c( List1, 4 );
            }
        }
    }

    private void a(List List1, int int2, Advert Advert3)
    {
        String String5;

        if( b( List1, int2 ) )
        {
            BookShelf BookShelf6 = (BookShelf) List1.get( int2 );

            BookShelf6.setAdvert( Advert3 );
            BookShelf6.setAdIndex( int2 );
            j.notifyDataSetChanged();
        }
        else if( a( List1, int2 ) )
        {
            Object Object4 = new BookShelf();

            ((BookShelf) Object4).setAdvert( Advert3 );
            ((BookShelf) Object4).setAdIndex( int2 );
            List1.add( int2, Object4 );
            j.notifyDataSetChanged();
        }
        if( int2 > 0 )
            String5 = "shelf_five";
        else
            String5 = "shelf_top";
        Advert3.setPosition( String5 );
        Advert3.recordShow( (Context) getActivity() );
    }

    private void a(List List1, List List2)
    {
        BookFeed BookFeed3 = new BookFeed();
        List List4 = BookReadRecord.getAllFeedFat();
        Iterator Iterator5 = List2.iterator();
        long long6 = 0L;
        Object Object10;

        while( Iterator5.hasNext() )
        {
            BookReadRecord BookReadRecord14 = (BookReadRecord) Iterator5.next();
            long long15;

label_37:
            {
                if( BookReadRecord14.lastActionTime != 0L )
                {
                    long15 = BookReadRecord14.lastActionTime;
                    if( long6 == 0L )
                    {
                        long6 = long15;
                        continue;
                    }
                    else if( long6 < long15 )
                        break label_37;
                }
                long15 = long6;
            }
            long6 = long15;
        }
        if( List4.isEmpty() )
        {
            String String12;
            Object[] Object_1darray13;

            BookFeed3.setFat( false );
            String12 = getString( 2131034505 );
            Object_1darray13 = new Object[1];
            Object_1darray13[0] = Integer.valueOf( List2.size() );
            BookFeed3.setTitle( String.format( String12, Object_1darray13 ) );
        }
        else
        {
            String String8;
            Object[] Object_1darray9;

            BookFeed3.setFat( true );
            String8 = getString( 2131034504 );
            Object_1darray9 = new Object[1];
            Object_1darray9[0] = ((BookReadRecord) List4.get( 0 )).getTitle();
            BookFeed3.setTitle( String.format( String8, Object_1darray9 ) );
        }
        Object10 = new BookShelf();
        ((BookShelf) Object10).setBookFeed( BookFeed3 );
        BookFeed3.setLastActionTime( long6 );
        List1.add( Object10 );
    }

    private void a(boolean boolean1)
    {
        if( boolean1 )
            p.setImageResource( 2130837584 );
        else
            p.setImageResource( 2130837925 );
    }

    private static boolean a(Context Context1, int int2)
    {
        long long3 = com.clilystudio.netbook.hpay100.a.a.a( Context1, new StringBuilder( "DELETE_SHELF_AD_KEY" ).append( int2 ).toString(), 0L );

        if( new Date().getTime() - long3 > 86400000L )
            return true;
        else
            return false;
    }

    private static boolean a(List List1, int int2)
    {
        if( int2 >= List1.size() )
            return false;
        else if( int2 == 0 && !List1.isEmpty() && ((BookShelf) List1.get( 0 )).getType() != 1 )
            return true;
        else if( int2 > 0 && List1.size() >= 5 && ((BookShelf) List1.get( 0 )).getType() == 1 && ((BookShelf) List1.get( 4 )).getType() != 1 )
            return true;
        else if( int2 > 0 && List1.size() >= 4 && ((BookShelf) List1.get( 0 )).getType() != 1 && ((BookShelf) List1.get( 4 )).getType() != 1 )
            return true;
        else
            return false;
    }

    private static int b(List List1)
    {
        int int2 = 0;
        List List3 = TxtFileObject.getTxtFiles();

        if( List3 == null || List3.isEmpty() )
            return 0;
        else
        {
            Object Object4 = new ArrayList();
            Object Object5 = new ArrayList();
            Iterator Iterator6 = List3.iterator();
            Iterator Iterator7;
            Iterator Iterator8;

            while( Iterator6.hasNext() )
            {
                BookFile BookFile19 = (BookFile) Iterator6.next();
                Object Object20 = new BookShelf();

                ((BookShelf) Object20).setTxt( BookFile19 );
                if( BookFile19.isTop() )
                    ((List) Object5).add( Object20 );
                else
                    ((List) Object4).add( Object20 );
            }
            Iterator7 = ((List) Object4).iterator();
            while( Iterator7.hasNext() )
            {
                Object Object11 = (BookShelf) Iterator7.next();
                Date Date12 = ((BookShelf) Object11).getTxt().getUpdated();

                if( Date12 == null )
                    List1.add( Object11 );
                else
                {
                    int int13 = 0;
                    int int14;

label_109:
                    {
                        while( int13 < List1.size() )
                        {
                            BookShelf BookShelf16 = (BookShelf) List1.get( int13 );
                            BookReadRecord BookReadRecord17 = BookShelf16.getBookRecord();

                            if( BookReadRecord17 != null && !BookReadRecord17.isTop() && (BookShelf16.getType() == 0 || BookShelf16.getType() == 2) && Date12.getTime() > BookReadRecord17.getUpdated().getTime() )
                            {
                                List1.add( int13, Object11 );
                                int14 = 1;
                                break label_109;
                            }
                            else
                                ++int13;
                        }
                        int14 = 0;
                    }
                    if( int14 != 0 )
                        continue;
                    List1.add( Object11 );
                }
            }
            Iterator8 = List1.iterator();
            while( Iterator8.hasNext() )
            {
                BookShelf BookShelf10 = (BookShelf) Iterator8.next();

                if( BookShelf10.getType() != 0 )
                    continue;
                if( !BookShelf10.isTop() )
                    break;
                ++int2;
            }
            List1.addAll( int2, (Collection) Object5 );
            return List1.size();
        }
    }

    public static HomeShelfFragment b()
    {
        return new HomeShelfFragment();
    }

    private void b(int int1)
    {
        switch( int1 )
        {
            case 2:
            default:
                return;
            case 1:
                f.setVisibility( 8 );
                e.setVisibility( 0 );
                return;
            case 3:
                f.setVisibility( 0 );
                e.setVisibility( 8 );
                return;
        }
    }

    static void b(HomeShelfFragment HomeShelfFragment1)
    {
        if( as.c() )
            as.h();
        else
            HomeShelfFragment1.u.d();
    }

    static void b(HomeShelfFragment HomeShelfFragment1, int int2)
    {
        HomeShelfFragment1.b( 3 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void b(HomeShelfFragment HomeShelfFragment1, AudioRecord AudioRecord2)
    {
    }

    static void b(HomeShelfFragment HomeShelfFragment1, BookReadRecord BookReadRecord2)
    {
        if( BookReadRecord2 != null )
        {
            long long3 = System.currentTimeMillis();

            com.clilystudio.netbook.hpay100.a.a.d( (Context) HomeShelfFragment1.getActivity(), "FeedUpdateTime", long3 );
            BookReadRecord2.setFeeding( true );
            BookReadRecord2.setChapterCountAtFeed( BookReadRecord2.getChapterCount() );
            BookReadRecord2.setLastActionTime( new Date().getTime() );
            BookReadRecord2.save();
            HomeShelfFragment1.a( BookReadRecord2, true );
            if( com.clilystudio.netbook.hpay100.a.a.a( (Context) HomeShelfFragment1.getActivity(), "feed_intro_dialog", true ) )
            {
                FragmentActivity FragmentActivity6 = HomeShelfFragment1.getActivity();

                if( FragmentActivity6 != null )
                {
                    FragmentManager FragmentManager7 = FragmentActivity6.getSupportFragmentManager();
                    FragmentTransaction FragmentTransaction8 = FragmentManager7.beginTransaction();
                    Fragment Fragment9 = FragmentManager7.findFragmentByTag( "dialog_feed_intro" );

                    if( Fragment9 != null )
                        FragmentTransaction8.remove( Fragment9 );
                    new DialogUtil$FeedIntroDialog().show( FragmentTransaction8, "dialog_feed_intro" );
                }
                com.clilystudio.netbook.hpay100.a.a.b( (Context) HomeShelfFragment1.getActivity(), "feed_intro_dialog", false );
            }
        }
    }

    static void b(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2)
    {
        boolean boolean3 = true;

        if( BookShelf2.getTxt() != null )
        {
            BookFile BookFile8 = BookShelf2.getTxt();

            if( BookFile8.isTop() )
                boolean3 = false;
            BookFile8.setTop( boolean3 );
            BookFile8.save();
        }
        else if( BookShelf2.getBookRecord() != null )
        {
            BookReadRecord BookReadRecord6 = BookShelf2.getBookRecord();

            if( BookReadRecord6.isTop() )
                boolean3 = false;
            BookReadRecord6.setTop( boolean3 );
            BookReadRecord6.save();
        }
        else if( BookShelf2.getAlbum() != null )
        {
            AudioRecord AudioRecord4 = BookShelf2.getAlbum();

            if( AudioRecord4.isTop() )
                boolean3 = false;
            AudioRecord4.setTop( boolean3 );
            AudioRecord4.save();
        }
        HomeShelfFragment1.k();
    }

    static void b(HomeShelfFragment HomeShelfFragment1, ShelfMsg ShelfMsg2)
    {
        List List3 = HomeShelfFragment1.j.f();

        if( List3 != null && !List3.isEmpty() )
        {
            if( !android.support.design.widget.am.r( (Context) HomeShelfFragment1.getActivity() ) && ShelfMsg2 != null && ShelfMsg2.postLink != null && (ShelfMsg2.postLink.startsWith( "link" ) || ShelfMsg2.postLink.startsWith( "game" )) )
                HomeShelfFragment1.e.removeHeaderView( HomeShelfFragment1.g );
            else
            {
                TextView TextView5;
                InsideLink InsideLink7;

                HomeShelfFragment1.e.removeHeaderView( HomeShelfFragment1.g );
                HomeShelfFragment1.e.addHeaderView( HomeShelfFragment1.g );
                HomeShelfFragment1.g.setVisibility( 0 );
                TextView5 = (TextView) HomeShelfFragment1.g.findViewById( 2131492936 );
                new com.clilystudio.netbook.util.a.a();
                InsideLink7 = com.clilystudio.netbook.util.a.a.a( ShelfMsg2.postLink );
                TextView5.setText( (CharSequence) InsideLink7.getLabel() );
                if( ShelfMsg2.highlight )
                    TextView5.setTextColor( HomeShelfFragment1.getActivity().getResources().getColor( 2131427522 ) );
                else
                    TextView5.setTextColor( HomeShelfFragment1.getActivity().getResources().getColor( 2131427523 ) );
                new UmengGameTracer( (Context) HomeShelfFragment1.getActivity(), UmengGameTracer$From.Notification ).a( ShelfMsg2._id );
                TextView5.setOnClickListener( (View$OnClickListener) new w( HomeShelfFragment1, ShelfMsg2, InsideLink7 ) );
            }
        }
    }

    private void b(String String1)
    {
        new v( this, String1 ).start();
    }

    private static boolean b(List List1, int int2)
    {
        if( int2 >= List1.size() )
            return false;
        else if( int2 == 0 && !List1.isEmpty() && ((BookShelf) List1.get( 0 )).getType() == 1 )
            return true;
        else if( int2 > 0 && List1.size() >= 5 && ((BookShelf) List1.get( 0 )).getType() == 1 && ((BookShelf) List1.get( 4 )).getType() == 1 )
            return true;
        else if( int2 > 0 && List1.size() >= 4 && ((BookShelf) List1.get( 0 )).getType() != 1 && ((BookShelf) List1.get( 4 )).getType() == 1 )
            return true;
        else
            return false;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void c(HomeShelfFragment HomeShelfFragment1)
    {
    }

    static void c(HomeShelfFragment HomeShelfFragment1, BookReadRecord BookReadRecord2)
    {
        new com.clilystudio.netbook.reader.dl.a( (Activity) HomeShelfFragment1.getActivity() ).a( BookReadRecord2 );
    }

    static void c(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2)
    {
        View View3 = HomeShelfFragment1.getActivity().getLayoutInflater().inflate( 2130903380, null, false );
        CheckBox CheckBox4 = (CheckBox) View3.findViewById( 2131493973 );
        int int5 = BookShelf2.getType();
        int int6 = 0;

        if( int5 != 0 )
            int6 = 8;
        CheckBox4.setVisibility( int6 );
        new uk.me.lewisdeane.ldialogs.h( (Context) HomeShelfFragment1.getActivity() ).a( View3 ).a( "\u786E\u5B9A", (DialogInterface$OnClickListener) new s( HomeShelfFragment1, BookShelf2, CheckBox4 ) ).b( "\u53D6\u6D88", null ).a().show();
    }

    private void c(List List1, int int2)
    {
        String String3;
        String String4;
        Advert Advert5;

        if( int2 == 0 )
            String3 = "top";
        else
            String3 = "bookshelf";
        if( int2 == 0 )
            String4 = "rate_zssq_advert_bookshelf_top";
        else
            String4 = "rate_zssq_advert_bookshelf_five";
        Advert5 = com.clilystudio.netbook.util.c.a().a( String3 );
        if( Advert5 != null && a( (Context) getActivity(), int2 ) && com.clilystudio.netbook.hpay100.a.a.w( (Context) getActivity(), String4 ) )
        {
            if( getActivity() != null )
                new UmengGameTracer( (Context) getActivity(), UmengGameTracer$From.Bookshelf ).a( Advert5.get_id() );
            Advert5.setType( "promotion" );
            a( List1, int2, Advert5 );
        }
        else if( com.clilystudio.netbook.hpay100.a.a.A( (Context) getActivity() ) && com.clilystudio.netbook.hpay100.a.a.t( (Context) getActivity() ) )
        {
            int int7;

            getActivity();
            if( com.clilystudio.netbook.util.adutil.k.c() || com.clilystudio.netbook.util.adutil.k.b() )
                int7 = 1;
            else
                int7 = 0;
            if( int7 != 0 && a( (Context) getActivity(), int2 ) )
            {
                new com.clilystudio.netbook.util.adutil.n().a( (Context) getActivity(), String3 );
                return;
            }
        }
    }

    static as d(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.u;
    }

    static void e(HomeShelfFragment HomeShelfFragment1)
    {
        if( am.q( (Context) HomeShelfFragment1.getActivity() ) )
            new H( HomeShelfFragment1, (byte) 0 ).b( new Void[0] );
    }

    static String f()
    {
        return a;
    }

    static void f(HomeShelfFragment HomeShelfFragment1)
    {
        if( !HomeShelfFragment1.b )
            HomeShelfFragment1.k();
        new K( HomeShelfFragment1, (byte) 0 ).b( new Void[0] );
        if( AudioRecord.findAll().size() > 0 )
        {
            List List3 = AudioRecord.findAll();
            StringBuilder StringBuilder4 = new StringBuilder();
            int int5;
            Object Object7;

            for( int5 = 0; int5 < List3.size(); ++int5 )
            {
                StringBuilder4.append( ((AudioRecord) List3.get( int5 )).getBookId() );
                StringBuilder4.append( "," );
            }
            StringBuilder4.deleteCharAt( -1 + StringBuilder4.length() );
            Object7 = new HashMap();
            ((Map) Object7).put( "ids", StringBuilder4.toString() );
            CommonRequest.getBatch( (Map) Object7, (IDataCallBack) new o( HomeShelfFragment1 ) );
        }
    }

    private void g()
    {
        l.setVisibility( 0 );
        e.removeFooterView( h );
        e.addFooterView( h );
    }

    static void g(HomeShelfFragment HomeShelfFragment1)
    {
        if( HomeShelfFragment1.d != null )
            HomeShelfFragment1.d.n();
    }

    private void h()
    {
        g();
        a( true );
        a( (Track) as.e() );
    }

    static void h(HomeShelfFragment HomeShelfFragment1)
    {
        HomeShelfFragment1.i();
    }

    static int i(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.v;
    }

    private void i()
    {
        long long1 = new Date().getTime();

        if( long1 - B < 500L )
            B = long1;
        else
        {
            List List4;

            B = long1;
            try
            {
                List List6 = j();
            }
            catch( Exception Exception3 )
            {
                if( Exception3.getMessage() != null && Exception3.getMessage().contains( (CharSequence) "not attached to Activity" ) )
                {
                    com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "zhuishu_catch_exception", "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity" );
                    List4 = null;
                }
                else
                {
                    com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "zhuishu_catch_exception", new StringBuilder( "HomeShelfFragment_loadShelf:" ).append( Exception3.getMessage() ).toString() );
                    List4 = null;
                }
            }
            if( List4 != null )
            {
                j.a( List4 );
                if( List4 != null && !List4.isEmpty() )
                {
                    b( 1 );
                    if( b )
                        d.setRefreshing();
                    b = false;
                    new J( this, (byte) 0 ).b( new Void[0] );
                }
                else
                {
                    if( am.p( (Context) getActivity() ) )
                    {
                        if( !android.support.design.widget.am.g() && !A )
                        {
                            com.clilystudio.netbook.hpay100.a.a.a( getActivity() );
                            return;
                        }
                        else
                            z = true;
                    }
                    b( 3 );
                }
            }
            else
                com.clilystudio.netbook.util.e.a( (Activity) getActivity(), "\u8F7D\u5165\u4E66\u67B6\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5" );
        }
    }

    static ListView j(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.e;
    }

    private List j()
    {
        Object Object1 = new ArrayList();
        int int2 = com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), "key_shelf_sort", 1 );
        List List3;
        List List4;
        int int5;
        long long6;
        Iterator Iterator8;
        int int9;
        String String10;
        int int11;
        Iterator Iterator12;

        if( int2 == 0 )
            List3 = BookReadRecord.getAllWithTopNoFeed();
        else
            List3 = BookReadRecord.getAllWithTopNoFeedByRead();
        List4 = BookReadRecord.getAllFeeding();
        if( !List4.isEmpty() )
            int5 = 1;
        else
            int5 = 0;
        long6 = 0L;
        if( int5 != 0 )
            long6 = com.clilystudio.netbook.hpay100.a.a.c( (Context) getActivity(), "FeedUpdateTime", System.currentTimeMillis() );
        Iterator8 = List3.iterator();
        int9 = 0;
        while( Iterator8.hasNext() )
        {
            BookReadRecord BookReadRecord24 = (BookReadRecord) Iterator8.next();
            long long25 = BookReadRecord24.getUpdated().getTime();
            Object Object27;

            if( int9 == 0 && int5 != 0 && long6 >= long25 )
            {
                a( (List) Object1, List4 );
                int9 = 1;
            }
            Object27 = new BookShelf();
            ((BookShelf) Object27).setBookRecord( BookReadRecord24 );
            if( BookReadRecord24.readTime != null )
                ((BookShelf) Object27).setLastRead( BookReadRecord24.readTime.getTime() );
            if( BookReadRecord24.getUpdated() != null )
                ((BookShelf) Object27).setLastUpdate( BookReadRecord24.getUpdated().getTime() );
            ((List) Object1).add( Object27 );
        }
        v = b( (List) Object1 );
        if( int9 == 0 && int5 != 0 )
            a( (List) Object1, List4 );
        String10 = com.clilystudio.netbook.umeng.a.b.b( (Context) getActivity(), "delete_audio_on_shelf" );
        if( String10 != null && "1".equals( String10 ) )
            int11 = 1;
        else
            int11 = 0;
        Iterator12 = AudioRecord.findAll().iterator();
        while( Iterator12.hasNext() )
        {
            AudioRecord AudioRecord21 = (AudioRecord) Iterator12.next();

            if( int11 != 0 )
            {
                AudioRecord21.delete();
                k();
            }
            else
            {
                Object Object22 = new BookShelf();

                ((BookShelf) Object22).setAlbum( AudioRecord21 );
                ((BookShelf) Object22).setLastRead( AudioRecord21.getLastRead() );
                ((BookShelf) Object22).setLastUpdate( AudioRecord21.getLastUpdate() );
                if( ((BookShelf) Object22).isTop() )
                    ((List) Object1).add( 0, Object22 );
                else
                    ((List) Object1).add( Object22 );
            }
        }
        try
        {
            Collections.sort( (List) Object1, (Comparator) new G( this, int2 ) );
        }
        catch( Exception Exception13 )
        {
            com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "zhuishu_catch_exception", new StringBuilder( "HomeShelfFragment_createShelf:" ).append( Exception13.getMessage() ).toString() );
        }
label_244:
        {
            try
            {
                String[] String_1darray17;

                if( com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), "unsync_bookrecord_first", false ) )
                    break label_244;
                String_1darray17 = new String[List3.size()];
            }
            catch( Exception Exception14 )
            {
                com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "zhuishu_catch_exception", new StringBuilder( "HomeShelfFragment_createShelf:" ).append( Exception14.getMessage() ).toString() );
                if( Exception14.getMessage().contains( (CharSequence) "no such table: BookSyncRecord" ) )
                {
                    try
                    {
                        new SQLiteUtils();
                        SQLiteUtils.execSql( "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);" );
                    }
                    catch( Exception Exception16 )
                    {
                        com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "zhuishu_catch_exception", new StringBuilder( "HomeShelfFragment_createTableBookSyncRecord:" ).append( Exception14.getMessage() ).toString() );
                    }
                }
            }
        }
        a( (List) Object1 );
        return (List) Object1;
    }

    private void k()
    {
        if( getActivity() != null )
            i();
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void k(HomeShelfFragment HomeShelfFragment1)
    {
    }

    static void l(HomeShelfFragment HomeShelfFragment1)
    {
        HomeShelfFragment1.k();
    }

    static View m(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.g;
    }

    static ShelfMsg n(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.i;
    }

    static void o(HomeShelfFragment HomeShelfFragment1)
    {
        HomeShelfFragment1.h();
    }

    static TextView p(HomeShelfFragment HomeShelfFragment1)
    {
        return HomeShelfFragment1.o;
    }

    public final String a()
    {
        return "home_shelf";
    }

    public final boolean c()
    {
        return j.a();
    }

    public final void d()
    {
        com.clilystudio.netbook.umeng.a.b.a( (Context) getActivity(), "home_shelf_bulk_operation" );
        if( r != null )
            l.setVisibility( 8 );
        e.removeHeaderView( g );
        w.setVisibility( 0 );
        e.removeFooterView( h );
        e.addFooterView( h );
        d.setPullToRefreshEnabled( false );
        d.setPullToRefreshOverScrollEnabled( false );
        e.setOnItemLongClickListener( null );
        j.b();
    }

    public final void e()
    {
        if( r != null )
            l.setVisibility( 0 );
        if( am.r( (Context) getActivity() ) || g != null && i != null && i.postLink != null && (!i.postLink.startsWith( "link" ) || i.postLink.startsWith( "game" )) )
        {
            e.removeHeaderView( g );
            e.addHeaderView( g );
        }
        w.setVisibility( 8 );
        e.removeFooterView( h );
        d.setPullToRefreshEnabled( true );
        d.setPullToRefreshOverScrollEnabled( true );
        e.setOnItemLongClickListener( D );
        j.c();
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
    }

    public void onAudioBookExitEvent(com.clilystudio.netbook.event.b b1)
    {
        a( false );
        l.setVisibility( 8 );
        e.removeFooterView( h );
        r = null;
    }

    public void onBookAdded(com.clilystudio.netbook.event.c c1)
    {
        Object Object2;
        String String3;
        Object Object4;

        if( c1.a() )
            k();
        com.clilystudio.netbook.hpay100.a.a.r( c1.b() );
        Object2 = getActivity();
        String3 = c1.b();
        Object4 = new HashMap();
        ((Map) Object4).put( "uid", com.clilystudio.netbook.util.e.c( (Context) Object2 ) );
        com.a.a.a.a( (Context) Object2, String3, 0.0, 1, (Map) Object4 );
    }

    public void onBookRead(com.clilystudio.netbook.event.g g1)
    {
        k();
    }

    public void onBookRemoved(com.clilystudio.netbook.event.h h1)
    {
        a( h1.b() );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        com.clilystudio.netbook.event.i.a().a( this );
        if( q == null )
            q = as.b();
        as.a( E );
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3)
    {
        View View6;

        Log.i( a, "HomeShelfFragment onCreateView" );
        c = LayoutInflater1.inflate( 2130903213, ViewGroup2, false );
        d = (PullToRefreshListView) c.findViewById( 2131493440 );
        e = (ListView) d.h();
        d.setOnScrollListener( this );
        f = c.findViewById( 2131493361 );
        h = LayoutInflater.from( (Context) getActivity() ).inflate( 2130903256, (ViewGroup) e, false );
        c.findViewById( 2131493362 ).setOnClickListener( (View$OnClickListener) new n( this ) );
        w = (RelativeLayout) c.findViewById( 2131493442 );
        w.setOnTouchListener( (View$OnTouchListener) new y( this ) );
        x = (Button) w.findViewById( 2131492907 );
        y = (Button) w.findViewById( 2131493990 );
        y.setOnClickListener( (View$OnClickListener) new z( this ) );
        x.setOnClickListener( (View$OnClickListener) new A( this ) );
        d.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new E( this ) );
        if( com.clilystudio.netbook.hpay100.a.a.i() )
            e.setFooterDividersEnabled( false );
        View6 = LayoutInflater.from( (Context) getActivity() ).inflate( 2130903354, null );
        e.addFooterView( View6 );
        com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), e );
        g = LayoutInflater.from( (Context) getActivity() ).inflate( 2130903168, (ViewGroup) e, false );
        g.setVisibility( 8 );
        if( am.r( (Context) getActivity() ) )
            e.addHeaderView( g );
        j = new HomeShelfAdapter( (Activity) getActivity() );
        e.setAdapter( (ListAdapter) j );
        e.setOnItemClickListener( C );
        e.setOnItemLongClickListener( D );
        j.a( x, y );
        i();
        e.getHeight();
        Log.i( a, new StringBuilder().append( e.getHeight() ).append( " ," ).append( e.getMeasuredHeight() ).toString() );
        l = (RelativeLayout) c.findViewById( 2131493441 );
        m = (CoverLoadingView) l.findViewById( 2131493604 );
        n = (TextView) l.findViewById( 2131493605 );
        o = (TextView) l.findViewById( 2131493606 );
        p = (ImageView) l.findViewById( 2131493607 );
        p.setOnClickListener( (View$OnClickListener) new B( this ) );
        if( as.c() )
            h();
        l.setOnClickListener( (View$OnClickListener) new C( this ) );
        return c;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if( E != null )
        {
            as.b( E );
            E = null;
        }
        com.clilystudio.netbook.event.i.a().b( this );
    }

    public void onDownloadProgress(com.clilystudio.netbook.event.I I1)
    {
        if( k == 0 )
            j.notifyDataSetChanged();
    }

    public void onFeedAdded(com.clilystudio.netbook.event.l l1)
    {
        a( l1.b(), l1.a() );
    }

    public void onFeedRemoved(com.clilystudio.netbook.event.n n1)
    {
        k();
        com.clilystudio.netbook.hpay100.a.a.r( n1.b() );
        com.clilystudio.netbook.hpay100.a.a.x( n1.b() );
    }

    public void onFeedSettingChanged(com.clilystudio.netbook.event.m m1)
    {
        d.setRefreshing();
    }

    public void onFocusBookEvent(com.clilystudio.netbook.event.p p1)
    {
        if( p1.a() )
        {
            AudioRecord AudioRecord2 = p1.b();

            AudioRecord2.setUpdateReaded( false );
            AudioRecord2.setLastRead( new Date().getTime() );
            AudioRecord2.save();
        }
        else
            AudioRecord.cancelFollow( p1.b().getBookId() );
        i();
    }

    public void onGenderIntroEvent(com.clilystudio.netbook.event.r r1)
    {
        int int2 = r1.a();

        System.out.println( new StringBuilder( "type : " ).append( int2 ).toString() );
        if( int2 == 0 )
            b( 3 );
        else if( int2 == 1 )
        {
            new I( this, (Activity) getActivity() ).b( new String[] { "male" } );
            return;
        }
        else if( int2 == 2 )
        {
            new I( this, (Activity) getActivity() ).b( new String[] { "female" } );
            return;
        }
    }

    public void onHideAdEvent(com.clilystudio.netbook.event.s s1)
    {
        k();
        if( !android.support.design.widget.am.r( (Context) getActivity() ) && g != null && i != null && i.postLink != null && (i.postLink.startsWith( "link" ) || i.postLink.startsWith( "game" )) )
            e.removeHeaderView( g );
    }

    public void onPause()
    {
        super.onPause();
        if( j.a() )
            e();
        com.clilystudio.netbook.util.c.a().c();
    }

    public void onResume()
    {
        super.onResume();
        if( !com.clilystudio.netbook.hpay100.a.a.A( (Context) getActivity() ) )
        {
            List List1 = j.f();

            if( List1 != null && !List1.isEmpty() )
            {
                Advert Advert2 = com.clilystudio.netbook.util.c.a().a( "top" );

                if( Advert2 == null || !a( (Context) getActivity(), 0 ) )
                    com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), null );
                else
                {
                    BookShelf BookShelf3 = (BookShelf) List1.get( 0 );

                    if( BookShelf3.getAdvert() == null )
                        a( List1, 0, Advert2 );
                    else if( !Advert2.equals( BookShelf3.getAdvert() ) )
                    {
                        Advert2.setPosition( "shelf_top" );
                        BookShelf3.setAdvert( Advert2 );
                    }
                    j.notifyDataSetChanged();
                    com.clilystudio.netbook.hpay100.a.a.a( (Context) getActivity(), Advert2 );
                }
            }
        }
        A = false;
    }

    public void onSaveInstanceState(Bundle Bundle1)
    {
        super.onSaveInstanceState( Bundle1 );
        A = true;
    }

    public void onScroll(AbsListView AbsListView1, int int2, int int3, int int4)
    {
    }

    public void onScrollStateChanged(AbsListView AbsListView1, int int2)
    {
        k = int2;
    }

    public void onShelfUpdated(com.clilystudio.netbook.event.A A1)
    {
        if( A1.a() == 0 && z && am.p( (Context) getActivity() ) )
        {
            if( !A )
                com.clilystudio.netbook.hpay100.a.a.a( getActivity() );
        }
        else
            k();
    }

    public void onShowThirdAd(com.clilystudio.netbook.event.B B1)
    {
        if( getActivity() != null && !getActivity().isFinishing() && B1 != null && am.q( (Context) getActivity() ) && (B1.b().equals( "top" ) || B1.b().equals( "bookshelf" )) )
        {
            List List2 = j.f();

            if( List2 != null && !List2.isEmpty() )
            {
                Advert Advert3 = B1.a();

                if( Advert3 != null )
                {
                    int int4;
                    String String5;

                    if( B1.b().equals( "top" ) )
                        int4 = 0;
                    else
                        int4 = 4;
                    Advert3.setType( "promotion" );
                    if( int4 == 0 )
                        String5 = "shelf_top";
                    else
                        String5 = "shelf_five";
                    Advert3.setPosition( String5 );
                    if( a( List2, int4 ) )
                    {
                        a( List2, int4, Advert3 );
                        j.notifyDataSetChanged();
                        return;
                    }
                    else if( b( List2, int4 ) )
                    {
                        ((BookShelf) List2.get( int4 )).setAdvert( Advert3 );
                        j.notifyDataSetChanged();
                        return;
                    }
                }
            }
        }
    }

    public void onUpdateAlbum(com.clilystudio.netbook.event.F F1)
    {
        long long3;

        i();
        Log.i( a, F1.toString() );
        long3 = F1.a();
        if( r == null )
            r = new Album();
        r.setId( long3 );
        s = F1.b();
    }

    public void setUserVisibleHint(boolean boolean1)
    {
        super.setUserVisibleHint( boolean1 );
        if( !boolean1 )
        {
            if( j.a() )
                e();
        }
        else if( j != null && j.f() != null )
        {
            a( j.f() );
            return;
        }
    }
}
