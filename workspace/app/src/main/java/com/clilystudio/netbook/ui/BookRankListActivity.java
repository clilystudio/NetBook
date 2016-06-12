
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.BookRankAdapter;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

public class BookRankListActivity extends BaseActivity {

    private View a;
    private View b;
    private BookRankAdapter c;
    private ListView e;
    private Handler f;

    private void a(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                a.setVisibility( 8 );
                b.setVisibility( 8 );
                return;
            case 0:
                a.setVisibility( 0 );
                b.setVisibility( 8 );
                return;
            case 2:
                a.setVisibility( 8 );
                b.setVisibility( 0 );
                return;
        }
    }

    static void a(BookRankListActivity BookRankListActivity1)
    {
        BookRankListActivity1.b();
    }

    static void a(BookRankListActivity BookRankListActivity1, int int2)
    {
        BookRankListActivity1.a( int2 );
    }

    static ListView b(BookRankListActivity BookRankListActivity1)
    {
        return BookRankListActivity1.e;
    }

    private void b()
    {
        a( 0 );
        new aO( this, (byte) 0 ).b( new Void[0] );
    }

    static BookRankAdapter c(BookRankListActivity BookRankListActivity1)
    {
        return BookRankListActivity1.c;
    }

    public void clickListItem(x x1)
    {
        BookRankSummary BookRankSummary2 = x1.b();
        String String3;
        Intent Intent4;
        String String5;

        if( x1.a() )
            String3 = "male";
        else
            String3 = "female";
        if( !BookRankSummary2.isCollapse() && com.clilystudio.netbook.hpay100.a.a.r( (Context) this, "rank_revision_switch" ) )
            Intent4 = BookRankMainActivity.a( (Context) this, BookRankSummary2.getIds(), BookRankSummary2.getTitle(), String3 );
        else
            Intent4 = BookRankDetailActivity.a( (Context) this, BookRankSummary2.get_id(), BookRankSummary2.getTitle() );
        startActivity( Intent4 );
        String5 = BookRankSummary2.getTitle();
        com.clilystudio.netbook.umeng.a.b.a( (Context) this, "book_rank_list_item", new StringBuilder().append( String5 ).append( "_" ).append( String3 ).toString() );
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903088 );
        b( 2131034450 );
        f = new Handler();
        e = (ListView) findViewById( 2131493101 );
        a = findViewById( 2131493102 );
        b = findViewById( 2131493103 );
        b.setOnClickListener( (View$OnClickListener) new aM( this ) );
        c = new BookRankAdapter( getLayoutInflater() );
        e.setAdapter( (ListAdapter) c );
        b();
    }

    public void onExpand(com.clilystudio.netbook.event.k k1)
    {
        if( com.clilystudio.netbook.hpay100.a.a.g() && !com.clilystudio.netbook.hpay100.a.a.k() && k1.a() == e.getLastVisiblePosition() )
            f.postDelayed( (Runnable) new aN( this, k1 ), 50L );
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
    }
}
