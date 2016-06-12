
package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow$OnDismissListener;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.D;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import java.util.ArrayList;
import java.util.List;

public class ReviewListActivity extends BaseActivity {

    private dp a;
    private do b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private D i;
    private TextView k;
    private TextView l;
    private TextView m;
    private ImageView n;
    private ImageView o;
    private ImageView p;
    private String s;
    private String t;
    private String u;
    private boolean v;
    private static final String[] q = { "all", "xhqh", "wxxx", "dsyn", "lsjs", "yxjj", "khly", "cyjk", "hmzc", "xdyq", "gdyq", "hxyq", "dmtr" };
    private static final int[] r = { 2131034548, 2131034559, 2131034557, 2131034551, 2131034556, 2131034560, 2131034555, 2131034549, 2131034553, 2131034558, 2131034552, 2131034554, 2131034550 };
    private List j = new ArrayList();
    private com.handmark.pulltorefresh.library.j w = new dg( this );

    private PopupWindow a(View View1)
    {
        PopupWindow PopupWindow2 = new PopupWindow( View1, -1, -1 );

        PopupWindow2.setFocusable( true );
        PopupWindow2.setBackgroundDrawable( (Drawable) new ColorDrawable( 0 ) );
        PopupWindow2.setOutsideTouchable( true );
        PopupWindow2.setOnDismissListener( (PopupWindow$OnDismissListener) new de( this ) );
        return PopupWindow2;
    }

