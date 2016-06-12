
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ah;
import android.support.v7.widget.ao;
import android.view.View;
import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class GameMicroFragment extends BaseLoadingFragment {

    Timer a;
    TimerTask b;
    int c;
    private RecyclerView d;
    private List e;
    private GameLayoutRoot$ModuleLayout f;
    private GameMicroFragment$LayoutAdapter g;
    private Game[] h;
    private List i;

    static List a(GameMicroFragment GameMicroFragment1, List List2)
    {
        GameMicroFragment1.e = List2;
        return List2;
    }

    static Game[] a(GameMicroFragment GameMicroFragment1)
    {
        return GameMicroFragment1.h;
    }

    static Game[] a(GameMicroFragment GameMicroFragment1, Game[] Game_1darray2)
    {
        GameMicroFragment1.h = Game_1darray2;
        return Game_1darray2;
    }

    static int b(GameMicroFragment GameMicroFragment1)
    {
        return GameMicroFragment1.h();
    }

    static List b(GameMicroFragment GameMicroFragment1, List List2)
    {
        GameMicroFragment1.i = List2;
        return List2;
    }

    static GameLayoutRoot$ModuleLayout c(GameMicroFragment GameMicroFragment1)
    {
        return GameMicroFragment1.f;
    }

    static List d(GameMicroFragment GameMicroFragment1)
    {
        return GameMicroFragment1.e;
    }

    static List e(GameMicroFragment GameMicroFragment1)
    {
        return GameMicroFragment1.i;
    }

    private int h()
    {
        if( f == null || f.getGameGroup() == null && f.getGameGroup().getGames() == null )
            return 0;
        else
            return f.getGameGroup().getGames().size();
    }

    protected final int a()
    {
        return 2130903102;
    }

    protected final void b()
    {
        f();
        new W( this, (byte) 0 ).b( new String[0] );
    }

    public final void g()
    {
        GameGroupItem GameGroupItem1;
        Object Object2;

        if( f == null )
            f = new GameLayoutRoot$ModuleLayout();
        f.setModule( "local" );
        f.setTitle( "\u6211\u73A9\u8FC7\u7684" );
        GameGroupItem1 = new GameGroupItem();
        GameGroupItem1.setName( "\u6211\u73A9\u8FC7\u7684" );
        Object2 = (List) com.clilystudio.netbook.hpay100.a.a.k( c.h, "played_game.txt" );
        if( Object2 == null )
            Object2 = new ArrayList();
        GameGroupItem1.setGames( (List) Object2 );
        f.setGameGroup( GameGroupItem1 );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        d.setLayoutManager( (ao) new LinearLayoutManager( (Context) getActivity() ) );
        g = new GameMicroFragment$LayoutAdapter( this );
        d.setAdapter( (ah) g );
        b();
    }

    public void onPause()
    {
        super.onPause();
        com.clilystudio.netbook.umeng.a.b.b( "game_micro_layout" );
    }

    public void onResume()
    {
        super.onResume();
        if( g != null )
        {
            g();
            if( h() == 1 )
                d.setAdapter( (ah) g );
            else
                g.b();
        }
        com.clilystudio.netbook.umeng.a.b.a( "game_micro_layout" );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        super.onViewCreated( View1, Bundle2 );
        d = (RecyclerView) View1.findViewById( 2131493133 );
    }
}
