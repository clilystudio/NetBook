
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
import com.clilystudio.netbook.adapter.d;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import java.util.ArrayList;
import java.util.List;

public class BookHelpListActivity extends BaseActivity {

    private av a;
    private au b;
    private PullToRefreshListView c;
    private ListView e;
    private View f;
    private View g;
    private TextView h;
    private d i;
    private TextView k;
    private TextView l;
    private ImageView m;
    private ImageView n;
    private String o;
    private String p;
    private boolean q;
    private List j = new ArrayList();
    private com.handmark.pulltorefresh.library.j r = new ak( this );

    private PopupWindow a(View View1)
    {
        PopupWindow PopupWindow2 = new PopupWindow( View1, -1, -1 );

        PopupWindow2.setFocusable( true );
        PopupWindow2.setBackgroundDrawable( (Drawable) new ColorDrawable( 0 ) );
        PopupWindow2.setOutsideTouchable( true );
        PopupWindow2.setOnDismissListener( (PopupWindow$OnDismissListener) new aj( this ) );
        return PopupWindow2;
    }

    static PopupWindow a(BookHelpListActivity BookHelpListActivity1, boolean boolean2)
    {
        if( boolean2 )
        {
            View View10 = LayoutInflater.from( (Context) BookHelpListActivity1 ).inflate( 2130903155, null );
            TextView TextView11 = (TextView) View10.findViewById( 2131493308 );
            TextView TextView12 = (TextView) View10.findViewById( 2131493309 );
            PopupWindow PopupWindow13;

            if( BookHelpListActivity1.q )
                TextView12.setTextColor( BookHelpListActivity1.getResources().getColor( 2131427468 ) );
            else if( BookHelpListActivity1.o.equals( "all" ) )
                TextView11.setTextColor( BookHelpListActivity1.getResources().getColor( 2131427468 ) );
            PopupWindow13 = BookHelpListActivity1.a( View10 );
            View10.setOnTouchListener( (View$OnTouchListener) new aq( BookHelpListActivity1, PopupWindow13 ) );
            TextView11.setOnClickListener( (View$OnClickListener) new ar( BookHelpListActivity1, PopupWindow13 ) );
            TextView12.setOnClickListener( (View$OnClickListener) new as( BookHelpListActivity1, PopupWindow13 ) );
            return PopupWindow13;
        }
        else
        {
            View View3 = LayoutInflater.from( (Context) BookHelpListActivity1 ).inflate( 2130903156, null );
            TextView TextView4 = (TextView) View3.findViewById( 2131493308 );
            TextView TextView5 = (TextView) View3.findViewById( 2131493309 );
            TextView TextView6 = (TextView) View3.findViewById( 2131493310 );
            String String7 = BookHelpListActivity1.p;
            int int8 = -1;
            PopupWindow PopupWindow9;

            switch( String7.hashCode() )
            {
                case -234430277:
                    if( String7.equals( "updated" ) )
                    {
                        int8 = 0;
                        break;
                    }
                    break;
                case 1028554472:
                    if( String7.equals( "created" ) )
                    {
                        int8 = 1;
                        break;
                    }
                    break;
                case 1742524449:
                    if( String7.equals( "comment-count" ) )
                    {
                        int8 = 2;
                        break;
                    }
                    break;
                default:
                    break;
            }
            switch( int8 )
            {
                case 0:
                    TextView4.setTextColor( BookHelpListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                case 1:
                    TextView5.setTextColor( BookHelpListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                case 2:
                    TextView6.setTextColor( BookHelpListActivity1.getResources().getColor( 2131427468 ) );
                    break;
                default:
                    break;
            }
            PopupWindow9 = BookHelpListActivity1.a( View3 );
            View3.setOnTouchListener( (View$OnTouchListener) new at( BookHelpListActivity1, PopupWindow9 ) );
            TextView4.setOnClickListener( (View$OnClickListener) new ag( BookHelpListActivity1, PopupWindow9 ) );
            TextView5.setOnClickListener( (View$OnClickListener) new ah( BookHelpListActivity1, PopupWindow9 ) );
            TextView6.setOnClickListener( (View$OnClickListener) new ai( BookHelpListActivity1, PopupWindow9 ) );
            return PopupWindow9;
        }
    }

    static au a(BookHelpListActivity BookHelpListActivity1, au au2)
    {
        BookHelpListActivity1.b = au2;
        return au2;
    }

    static av a(BookHelpListActivity BookHelpListActivity1, av av2)
    {
        BookHelpListActivity1.a = av2;
        return av2;
    }

    static String a(BookHelpListActivity BookHelpListActivity1, String String2)
    {
        BookHelpListActivity1.o = String2;
        return String2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(BookHelpListActivity BookHelpListActivity1)
    {
    }

    static ImageView b(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.m;
    }

    static String b(BookHelpListActivity BookHelpListActivity1, String String2)
    {
        BookHelpListActivity1.p = String2;
        return String2;
    }

    static boolean b(BookHelpListActivity BookHelpListActivity1, boolean boolean2)
    {
        BookHelpListActivity1.q = boolean2;
        return boolean2;
    }

    static ImageView c(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.n;
    }

    static TextView d(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.h;
    }

    static au e(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.b;
    }

    static String f(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.o;
    }

    static String g(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.p;
    }

    static av h(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.a;
    }

    static ListView i(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.e;
    }

    static List j(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.j;
    }

    static TextView k(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.k;
    }

    static PullToRefreshListView l(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.c;
    }

    static TextView m(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.l;
    }

    static boolean n(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.q;
    }

    static View o(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.g;
    }

    static View p(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.f;
    }

    static d q(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.i;
    }

    static com.handmark.pulltorefresh.library.j r(BookHelpListActivity BookHelpListActivity1)
    {
        return BookHelpListActivity1.r;
    }

    static void s(BookHelpListActivity BookHelpListActivity1)
    {
        BookHelpListActivity1.h.setVisibility( 0 );
        BookHelpListActivity1.h.setText( (CharSequence) "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u8352\u6C42\u52A9\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
    }

    protected void onCreate(Bundle Bundle1)
    {
        View View2;
        View View3;
        av av4;
        String[] String_1darray5;

        super.onCreate( Bundle1 );
        setContentView( 2130903086 );
        a( "\u4E66\u8352\u533A", 2130837866, (aa) new af( this ), "\u7F16\u8F91\u4E66\u8352" );
        if( Bundle1 != null )
        {
            o = Bundle1.getString( "savedHelpDuration" );
            p = Bundle1.getString( "savedHelpSort" );
        }
        else
        {
            o = "all";
            p = "updated";
        }
        g = findViewById( 2131493085 );
        h = (TextView) findViewById( 2131493100 );
        c = (PullToRefreshListView) findViewById( 2131493099 );
        c.setMode( PullToRefreshBase$Mode.PULL_FROM_START );
        View2 = findViewById( 2131493376 );
        View3 = findViewById( 2131493380 );
        k = (TextView) findViewById( 2131493378 );
        l = (TextView) findViewById( 2131493381 );
        m = (ImageView) findViewById( 2131493379 );
        n = (ImageView) findViewById( 2131493382 );
        View2.setOnClickListener( (View$OnClickListener) new al( this ) );
        View3.setOnClickListener( (View$OnClickListener) new am( this ) );
        e = (ListView) c.h();
        if( com.clilystudio.netbook.hpay100.a.a.j() )
            e.setFooterDividersEnabled( false );
        f = LayoutInflater.from( (Context) this ).inflate( 2130903325, null );
        f.setVisibility( 8 );
        e.addFooterView( f );
        c.setOnRefreshListener( (com.handmark.pulltorefresh.library.k) new an( this ) );
        e.setOnItemClickListener( (AdapterView$OnItemClickListener) new ap( this ) );
        i = new d( getLayoutInflater() );
        e.setAdapter( (ListAdapter) i );
        a = new av( this, (byte) 0 );
        av4 = a;
        String_1darray5 = new String[2];
        String_1darray5[0] = o;
        String_1darray5[1] = p;
        av4.b( String_1darray5 );
        com.clilystudio.netbook.hpay100.a.a.u( (Context) this );
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "BookHelpListActivity_Opened" );
    }

    protected void onNewIntent(Intent Intent1)
    {
        super.onNewIntent( Intent1 );
        c.setRefreshing();
    }

    protected void onSaveInstanceState(Bundle Bundle1)
    {
        super.onSaveInstanceState( Bundle1 );
        Bundle1.putString( "savedHelpDuration", o );
        Bundle1.putString( "savedHelpSort", p );
    }
}
