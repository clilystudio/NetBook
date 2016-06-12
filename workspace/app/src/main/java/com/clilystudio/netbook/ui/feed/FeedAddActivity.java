
package com.clilystudio.netbook.ui.feed;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.l;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class FeedAddActivity extends BaseActivity {

    private c a;
    private ListView b;
    private ArrayList c = new ArrayList();
// Error: Internal #201: 
// The following method may not be correct.

    static void a(FeedAddActivity FeedAddActivity1)
    {
    }

    static c b(FeedAddActivity FeedAddActivity1)
    {
        return FeedAddActivity1.a;
    }

    static ArrayList c(FeedAddActivity FeedAddActivity1)
    {
        return FeedAddActivity1.c;
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903097 );
        a( 2131034383, 2131034375, (aa) new a( this ) );
        b = (ListView) findViewById( 2131493124 );
        b.setOnItemClickListener( (AdapterView$OnItemClickListener) new b( this ) );
    }

    public void onResume()
    {
        Object Object1;
        int int2;
        View View3;
        View View4;

        super.onResume();
        a = new c( this, getLayoutInflater() );
        b.setAdapter( (ListAdapter) a );
        Object1 = BookReadRecord.getAllWithTopNoFeed();
        a.a( (Collection) Object1 );
        if( !((List) Object1).isEmpty() )
            int2 = 1;
        else
            int2 = 0;
        View3 = findViewById( 2131493122 );
        View4 = findViewById( 2131493125 );
        if( int2 != 0 )
        {
            View3.setVisibility( 0 );
            View4.setVisibility( 8 );
        }
        else
        {
            View3.setVisibility( 8 );
            View4.setVisibility( 0 );
        }
        c.clear();
    }
}
