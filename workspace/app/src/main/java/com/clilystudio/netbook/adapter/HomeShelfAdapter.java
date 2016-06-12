
package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.TextView;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.y;
import java.util.ArrayList;
import java.util.List;

public class HomeShelfAdapter extends u {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public HomeShelfAdapter(Activity Activity1)
    {
        b = (Context) Activity1;
        c = LayoutInflater.from( b );
        e = (List) new ArrayList();
    }

    public static boolean a;
    private Context b;
    private LayoutInflater c;
    private List e;
    private boolean[] f;
    private Button h;
    private Button i;
    private boolean d = false;
    private boolean g = false;

    private void a(int int1, CheckBox CheckBox2)
    {
        if( d )
            CheckBox2.setVisibility( 0 );
        else
            CheckBox2.setVisibility( 8 );
        g = true;
        if( f.length <= int1 )
        {
            boolean[] boolean_1darray3 = new boolean[int1 + 1];
            int int4;

            for( int4 = 0; int4 < f.length; ++int4 )
                boolean_1darray3[int4] = f[int4];
            f = boolean_1darray3;
        }
        CheckBox2.setChecked( f[int1] );
        b( int1 );
        g = false;
        CheckBox2.setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new q( this, int1 ) );
    }

    static void a(HomeShelfAdapter HomeShelfAdapter1, int int2)
    {
        HomeShelfAdapter1.b( int2 );
    }

    static boolean a(HomeShelfAdapter HomeShelfAdapter1)
    {
        return HomeShelfAdapter1.g;
    }

    private void b(int int1)
    {
        if( f[int1] )
        {
            if( !e.contains( getItem( int1 ) ) )
                e.add( getItem( int1 ) );
        }
        else
            e.remove( getItem( int1 ) );
        if( e.size() > 0 )
            h.setText( (CharSequence) new StringBuilder( "\u5220\u9664(" ).append( e.size() ).append( ")" ).toString() );
        else
            h.setText( (CharSequence) "\u5220\u9664" );
        if( e.size() == g() )
            i.setText( (CharSequence) "\u53D6\u6D88\u5168\u9009" );
        else
            i.setText( (CharSequence) "\u5168\u9009" );
    }

    static boolean[] b(HomeShelfAdapter HomeShelfAdapter1)
    {
        return HomeShelfAdapter1.f;
    }

    static Context c(HomeShelfAdapter HomeShelfAdapter1)
    {
        return HomeShelfAdapter1.b;
    }

    private int g()
    {
        int int1 = 0;
        int int2 = 0;

        while( int1 < f.length )
        {
            int int3 = getItemViewType( int1 );

            if( int3 == 0 || int3 == 2 || int3 == 4 )
                ++int2;
            ++int1;
        }
        return int2;
    }

    public final void a(int int1)
    {
        boolean[] boolean_1darray2 = f;
        byte byte3;

        if( !f[int1] )
            byte3 = (byte) 1;
        else
            byte3 = (byte) 0;
        boolean_1darray2[int1] = byte3;
        notifyDataSetChanged();
    }

    public final void a(Button Button1, Button Button2)
    {
        h = Button1;
        i = Button2;
    }

    public final void a(List List1)
    {
        super.a( List1 );
        f = new boolean[List1.size()];
    }

    public final volatile void a(Object[] Object_1darray1)
    {
        BookShelf[] BookShelf_1darray2 = (BookShelf[]) Object_1darray1;

        super.a( BookShelf_1darray2 );
        f = new boolean[BookShelf_1darray2.length];
    }

    public final boolean a()
    {
        return d;
    }

    public final void b()
    {
        d = true;
        notifyDataSetChanged();
    }

    public final void c()
    {
        int int1;

        d = false;
        for( int1 = 0; int1 < f.length; ++int1 )
            f[int1] = false;
        e.clear();
        notifyDataSetChanged();
    }

    public final void d()
    {
        boolean[] boolean_1darray1 = f;
        int int2 = boolean_1darray1.length;
        int int3 = 0;
        int int4;

        while( int3 < int2 )
        {
            if( !boolean_1darray1[int3] )
            {
                int int5 = 0;

                for( ;; )
                {
                    int int6 = f.length;
                    int int7 = 0;

                    if( int5 < int6 )
                    {
                        f[int5] = true;
                        ++int5;
                    }
                    else
                    {
                        while( int7 < f.length )
                        {
                            Object Object8 = (BookShelf) getItem( int7 );
                            int int9 = ((BookShelf) Object8).getType();

                            if( (int9 == 0 || int9 == 2 || int9 == 4) && !e.contains( Object8 ) )
                                e.add( Object8 );
                            ++int7;
                        }
                        notifyDataSetChanged();
                        return;
                    }
                }
            }
            else
            {
                ++int3;
                continue;
            }
        }
        for( int4 = 0; int4 < f.length; ++int4 )
            f[int4] = false;
        e.clear();
        notifyDataSetChanged();
    }

    public final List e()
    {
        return e;
    }

    public int getItemViewType(int int1)
    {
        return ((BookShelf) getItem( int1 )).getType();
    }

    public View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        BookShelf BookShelf4 = (BookShelf) getItem( int1 );
        int int5 = BookShelf4.getType();

        if( View2 == null )
        {
            switch( int5 )
            {
                case 1:
                    View2 = c.inflate( 2130903305, ViewGroup3, false );
                    break;
                case 0:
                    View2 = c.inflate( 2130903307, ViewGroup3, false );
                    break;
                case 2:
                    View2 = c.inflate( 2130903310, ViewGroup3, false );
                    break;
                case 3:
                    View2 = c.inflate( 2130903309, ViewGroup3, false );
                    break;
                case 4:
                    View2 = c.inflate( 2130903306, ViewGroup3, false );
                    break;
                default:
                    break;
            }
        }
        else if( d )
        {
            if( int5 == 1 || int5 == 3 )
                View2 = c.inflate( 2130903308, ViewGroup3, false );
        }
        else
        {
            switch( int5 )
            {
                case 1:
                    View2 = c.inflate( 2130903305, ViewGroup3, false );
                    break;
                case 3:
                    View2 = c.inflate( 2130903309, ViewGroup3, false );
                    break;
                case 2:
                default:
                    break;
            }
        }
        switch( int5 )
        {
            case 0:
                HomeShelfAdapter$BookHolder BookHolder19 = new HomeShelfAdapter$BookHolder( View2 );
                BookReadRecord BookReadRecord20 = BookShelf4.getBookRecord();
                int int21;
                int int22;
                int int23;
                String String24;

                BookHolder19.cover.setImageUrl( BookReadRecord20.getFullCover(), 2130837766 );
                BookHolder19.title.setText( (CharSequence) BookReadRecord20.getTitle() );
                BookHolder19.desc.setText( (CharSequence) BookReadRecord20.buildDesc() );
                if( BookReadRecord20.isUnread() && !d )
                    BookHolder19.flag.setType( 3 );
                else
                    BookHolder19.flag.setType( 0 );
                a( int1, BookHolder19.check );
                if( BookReadRecord20.isTop() )
                    int21 = 0;
                else
                    int21 = 8;
                BookHolder19.top.setVisibility( int21 );
                int22 = BookReadRecord20.getReadMode();
                int23 = 0;
                if( int22 != -1 )
                {
                    String String29 = BookReadRecord20.getDownloadedSource();
                    Object Object30 = com.clilystudio.netbook.hpay100.a.a.g( int22 );

                    int23 = 0;
                    if( String29 != null )
                    {
                        boolean boolean31 = String29.contains( (CharSequence) Object30 );

                        int23 = 0;
                        if( boolean31 )
                            int23 = 1;
                    }
                }
                String24 = BookReadRecord20.getBookId();
                if( !android.support.design.widget.am.h( String24 ) )
                {
                    if( int23 != 0 )
                        BookHolder19.coverLoadingLayer.f();
                    else
                        BookHolder19.coverLoadingLayer.c();
                }
                else
                {
                    BookDlRecord BookDlRecord25 = BookDlRecord.get( String24 );

                    if( BookDlRecord25 == null )
                        BookHolder19.coverLoadingLayer.c();
                    else
                    {
                        int int26 = BookDlRecord25.getProgress();
                        int int27 = BookDlRecord25.getTotal();
                        int int28;

                        if( int27 > 0 )
                            int26 = 5 + (int) (95.0F * (float) (int) (100.0F * ((float) int26 / (float) int27)) / 100.0F);
                        int28 = BookDlRecord25.getStatus();
                        if( int28 == 2 )
                            BookHolder19.coverLoadingLayer.setProgress( int26 );
                        else if( int28 == 3 )
                            BookHolder19.coverLoadingLayer.b();
                        else if( int28 == 1 )
                            BookHolder19.coverLoadingLayer.d();
                        else if( int28 == 5 )
                            BookHolder19.coverLoadingLayer.e();
                        else if( !BookHolder19.coverLoadingLayer.g() )
                            BookHolder19.coverLoadingLayer.c();
                        BookHolder19.coverLoadingLayer.setCoverListener( (y) new r( this, String24 ) );
                    }
                }
                return View2;
            case 1:
                if( !d )
                {
                    HomeShelfAdapter$AdHolder AdHolder17 = new HomeShelfAdapter$AdHolder( View2 );
                    Advert Advert18 = BookShelf4.getAdvert();

                    AdHolder17.title.setText( (CharSequence) Advert18.getTitle() );
                    AdHolder17.desc.setText( (CharSequence) Advert18.getDesc() );
                    AdHolder17.flag.setType( Advert18.getFlagType() );
                    AdHolder17.cover.setImageUrl( Advert18.getFullImg() );
                    AdHolder17.cover.setDrawingCacheEnabled( true );
                    n.a( Advert18, View2 );
                    return View2;
                }
                break;
            case 2:
                HomeShelfAdapter$TxtHolder TxtHolder13 = new HomeShelfAdapter$TxtHolder( View2 );
                BookFile BookFile14 = BookShelf4.getTxt();
                boolean boolean15;
                int int16;

                TxtHolder13.title.setText( (CharSequence) BookFile14.getName() );
                TxtHolder13.desc.setText( (CharSequence) new StringBuilder( "\u9605\u8BFB\u8FDB\u5EA6 : " ).append( BookFile14.getReadableProgress() ).toString() );
                boolean15 = BookFile14.isTop();
                int16 = 0;
                if( !boolean15 )
                    int16 = 8;
                TxtHolder13.top.setVisibility( int16 );
                a( int1, TxtHolder13.check );
                return View2;
            case 3:
                if( !d )
                {
                    HomeShelfAdapter$FeedHolder FeedHolder11 = new HomeShelfAdapter$FeedHolder( View2 );
                    BookFeed BookFeed12 = BookShelf4.getBookFeed();

                    FeedHolder11.title.setText( (CharSequence) BookFeed12.getTitle() );
                    if( BookFeed12.isFat() )
                        FeedHolder11.flag.setType( 4 );
                    else
                        FeedHolder11.flag.setType( 0 );
                    return View2;
                }
                break;
            case 4:
                HomeShelfAdapter$AlbumHolder AlbumHolder6 = new HomeShelfAdapter$AlbumHolder( View2 );
                AudioRecord AudioRecord7 = BookShelf4.getAlbum();
                View View8;
                boolean boolean9;
                int int10;

                AlbumHolder6.cover.setImageUrl( AudioRecord7.getImgUrl(), 2130837766 );
                AlbumHolder6.title.setText( (CharSequence) AudioRecord7.getName() );
                AlbumHolder6.desc.setText( (CharSequence) new StringBuilder().append( t.a( AudioRecord7.getLastUpdate() ) ).append( "\t\t" ).append( AudioRecord7.getDesc() ).toString() );
                if( AudioRecord7.isUpdateReaded() || d )
                    AlbumHolder6.flag.setType( 0 );
                else
                    AlbumHolder6.flag.setType( 3 );
                a( int1, AlbumHolder6.check );
                View8 = AlbumHolder6.top;
                boolean9 = AudioRecord7.isTop();
                int10 = 0;
                if( !boolean9 )
                    int10 = 8;
                View8.setVisibility( int10 );
                return View2;
            default:
                break;
        }
        return View2;
    }

    public int getViewTypeCount()
    {
        return 5;
    }
}
