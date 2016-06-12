
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.util.ArrayList;
import java.util.List;

public class BookTagListActivity extends BaseLoadingActivity {

    private aW a;
    private aV b;
    private String c;
    private ScrollLoadListView e;
    private View f;
    private List g = new ArrayList();
    private av h = new aU( this );
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }

    static aW a(BookTagListActivity BookTagListActivity1, aW aW2)
    {
        BookTagListActivity1.a = aW2;
        return aW2;
    }

    static List a(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.g;
    }

    static void a(BookTagListActivity BookTagListActivity1, BookSummary BookSummary2)
    {
        if( BookSummary2 != null )
            BookTagListActivity1.startActivity( BookInfoActivity.a( (Context) BookTagListActivity1, BookSummary2.getId() ) );
    }

    static String b(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.c;
    }

    static View c(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.f;
    }

    static aV d(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.b;
    }

    static ScrollLoadListView e(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.e;
    }

    static av f(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.h;
    }

    static aW g(BookTagListActivity BookTagListActivity1)
    {
        return BookTagListActivity1.a;
    }

    protected final void b()
    {
        i();
        new aX( this, (byte) 0 ).b( new String[0] );
    }

    public void onCreate(Bundle Bundle1)
    {
        LayoutInflater LayoutInflater2;

        super.onCreate( Bundle1 );
        a( 2130903386 );
        c = getIntent().getStringExtra( "TAG_LIST_KEY" );
        b( c );
        LayoutInflater2 = LayoutInflater.from( (Context) this );
        f = LayoutInflater2.inflate( 2130903325, null );
        f.setVisibility( 8 );
        e = (ScrollLoadListView) findViewById( 2131493981 );
        e.addFooterView( f );
        e.setOnItemClickListener( (AdapterView$OnItemClickListener) new aT( this ) );
        b = new aV( this, LayoutInflater2 );
        e.setAdapter( (ListAdapter) b );
        b();
    }
}
