
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.adapter.W;
import com.clilystudio.netbook.event.E;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer;
import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer$UGCBookItem;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.cd;
import com.clilystudio.netbook.util.T;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UGCDetailActivity extends BaseActivity implements View$OnClickListener {

    private TextView a;
    private TextView b;
    private TextView c;
    private TextView e;
    private TextView f;
    private SmartImageView g;
    private TextView h;
    private ImageButton i;
    private ListView j;
    private W k;
    private View l;
    private View m;
    private View n;
    private String o;
    private boolean p;
    private boolean q;
    private UGCBookDetail r;
    private Author s;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private View$OnClickListener t = new j( this );

    static Author a(UGCDetailActivity UGCDetailActivity1, Author Author2)
    {
        UGCDetailActivity1.s = Author2;
        return Author2;
    }

    static UGCBookDetail a(UGCDetailActivity UGCDetailActivity1, UGCBookDetail UGCBookDetail2)
    {
        UGCDetailActivity1.r = UGCBookDetail2;
        return UGCBookDetail2;
    }

    static String a(UGCDetailActivity UGCDetailActivity1, String String2)
    {
        UGCDetailActivity1.w = String2;
        return String2;
    }

    private void a(UGCBookDetail UGCBookDetail1)
    {
        Author Author2;
        UGCBookDetail$UGCBookContainer[] UGCBookContainer_1darray3;

        e( 1 );
        Author2 = UGCBookDetail1.getAuthor();
        UGCBookContainer_1darray3 = UGCBookDetail1.getBooks();
        if( UGCBookContainer_1darray3 == null || UGCBookContainer_1darray3.length == 0 )
        {
            if( Author2 != null )
                y = Author2.getScaleAvatar();
        }
        else
            y = UGCBookDetail1.getBooks()[0].getBook().getFullCover();
        x = UGCBookDetail1.getShareLink();
        u = UGCBookDetail1.getTitle();
        v = UGCBookDetail1.getDesc();
        if( Author2 != null )
        {
            g.setImageUrl( Author2.getScaleAvatar() );
            b.setText( (CharSequence) Author2.getNickname() );
        }
        if( am.g() )
            x = new StringBuilder().append( x ).append( "?sharer=" ).append( am.e().getUser().getId() ).toString();
        a.setText( (CharSequence) com.clilystudio.netbook.util.t.e( UGCBookDetail1.getCreated() ) );
        c.setText( (CharSequence) u );
        e.setText( (CharSequence) v );
        e.post( (Runnable) new p( this ) );
        f.setText( (CharSequence) String.valueOf( UGCBookDetail1.getCollectorCount() ) );
        k.a( UGCBookDetail1.getBooks() );
    }

    static void a(UGCDetailActivity UGCDetailActivity1, int int2)
    {
        UGCDetailActivity1.e( 2 );
    }

    static boolean a(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.p;
    }

    private void b()
    {
        r r1;
        String[] String_1darray2;

        e( 0 );
        r1 = new r( this, (byte) 0 );
        String_1darray2 = new String[1];
        String_1darray2[0] = o;
        r1.b( String_1darray2 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void b(UGCDetailActivity UGCDetailActivity1)
    {
    }

    static void b(UGCDetailActivity UGCDetailActivity1, UGCBookDetail UGCBookDetail2)
    {
        UGCDetailActivity1.a( UGCBookDetail2 );
    }

    static void c(UGCDetailActivity UGCDetailActivity1)
    {
        Account Account2 = am.a( (Activity) UGCDetailActivity1 );

        if( Account2 != null )
        {
            q q3 = new q( UGCDetailActivity1, (byte) 0 );
            String[] String_1darray4 = new String[2];

            String_1darray4[0] = Account2.getToken();
            String_1darray4[1] = UGCDetailActivity1.o;
            q3.b( String_1darray4 );
        }
    }

    static TextView d(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.e;
    }

    static ImageButton e(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.i;
    }

    private void e(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                j.setVisibility( 0 );
                l.setVisibility( 8 );
                m.setVisibility( 8 );
                return;
            case 0:
                j.setVisibility( 8 );
                l.setVisibility( 0 );
                m.setVisibility( 8 );
                return;
            case 2:
                j.setVisibility( 8 );
                l.setVisibility( 8 );
                m.setVisibility( 0 );
                return;
        }
    }

    static void f(UGCDetailActivity UGCDetailActivity1)
    {
        new cb( (Activity) UGCDetailActivity1, (cd) new n( UGCDetailActivity1 ) ).a().show();
    }

    static ListView g(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.j;
    }

    static W h(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.k;
    }

    static String i(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.u;
    }

    static String j(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.v;
    }

    static boolean k(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.q;
    }

    static View$OnClickListener l(UGCDetailActivity UGCDetailActivity1)
    {
        return UGCDetailActivity1.t;
    }

    public final void a(int int1)
    {
        T.a( (Context) this, u, w, x, y, int1, (PlatformActionListener) new o( this ) );
    }

    public void onClick(View View1)
    {
        switch( View1.getId() )
        {
            default:
                return;
            case 366:
                b();
                return;
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        String String2;
        View View3;
        View View4;
        UGCNewCollection UGCNewCollection5;

        super.onCreate( Bundle1 );
        setContentView( 2130903138 );
        com.clilystudio.netbook.event.i.a().a( this );
        if( com.clilystudio.netbook.hpay100.a.a.a( getIntent() ) )
        {
            List List13 = getIntent().getData().getPathSegments();

            o = (String) List13.get( -1 + List13.size() );
        }
        else
            o = getIntent().getStringExtra( "book_id" );
        p = getIntent().getBooleanExtra( "my_list", false );
        q = getIntent().getBooleanExtra( "is_draft", false );
        if( p )
            String2 = "\u7F16\u8F91";
        else
            String2 = "\u6536\u85CF";
        a( "\u4E66\u5355\u8BE6\u60C5", String2, (aa) new i( this ) );
        j = (ListView) findViewById( 2131492924 );
        l = findViewById( 2131493085 );
        m = findViewById( 2131493230 );
        m.setOnClickListener( this );
        View3 = LayoutInflater.from( (Context) this ).inflate( 2130903413, (ViewGroup) j, false );
        g = (SmartImageView) View3.findViewById( 2131492899 );
        a = (TextView) View3.findViewById( 2131494029 );
        b = (TextView) View3.findViewById( 2131494028 );
        c = (TextView) View3.findViewById( 2131494024 );
        e = (TextView) View3.findViewById( 2131494025 );
        f = (TextView) View3.findViewById( 2131494030 );
        i = (ImageButton) View3.findViewById( 2131494026 );
        i.setOnClickListener( t );
        h = (TextView) View3.findViewById( 2131494027 );
        h.setOnClickListener( (View$OnClickListener) new k( this ) );
        n = findViewById( 2131493231 );
        n.setOnClickListener( (View$OnClickListener) new l( this ) );
        j.addHeaderView( View3, null, false );
        k = new W( getLayoutInflater() );
        j.setAdapter( (ListAdapter) k );
        View4 = getLayoutInflater().inflate( 2130903414, null );
        j.addFooterView( View4 );
        j.setOnItemClickListener( (AdapterView$OnItemClickListener) new m( this ) );
        UGCNewCollection5 = (UGCNewCollection) getIntent().getSerializableExtra( "modify_update" );
        if( UGCNewCollection5 != null )
        {
            UGCBookDetail UGCBookDetail6;
            List List7;
            UGCBookDetail$UGCBookContainer[] UGCBookContainer_1darray8;
            int int9;

            s = (Author) getIntent().getSerializableExtra( "my_author" );
            UGCBookDetail6 = new UGCBookDetail();
            UGCBookDetail6.setTitle( UGCNewCollection5.getTitle() );
            UGCBookDetail6.setDesc( UGCNewCollection5.getDesc() );
            List7 = UGCNewCollection5.getBooks();
            UGCBookContainer_1darray8 = new UGCBookDetail$UGCBookContainer[List7.size()];
            for( int9 = 0; int9 < List7.size(); ++int9 )
            {
                BookSummary BookSummary10 = (BookSummary) List7.get( int9 );
                UGCBookDetail$UGCBookContainer UGCBookContainer11 = new UGCBookDetail$UGCBookContainer();
                UGCBookDetail$UGCBookContainer$UGCBookItem UGCBookItem12 = new UGCBookDetail$UGCBookContainer$UGCBookItem();

                UGCBookItem12.set_id( BookSummary10.getId() );
                UGCBookItem12.setCover( BookSummary10.getCover() );
                UGCBookItem12.setTitle( BookSummary10.getTitle() );
                UGCBookItem12.setAuthor( BookSummary10.getAuthor() );
                UGCBookItem12.setLatelyFollower( BookSummary10.getLatelyFollower() );
                UGCBookItem12.setWordCount( (long) BookSummary10.getWordCount() );
                UGCBookContainer11.setBook( UGCBookItem12 );
                UGCBookContainer11.setComment( BookSummary10.getAppendComment() );
                UGCBookContainer_1darray8[int9] = UGCBookContainer11;
            }
            UGCBookDetail6.setBooks( UGCBookContainer_1darray8 );
            r = UGCBookDetail6;
            if( s != null )
                r.setAuthor( s );
            a( r );
        }
        else
            b();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }

    public void onUgcDraftEvent(E E1)
    {
        finish();
    }
}
