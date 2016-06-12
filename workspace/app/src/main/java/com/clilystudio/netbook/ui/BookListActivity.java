
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.netbook.adapter.g;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookRankDetail;

public abstract class BookListActivity extends BaseActivity {

    protected g a;
    private View b;
    private View c;
    private TextView e;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3)
    {
    }

    protected void a(int int1)
    {
        if( int1 >= 0 && int1 < a.getCount() )
            startActivity( BookInfoActivity.a( (Context) this, ((BookRankDetail) a.getItem( int1 )).get_id() ) );
    }

    protected abstract void b();

    protected final void e(int int1)
    {
        switch( int1 )
        {
            default:
                return;
            case 1:
                b.setVisibility( 8 );
                c.setVisibility( 8 );
                e.setVisibility( 8 );
                return;
            case 0:
                b.setVisibility( 0 );
                c.setVisibility( 8 );
                e.setVisibility( 8 );
                return;
            case 2:
                b.setVisibility( 8 );
                c.setVisibility( 0 );
                e.setVisibility( 8 );
                return;
            case 3:
                b.setVisibility( 8 );
                c.setVisibility( 8 );
                e.setVisibility( 0 );
                return;
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        ListView ListView2;

        super.onCreate( Bundle1 );
        setContentView( 2130903108 );
        b( getIntent().getStringExtra( "book_list_title" ) );
        b = findViewById( 2131493081 );
        e = (TextView) findViewById( 2131493080 );
        c = findViewById( 2131493082 );
        c.setOnClickListener( (View$OnClickListener) new aJ( this ) );
        a = new g( getLayoutInflater() );
        ListView2 = (ListView) findViewById( 2131493135 );
        ListView2.setAdapter( (ListAdapter) a );
        ListView2.setOnItemClickListener( (AdapterView$OnItemClickListener) new aK( this ) );
        b();
    }
}
