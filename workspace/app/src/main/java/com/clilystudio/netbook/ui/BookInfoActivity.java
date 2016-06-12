
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.TagsLayout;
import java.util.Date;

public class BookInfoActivity extends BaseActivity implements View$OnClickListener {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    private static final String a = null;
    private View b;
    private View c;
    private View e;
    private View f;
    private View g;
    private String h;
    private boolean i;
    private boolean j;
    private BookInfo k;
    private int l = 0;
    private Handler m = new aB( this );
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, int int3)
    {
    }

    static BookInfo a(BookInfoActivity BookInfoActivity1, BookInfo BookInfo2)
    {
        BookInfoActivity1.k = BookInfo2;
        return BookInfo2;
    }

    private void a(int int1)
    {
        View View2 = a().a();
        TextView TextView3 = null;

        if( View2 != null )
            TextView3 = (TextView) View2.findViewById( 2131493008 );
        if( TextView3 == null )
            return;
        else
        {
            switch( int1 )
            {
                default:
                    return;
                case 3:
                case 4:
                case 0:
                    TextView3.setEnabled( true );
                    TextView3.setText( 2131034329 );
                    TextView3.setTextColor( getResources().getColor( 2131427552 ) );
                    return;
                case 2:
                    TextView3.setEnabled( false );
                    TextView3.setText( (CharSequence) "\u7F13\u5B58\u4E2D..." );
                    TextView3.setTextColor( getResources().getColor( 2131427364 ) );
                    return;
                case 5:
                case 1:
                    TextView3.setEnabled( false );
                    TextView3.setText( (CharSequence) "\u7B49\u5F85\u4E2D..." );
                    TextView3.setTextColor( getResources().getColor( 2131427364 ) );
                    return;
            }
        }
    }

    private void a(View View1, Advert Advert2)
    {
        if( View1 != null && Advert2 != null )
        {
            SmartImageView SmartImageView3;
            TextView TextView4;
            TextView TextView5;

            Advert2.setPosition( "book_info" );
            Advert2.recordShow( (Context) this );
            SmartImageView3 = (SmartImageView) View1.findViewById( 2131493312 );
            TextView4 = (TextView) View1.findViewById( 2131493314 );
            TextView5 = (TextView) View1.findViewById( 2131493315 );
            View1.findViewById( 2131493313 ).setVisibility( 0 );
            SmartImageView3.setImageUrl( Advert2.getFullImg() );
            TextView4.setText( (CharSequence) Advert2.getTitle() );
            TextView5.setText( (CharSequence) Advert2.getDesc() );
            View1.setOnClickListener( (View$OnClickListener) new aE( this, Advert2 ) );
            n.a( Advert2, View1 );
        }
    }

    static void a(BookInfoActivity BookInfoActivity1)
    {
        if( BookInfoActivity1.k != null )
        {
            BookReadRecord BookReadRecord2;
            SourceRecord SourceRecord3;

            I.a = BookInfoActivity1.h;
            I.b = BookInfoActivity1.k.getTitle();
            BookReadRecord2 = BookReadRecord.getOnShelf( BookInfoActivity1.h );
            if( BookReadRecord2 != null )
            {
                I.d = BookReadRecord2.getDownloadedSource();
                I.c = BookReadRecord2.getTocId();
                I.g = BookReadRecord2.getReadMode();
            }
            SourceRecord3 = SourceRecord.get( BookInfoActivity1.h, I.d );
            if( SourceRecord3 != null )
            {
                I.e = SourceRecord3.getSourceId();
                I.f = SourceRecord3.getSogouMd();
            }
            if( !BookInfoActivity1.i )
                BookInfoActivity1.h();
            new com.clilystudio.netbook.reader.dl.a( (Activity) BookInfoActivity1 ).a( BookReadRecord.getOnShelf( BookInfoActivity1.h ) );
        }
    }

    static void a(BookInfoActivity BookInfoActivity1, int int2)
    {
        if( BookInfoActivity1.k != null )
        {
            String String3 = BookInfoActivity1.k.getTitle();
            String String4 = BookInfoActivity1.k.getFullCover();

            T.a( (Context) BookInfoActivity1, String3, BookInfoActivity1.k.getLongIntro(), new StringBuilder( "http://share.zhuishushenqi.com/book/" ).append( BookInfoActivity1.k.getId() ).toString(), String4, int2, (PlatformActionListener) new aA( BookInfoActivity1 ) );
        }
    }

    static void a(BookInfoActivity BookInfoActivity1, String String2)
    {
        BookInfoActivity1.startActivity( BookTagListActivity.a( (Context) BookInfoActivity1, String2 ) );
    }

    private void a(boolean boolean1)
    {
        View View2 = findViewById( 2131493077 );
        TextView TextView3 = (TextView) findViewById( 2131493323 );
        View View4 = g;
        int int5;
        int int6;
        int int7;

        if( boolean1 )
            int5 = 2130837711;
        else
            int5 = am.b( (Context) this, 2130771971 );
        View4.setBackgroundResource( int5 );
        if( boolean1 )
            int6 = 2131034332;
        else
            int6 = 2131034331;
        TextView3.setText( int6 );
        if( boolean1 )
            int7 = 8;
        else
            int7 = 0;
        View2.setVisibility( int7 );
    }

    private void a(String[] String_1darray1)
    {
        if( String_1darray1 != null && String_1darray1.length != 0 )
        {
            LayoutInflater LayoutInflater2 = LayoutInflater.from( (Context) this );
            View View3 = findViewById( 2131493334 );
            int int4;
            int int5;
            Object Object6;
            int[] int_1darray7;
            int int8;
            int int9;
            int int12;

            View3.setVisibility( 0 );
            int4 = String_1darray1.length;
            int5 = com.clilystudio.netbook.hpay100.a.a.a( (Context) this, 16.0F );
            Object6 = (TagsLayout) View3.findViewById( 2131493335 );
            if( com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "customer_night_theme", false ) )
                int_1darray7 = new int[] { 2130837623, 2130837625, 2130837627, 2130837629, 2130837631, 2130837633, 2130837635 };
            else
                int_1darray7 = new int[] { 2130837622, 2130837624, 2130837626, 2130837628, 2130837630, 2130837632, 2130837634 };
            int8 = 0;
            for( int9 = 0; int9 < int4; int9 = int12 )
            {
                Object Object10 = (TextView) LayoutInflater2.inflate( 2130903160, (ViewGroup) Object6, false ).findViewById( 2131493337 );
                Object Object11 = String_1darray1[int9];

                ((TextView) Object10).setText( (CharSequence) Object11 );
                if( int8 >= 7 )
                    int8 = 0;
                ((TextView) Object10).setBackgroundResource( int_1darray7[int8] );
                ((TextView) Object10).setOnClickListener( (View$OnClickListener) new aF( this, (String) Object11 ) );
                ((TagsLayout) Object6).addView( (View) Object10, new ViewGroup$LayoutParams( int5, int5 ) );
                int12 = int9 + 1;
                ++int8;
            }
        }
    }

    static boolean a(BookInfoActivity BookInfoActivity1, boolean boolean2)
    {
        BookInfoActivity1.i = true;
        return true;
    }

    static String b()
    {
        return a;
    }

    static void b(BookInfoActivity BookInfoActivity1)
    {
        BookInfoActivity1.g();
    }

    static void b(BookInfoActivity BookInfoActivity1, int int2)
    {
        BookInfoActivity1.e( int2 );
    }

    static boolean b(BookInfoActivity BookInfoActivity1, boolean boolean2)
    {
        BookInfoActivity1.j = boolean2;
        return boolean2;
    }

    static void c(BookInfoActivity BookInfoActivity1, boolean boolean2)
    {
        if( boolean2 )
            com.clilystudio.netbook.hpay100.a.a.b( (Context) BookInfoActivity1, "add_update_notify_login", false );
    }

    static boolean c(BookInfoActivity BookInfoActivity1)
    {
        return BookInfoActivity1.j;
    }

    static void d(BookInfoActivity BookInfoActivity1)
    {
        FragmentTransaction FragmentTransaction2 = BookInfoActivity1.getSupportFragmentManager().beginTransaction();

        FragmentTransaction2.replace( 2131493328, (Fragment) BestReviewsFragment.a( BookInfoActivity1.h, BookInfoActivity1.k.getTitle() ) );
        FragmentTransaction2.replace( 2131493332, (Fragment) RelateBooksFragment.a( BookInfoActivity1.h ) );
        FragmentTransaction2.replace( 2131493333, (Fragment) RelateUgcFragment.a( BookInfoActivity1.h ) );
        try
        {
            FragmentTransaction2.commitAllowingStateLoss();
        }
        catch( IllegalStateException IllegalStateException6 )
        {
            IllegalStateException6.printStackTrace();
            return;
        }
    }

    private void e(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                b.setVisibility( 0 );
                c.setVisibility( 8 );
                e.setVisibility( 8 );
                return;
            case 0:
                b.setVisibility( 8 );
                c.setVisibility( 0 );
                e.setVisibility( 8 );
                return;
            case 2:
                b.setVisibility( 8 );
                c.setVisibility( 8 );
                e.setVisibility( 0 );
                return;
        }
    }

    static void e(BookInfoActivity BookInfoActivity1)
    {
        BookInfoActivity1.k();
    }

    private void f()
    {
        View View1 = findViewById( 2131493311 );

        if( am.q( (Context) this ) && com.clilystudio.netbook.hpay100.a.a.F( (Context) this ) )
        {
            Advert Advert2 = n.b( (Context) this, "book" );

            if( Advert2 != null && com.clilystudio.netbook.hpay100.a.a.w( (Context) this, "rate_zssq_advert_reader_bookinfo" ) )
            {
                View1.setVisibility( 0 );
                a( View1, Advert2 );
            }
            else
                View1.setVisibility( 8 );
        }
        else
            View1.setVisibility( 8 );
    }

    static void f(BookInfoActivity BookInfoActivity1)
    {
        TextView TextView2;
        String String3;
        TextView TextView4;
        int int5;
        TextView TextView6;
        TextView TextView7;
        String String8;
        String String9;
        TextView TextView10;

        BookInfoActivity1.a().a( (CharSequence) BookInfoActivity1.k.getTitle() );
        ((CoverView) BookInfoActivity1.findViewById( 2131493282 )).setImageUrl( BookInfoActivity1.k.getFullCoverLarge(), 2130837766 );
        ((TextView) BookInfoActivity1.findViewById( 2131493316 )).setText( (CharSequence) BookInfoActivity1.k.getTitle() );
        TextView2 = (TextView) BookInfoActivity1.findViewById( 2131493317 );
        TextView2.setText( (CharSequence) BookInfoActivity1.k.getAuthor() );
        TextView2.setTextColor( BookInfoActivity1.getResources().getColor( 2131427413 ) );
        BookInfoActivity1.findViewById( 2131493284 ).setOnClickListener( BookInfoActivity1 );
        if( BookInfoActivity1.k.getCat() != null )
            String3 = BookInfoActivity1.k.getCat();
        else
            String3 = "-";
        ((TextView) BookInfoActivity1.findViewById( 2131493318 )).setText( (CharSequence) new StringBuilder( "  |  " ).append( String3 ).toString() );
        TextView4 = (TextView) BookInfoActivity1.findViewById( 2131493319 );
        int5 = BookInfoActivity1.k.getWordCount();
        if( int5 > 0 )
        {
            Object[] Object_1darray13;

            TextView4.setVisibility( 0 );
            Object_1darray13 = new Object[1];
            Object_1darray13[0] = com.clilystudio.netbook.hpay100.a.a.i( int5 );
            TextView4.setText( (CharSequence) String.format( "  |  %s\u5B57", Object_1darray13 ) );
        }
        else
            TextView4.setVisibility( 8 );
        if( BookInfoActivity1.k.getUpdated() != null )
        {
            Object Object12;

            if( BookInfoActivity1.k.getIsSerial() )
                Object12 = t.e( BookInfoActivity1.k.getUpdated() );
            else
                Object12 = "\u5B8C\u7ED3";
            ((TextView) BookInfoActivity1.findViewById( 2131493320 )).setText( (CharSequence) Object12 );
        }
        ((TextView) BookInfoActivity1.findViewById( 2131493324 )).setText( (CharSequence) Integer.toString( BookInfoActivity1.k.getLatelyFollower() ) );
        TextView6 = (TextView) BookInfoActivity1.findViewById( 2131493325 );
        if( BookInfoActivity1.k.getRetentionRatio() != 0.0F )
            TextView6.setText( (CharSequence) new StringBuilder().append( BookInfoActivity1.k.getRetentionRatio() ).append( "%" ).toString() );
        else
            TextView6.setText( (CharSequence) "-" );
        TextView7 = (TextView) BookInfoActivity1.findViewById( 2131493326 );
        if( BookInfoActivity1.k.getSerializeWordCount() >= 0 )
            TextView7.setText( (CharSequence) Integer.toString( BookInfoActivity1.k.getSerializeWordCount() ) );
        else
            TextView7.setText( (CharSequence) "-" );
        BookInfoActivity1.findViewById( 2131493329 ).setOnClickListener( BookInfoActivity1 );
        String8 = BookInfoActivity1.k.getTitle();
        if( String8.length() > 10 )
            String9 = new StringBuilder().append( String8.substring( 0, 10 ) ).append( "..." ).toString();
        else
            String9 = String8;
        ((TextView) BookInfoActivity1.findViewById( 2131493330 )).setText( (CharSequence) new StringBuilder().append( String9 ).append( "\u7684\u793E\u533A" ).toString() );
        ((TextView) BookInfoActivity1.findViewById( 2131493331 )).setText( (CharSequence) new StringBuilder( "\u5171\u6709 " ).append( BookInfoActivity1.k.getPostCount() ).append( " \u4E2A\u5E16\u5B50" ).toString() );
        TextView10 = (TextView) BookInfoActivity1.findViewById( 2131493327 );
        if( BookInfoActivity1.k.getLongIntro() != null )
        {
            TextView10.setText( (CharSequence) BookInfoActivity1.k.getLongIntro() );
            TextView10.post( (Runnable) new aC( BookInfoActivity1, TextView10 ) );
        }
        else
            TextView10.setText( (CharSequence) "\u6682\u65E0" );
        BookInfoActivity1.g();
        BookInfoActivity1.a( BookInfoActivity1.k.getTags() );
        BookInfoActivity1.f();
    }

    private void g()
    {
        int int1 = f.getPaddingLeft();
        int int2 = f.getPaddingTop();
        int int3 = f.getPaddingRight();
        int int4 = f.getPaddingBottom();
        View View5 = f;
        int int6;
        TextView TextView7;
        ImageView ImageView8;
        Object Object9;
        int int10;

        if( i )
            int6 = 2130837711;
        else
            int6 = am.b( (Context) this, 2130771971 );
        View5.setBackgroundResource( int6 );
        f.setPadding( int1, int2, int3, int4 );
        TextView7 = (TextView) findViewById( 2131493288 );
        ImageView8 = (ImageView) findViewById( 2131493287 );
        if( i )
            Object9 = getString( 2131034330 );
        else
            Object9 = getString( 2131034328 );
        TextView7.setText( (CharSequence) Object9 );
        if( i )
            int10 = 2130837714;
        else
            int10 = 2130837710;
        ImageView8.setImageResource( int10 );
    }

    private void h()
    {
        String String4;

        if( i )
        {
            String String7;
            Object[] Object_1darray8;

            BookReadRecord.deleteAndSync( h );
            com.clilystudio.netbook.hpay100.a.a.v( h );
            String7 = getString( 2131034467 );
            Object_1darray8 = new Object[1];
            Object_1darray8[0] = k.getTitle();
            String4 = String.format( String7, Object_1darray8 );
        }
        else
        {
            if( am.f() )
                String4 = getString( 2131034325 );
            else
            {
                String String1;
                Object[] Object_1darray2;
                String String3;

                BookReadRecord.create( k );
                com.clilystudio.netbook.hpay100.a.a.u( h );
                String1 = getString( 2131034283 );
                Object_1darray2 = new Object[1];
                Object_1darray2[0] = k.getTitle();
                String3 = String.format( String1, Object_1darray2 );
                if( com.clilystudio.netbook.hpay100.a.a.a( (Context) this, "add_update_notify_login", true ) && !android.support.design.widget.am.g() )
                {
                    View View5 = getLayoutInflater().inflate( 2130903380, null, false );
                    CheckBox CheckBox6 = (CheckBox) View5.findViewById( 2131493973 );

                    CheckBox6.setText( (CharSequence) getString( 2131034301 ) );
                    CheckBox6.setChecked( false );
                    ((TextView) View5.findViewById( 2131493972 )).setText( (CharSequence) getString( 2131034302 ) );
                    new uk.me.lewisdeane.ldialogs.h( (Context) this ).a( View5 ).a( "\u5FEB\u901F\u767B\u5F55", (DialogInterface$OnClickListener) new aH( this, CheckBox6 ) ).b( "\u4E0D\u60F3\u540C\u6B65", (DialogInterface$OnClickListener) new aG( this, CheckBox6 ) ).a().show();
                }
                String4 = String3;
            }
            com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_add" );
            i();
        }
        com.clilystudio.netbook.util.e.a( (Activity) this, String4 );
    }

    private void i()
    {
        switch( l )
        {
            default:
                return;
            case 1:
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_recommend_add_shelf", "zhuishu" );
                return;
            case 2:
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "page_footing_recommend_add_shelf", "zhuishu" );
                return;
            case 3:
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_recommend_add_shelf", "bfd" );
                return;
            case 4:
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "page_footing_recommend_add_shelf", "bfd" );
                return;
        }
    }

    private void j()
    {
        aI aI1;
        String[] String_1darray2;

        e( 0 );
        aI1 = new aI( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = h;
        aI1.b( String_1darray2 );
    }

    private void k()
    {
        if( k != null )
            MyApplication.a().a( k );
    }

    public void onBookAdded(com.clilystudio.netbook.event.c c1)
    {
        if( c1.b().equals( h ) && !i )
        {
            m.sendEmptyMessage( 0 );
            i();
        }
    }

    public void onBookRemoved(com.clilystudio.netbook.event.h h1)
    {
        if( h1.b().equals( h ) && i )
        {
            i = false;
            g();
        }
    }

    public void onClick(View View1)
    {
        switch( View1.getId() )
        {
            default:
                return;
            case 2131493321:
                h();
                return;
            case 2131493322:
                BookReadRecord BookReadRecord2 = BookReadRecord.get( h );

                if( BookReadRecord2 == null )
                {
                    a( true );
                    new com.clilystudio.netbook.util.m( (Activity) this ).a( k );
                }
                else
                    new com.clilystudio.netbook.util.m( (Activity) this ).a( BookReadRecord2 );
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_search" );
                return;
            case 2131493329:
                startActivity( BookPostTabActivity.a( (Context) this, h, k.getTitle() ) );
                com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_post" );
                return;
            case 2131493284:
                startActivity( AuthorBooksActivity.a( (Context) this, k.getAuthor() ) );
                return;
            case 2131493138:
                j();
                return;
        }
    }

    public void onCreate(Bundle Bundle1)
    {
        Object Object2;
        View View3;
        TextView TextView4;
        TextView TextView5;
        boolean boolean6;

        super.onCreate( Bundle1 );
        setContentView( 2130903087 );
        Object2 = new ay( this );
        c();
        View3 = LayoutInflater.from( (Context) this ).inflate( 2130903041, null );
        ((TextView) View3.findViewById( 2131492936 )).setText( 2131034333 );
        View3.findViewById( 2131493013 ).setOnClickListener( (View$OnClickListener) new U( this ) );
        TextView4 = (TextView) View3.findViewById( 2131493010 );
        TextView5 = (TextView) View3.findViewById( 2131493011 );
        TextView4.setText( 2131034329 );
        TextView5.setText( 2131034175 );
        TextView4.setOnClickListener( (View$OnClickListener) new V( this, (ab) Object2 ) );
        TextView5.setOnClickListener( (View$OnClickListener) new W( this, (ab) Object2 ) );
        a().a( View3 );
        b = findViewById( 2131492905 );
        c = findViewById( 2131493085 );
        e = findViewById( 2131493086 );
        g = findViewById( 2131493322 );
        f = findViewById( 2131493321 );
        g.setOnClickListener( this );
        f.setOnClickListener( this );
        e.setOnClickListener( this );
        h = getIntent().getStringExtra( "book_id" );
        if( BookReadRecord.getOnShelf( h ) != null )
            boolean6 = true;
        else
            boolean6 = false;
        i = boolean6;
        com.clilystudio.netbook.event.i.a().a( this );
        j();
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_info_open" );
        l = getIntent().getIntExtra( "open_type", 0 );
    }

    protected void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }

    public void onDownloadStatus(com.clilystudio.netbook.event.d d1)
    {
        if( h.equals( d1.b() ) )
            a( d1.a() );
    }

    public void onHideAdEvent(s s1)
    {
        f();
    }

    public void onResume()
    {
        super.onResume();
        k();
        a( false );
        a( am.g( h ) );
    }

    public void onShowThirdAd(B B1)
    {
        if( B1 != null && am.q( (Context) this ) && B1.b().equals( "book" ) )
        {
            Advert Advert2 = B1.a();

            if( Advert2 != null )
            {
                View View3 = findViewById( 2131493311 );

                View3.setVisibility( 0 );
                a( View3, Advert2 );
                return;
            }
        }
    }
}
