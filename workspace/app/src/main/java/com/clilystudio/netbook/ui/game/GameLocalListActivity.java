
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ah;
import android.support.v7.widget.ao;
import android.view.LayoutInflater;
import android.view.View;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class GameLocalListActivity extends BaseActivity {

    private RecyclerView a;
    private T b;
    private List c;

    static List a(GameLocalListActivity GameLocalListActivity1)
    {
        return GameLocalListActivity1.c;
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903102 );
        b( "\u6211\u73A9\u8FC7\u7684\u6E38\u620F" );
        c = (List) com.clilystudio.netbook.hpay100.a.a.k( com.clilystudio.netbook.c.h, "played_game.txt" );
        if( c == null )
            c = (List) new ArrayList();
        a = (RecyclerView) findViewById( 2131493133 );
        a.setLayoutManager( (ao) new LinearLayoutManager( (Context) this ) );
        b = new T( this, LayoutInflater.from( (Context) this ) );
        a.setAdapter( (ah) b );
    }
}