    static PopupWindow a(ReviewListActivity ReviewListActivity1, int int2)
    {
        if( int2 == 0 )
        {
            View View28 = LayoutInflater.from( (Context) ReviewListActivity1 ).inflate( 2130903161, null );
            TextView TextView29 = (TextView) View28.findViewById( 2131493308 );
            TextView TextView30 = (TextView) View28.findViewById( 2131493309 );
            PopupWindow PopupWindow31;

            if( ReviewListActivity1.v )
                TextView30.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.s.equals( "all" ) )
                TextView29.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            PopupWindow31 = ReviewListActivity1.a( View28 );
            View28.setOnTouchListener( (View$OnTouchListener) new dl( ReviewListActivity1, PopupWindow31 ) );
            TextView29.setOnClickListener( (View$OnClickListener) new dm( ReviewListActivity1, PopupWindow31 ) );
            TextView30.setOnClickListener( (View$OnClickListener) new dn( ReviewListActivity1, PopupWindow31 ) );
            return PopupWindow31;
        }
        else if( int2 == 1 )
        {
            View View11 = LayoutInflater.from( (Context) ReviewListActivity1 ).inflate( 2130903162, null );
            TextView TextView12 = (TextView) View11.findViewById( 2131493308 );
            TextView TextView13 = (TextView) View11.findViewById( 2131493309 );
            TextView TextView14 = (TextView) View11.findViewById( 2131493310 );
            TextView TextView15 = (TextView) View11.findViewById( 2131493338 );
            TextView TextView16 = (TextView) View11.findViewById( 2131493339 );
            TextView TextView17 = (TextView) View11.findViewById( 2131493340 );
            TextView TextView18 = (TextView) View11.findViewById( 2131493341 );
            TextView TextView19 = (TextView) View11.findViewById( 2131493342 );
            TextView TextView20 = (TextView) View11.findViewById( 2131493343 );
            TextView TextView21 = (TextView) View11.findViewById( 2131493344 );
            TextView TextView22 = (TextView) View11.findViewById( 2131493345 );
            TextView TextView23 = (TextView) View11.findViewById( 2131493346 );
            TextView TextView24 = (TextView) View11.findViewById( 2131493347 );
            PopupWindow PopupWindow25;
            Object Object26;
            Object Object27;

            if( ReviewListActivity1.t.equals( q[0] ) )
                TextView12.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[1] ) )
                TextView13.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[2] ) )
                TextView14.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[3] ) )
                TextView15.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[4] ) )
                TextView16.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[5] ) )
                TextView17.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[6] ) )
                TextView18.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[7] ) )
                TextView19.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[8] ) )
                TextView20.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[9] ) )
                TextView21.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[10] ) )
                TextView22.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[11] ) )
                TextView23.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            else if( ReviewListActivity1.t.equals( q[12] ) )
                TextView24.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
            PopupWindow25 = ReviewListActivity1.a( View11 );
            Object26 = new cK( ReviewListActivity1, PopupWindow25 );
            View11.setOnTouchListener( (View$OnTouchListener) Object26 );
            Object27 = new cL( ReviewListActivity1, PopupWindow25 );
            TextView12.setOnClickListener( (View$OnClickListener) Object27 );
            TextView13.setOnClickListener( (View$OnClickListener) new cM( ReviewListActivity1, PopupWindow25 ) );
            TextView14.setOnClickListener( (View$OnClickListener) new cN( ReviewListActivity1, PopupWindow25 ) );
            TextView15.setOnClickListener( (View$OnClickListener) new cO( ReviewListActivity1, PopupWindow25 ) );
            TextView16.setOnClickListener( (View$OnClickListener) new cP( ReviewListActivity1, PopupWindow25 ) );
            TextView17.setOnClickListener( (View$OnClickListener) new cQ( ReviewListActivity1, PopupWindow25 ) );
            TextView18.setOnClickListener( (View$OnClickListener) new cR( ReviewListActivity1, PopupWindow25 ) );
            TextView19.setOnClickListener( (View$OnClickListener) new cS( ReviewListActivity1, PopupWindow25 ) );
            TextView20.setOnClickListener( (View$OnClickListener) new cT( ReviewListActivity1, PopupWindow25 ) );
            TextView21.setOnClickListener( (View$OnClickListener) new cV( ReviewListActivity1, PopupWindow25 ) );
            TextView22.setOnClickListener( (View$OnClickListener) new cW( ReviewListActivity1, PopupWindow25 ) );
            TextView23.setOnClickListener( (View$OnClickListener) new cX( ReviewListActivity1, PopupWindow25 ) );
            TextView24.setOnClickListener( (View$OnClickListener) new cY( ReviewListActivity1, PopupWindow25 ) );
            return PopupWindow25;
        }
        else
        {
            View View3;
            TextView TextView4;
            TextView TextView5;
            TextView TextView6;
            TextView TextView7;
            String String8;
            int int9;
            PopupWindow PopupWindow10;

            if( int2 != 2 )
                return null;
            View3 = LayoutInflater.from( (Context) ReviewListActivity1 ).inflate( 2130903163, null );
            TextView4 = (TextView) View3.findViewById( 2131493308 );
            TextView5 = (TextView) View3.findViewById( 2131493309 );
            TextView6 = (TextView) View3.findViewById( 2131493310 );
            TextView7 = (TextView) View3.findViewById( 2131493338 );
            String8 = ReviewListActivity1.u;
            int9 = -1;
            switch( String8.hashCode() )
            {
                case -234430277:
                    if( String8.equals( "updated" ) )
                    {
                        int9 = 0;
                        break;
                    }
                    break;
                case 1028554472:
                    if( String8.equals( "created" ) )
                    {
                        int9 = 1;
                        break;
                    }
                    break;
                case 805825180:
                    if( String8.equals( "helpful" ) )
                    {
                        int9 = 2;
                        break;
                    }
                    break;
                case 1742524449:
                    if( String8.equals( "comment-count" ) )
                    {
                        int9 = 3;
                        break;
                    }
                    break;
                default:
                    break;
            }
            switch( int9 )
            {
                case 0:
                    TextView4.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                case 1:
                    TextView5.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                case 2:
                    TextView6.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                case 3:
                    TextView7.setTextColor( ReviewListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                default:
                    break;
            }
            PopupWindow10 = ReviewListActivity1.a( View3 );
            View3.setOnTouchListener( (View$OnTouchListener) new cZ( ReviewListActivity1, PopupWindow10 ) );
            TextView4.setOnClickListener( (View$OnClickListener) new da( ReviewListActivity1, PopupWindow10 ) );
            TextView5.setOnClickListener( (View$OnClickListener) new db( ReviewListActivity1, PopupWindow10 ) );
            TextView6.setOnClickListener( (View$OnClickListener) new dc( ReviewListActivity1, PopupWindow10 ) );
            TextView7.setOnClickListener( (View$OnClickListener) new dd( ReviewListActivity1, PopupWindow10 ) );
            return PopupWindow10;
        }
    }

    static do a(ReviewListActivity ReviewListActivity1, do do2)
    {
        ReviewListActivity1.b = do2;
        return do2;
    }

    static dp a(ReviewListActivity ReviewListActivity1, dp dp2)
    {
        ReviewListActivity1.a = dp2;
        return dp2;
    }

    static String a(ReviewListActivity ReviewListActivity1, String String2)
    {
        ReviewListActivity1.s = String2;
        return String2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(ReviewListActivity ReviewListActivity1)
    {
    }

    static void a(ReviewListActivity ReviewListActivity1, PopupWindow PopupWindow2, int int3)
    {
        PopupWindow2.dismiss();
        ReviewListActivity1.t = q[int3];
        ReviewListActivity1.l.setText( r[int3] );
        ReviewListActivity1.c.setRefreshing();
    }

    static boolean a(ReviewListActivity ReviewListActivity1, boolean boolean2)
    {
        ReviewListActivity1.v = boolean2;
        return boolean2;
    }

    static ImageView b(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.n;
    }

    static String b(ReviewListActivity ReviewListActivity1, String String2)
    {
        ReviewListActivity1.u = String2;
        return String2;
    }

    static ImageView c(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.o;
    }

    static ImageView d(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.p;
    }

    static TextView e(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.h;
    }

    static do f(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.b;
    }

    static String g(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.s;
    }

    static String h(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.t;
    }

    static String i(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.u;
    }

    static dp j(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.a;
    }

    static ListView k(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.e;
    }

    static List l(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.j;
    }

    static TextView m(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.k;
    }

    static PullToRefreshListView n(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.c;
    }

    static TextView o(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.m;
    }

    static boolean p(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.v;
    }

    static com.clilystudio.netbook.api.b q(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.d;
    }

    static View r(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.g;
    }

    static View s(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.f;
    }

    static D t(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.i;
    }

    static com.handmark.pulltorefresh.library.j u(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.w;
    }

    static void v(ReviewListActivity ReviewListActivity1)
    {
        ReviewListActivity1.h.setVisibility( 0 );
        ReviewListActivity1.h.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u8BC4\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
    }

    static com.clilystudio.netbook.api.b w(ReviewListActivity ReviewListActivity1)
    {
        return ReviewListActivity1.d;
    }

    protected void onCreate(Bundle Bundle1)
    {
        View View2;
        View View3;
        View View4;
        dp dp5;
        String[] String_1darray6;

        super.onCreate( Bundle1 );
        setContentView( 2130903090 );
        a( "\u4E66\u8BC4\u533A", 2130837866, (aa) new cJ( this ), "\u5199\u4E66\u8BC4" );
        if( Bundle1 != null )
        {
            s = Bundle1.getString( "savedReviewDur" );
            t = Bundle1.getString( "savedReviewType" );
            u = Bundle1.getString( "savedReviewSort" );
        }
        else
        {
            s = "all";
            t = q[0];
            u = "updated";
        }
        g = findViewById( 2131493085 );
        h = (TextView) findViewById( 2131493100 );
        c = (PullToRefreshListView) findViewById( 2131493099 );
        c.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        View2 = findViewById( 2131493105 );
        View3 = findViewById( 2131493108 );
        View4 = findViewById( 2131493111 );
        k = (TextView) findViewById( 2131493106 );
        l = (TextView) findViewById( 2131493109 );
        m = (TextView) findViewById( 2131493112 );
        n = (ImageView) findViewById( 2131493107 );
        o = (ImageView) findViewById( 2131493110 );
        p = (ImageView) findViewById( 2131493113 );
        View2.setOnClickListener( (View$OnClickListener) new cU( this ) );
        View3.setOnClickListener( (View$OnClickListener) new df( this ) );
        View4.setOnClickListener( (View$OnClickListener) new dh( this ) );
        e = (ListView) c.h();
        f = LayoutInflater.from( (Context) this ).inflate( 2130903325, null );
        if( com.clilystudio.netbook.hpay100.a.a.j() )
            e.setFooterDividersEnabled( false );
        e.addFooterView( f );
        c.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new di( this ) );
        e.setOnItemClickListener( (AdapterView$OnItemClickListener) new dk( this ) );
        i = new D( getLayoutInflater() );
        e.setAdapter( (ListAdapter) i );
        a = new dp( this, (byte) 0 );
        dp5 = a;
        String_1darray6 = new String[3];
        String_1darray6[0] = s;
        String_1darray6[1] = t;
        String_1darray6[2] = u;
        dp5.b( String_1darray6 );
        com.clilystudio.netbook.hpay100.a.a.u( (Context) this );
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "BookReviewListActivity_Opened" );
    }

    protected void onNewIntent(Intent Intent1)
    {
        super.onNewIntent( Intent1 );
        c.setRefreshing();
    }

    protected void onSaveInstanceState(Bundle Bundle1)
    {
        super.onSaveInstanceState( Bundle1 );
        Bundle1.putString( "savedReviewDur", s );
        Bundle1.putString( "savedReviewType", t );
        Bundle1.putString( "savedReviewSort", u );
    }
}
