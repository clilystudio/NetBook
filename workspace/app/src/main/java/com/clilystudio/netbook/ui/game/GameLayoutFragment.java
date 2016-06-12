
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ah;
import android.support.v7.widget.ao;
import android.view.View;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class GameLayoutFragment extends BaseLoadingFragment {

    private RecyclerView b;
    private List c;
    private GameLayoutFragment$LayoutAdapter d;
    private Game e;
    public static int a = 3;
    private BroadcastReceiver f = new G( this );

    static Game a(GameLayoutFragment GameLayoutFragment1, Game Game2)
    {
        GameLayoutFragment1.e = Game2;
        return Game2;
    }

    static List a(GameLayoutFragment GameLayoutFragment1, List List2)
    {
        GameLayoutFragment1.c = List2;
        return List2;
    }

    static void a(GameLayoutFragment GameLayoutFragment1)
    {
        GameLayoutFragment1.h();
    }

    static Game b(GameLayoutFragment GameLayoutFragment1)
    {
        return GameLayoutFragment1.e;
    }

    static List c(GameLayoutFragment GameLayoutFragment1)
    {
        return GameLayoutFragment1.c;
    }

    public static GameLayoutRoot$ModuleLayout g()
    {
        int int1 = 0;
        String[] String_1darray2 = { "\u76D7\u5893\u82F1\u96C4", "\u53EB\u6211\u6076\u9B54\u5927\u4EBA", "\u5973\u795E\u51B2\u6211\u6765" };
        int[] int_1darray3 = { 2130837581, 2130837582, 2130837583 };
        String[] String_1darray4 = { "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWRhb211eWluZ3hpYW9uZyZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU=", "wge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWppYW93b2Vtb2RhcmVuJnJlc291cmNlX3R5cGU9NCZnYW1lbGlzdF90eXBlPXNpbmdsZV9nYW1lX3NldHRpbmcmZnJvbT1zaW5nbGVfZ2FtZQ==", "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPW52c2hlbmNob25nd2xhaSZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU=" };
        GameLayoutRoot$ModuleLayout ModuleLayout5 = new GameLayoutRoot$ModuleLayout();
        GameGroupItem GameGroupItem6;
        Object Object7;

        ModuleLayout5.setModule( "aoyou" );
        ModuleLayout5.setTitle( "H5\u6E38\u620F\u4E13\u533A" );
        GameGroupItem6 = new GameGroupItem();
        GameGroupItem6.setName( "H5\u6E38\u620F\u4E13\u533A" );
        Object7 = new ArrayList();
        while( int1 < a )
        {
            Object Object8 = new Game();

            ((Game) Object8).setName( String_1darray2[int1] );
            ((Game) Object8).setIconId( int_1darray3[int1] );
            ((Game) Object8).setAndroidLink( String_1darray4[int1] );
            ((List) Object7).add( Object8 );
            ++int1;
        }
        GameGroupItem6.setGames( (List) Object7 );
        ModuleLayout5.setGameGroup( GameGroupItem6 );
        return ModuleLayout5;
    }

    private void h()
    {
        if( c != null )
        {
            Iterator Iterator1 = c.iterator();

            while( Iterator1.hasNext() )
            {
                GameLayoutRoot$ModuleLayout ModuleLayout2 = (GameLayoutRoot$ModuleLayout) Iterator1.next();
                Object Object3;

                if( ModuleLayout2.getType() != ModuleType.GAME_GROUP )
                    continue;
                Object3 = new ArrayList( (Collection) ModuleLayout2.getGameGroup().getGames() );
                if( e != null )
                    ((List) Object3).add( e );
                s.a( (Activity) getActivity(), (List) Object3 );
            }
            d.b();
        }
    }

    protected final int a()
    {
        return 2130903102;
    }

    protected final void b()
    {
        f();
        new H( this, (byte) 0 ).b( new String[0] );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        b.setLayoutManager( (ao) new LinearLayoutManager( (Context) getActivity() ) );
        d = new GameLayoutFragment$LayoutAdapter( this );
        b.setAdapter( (ah) d );
        b();
    }

    public void onPause()
    {
        super.onPause();
        getActivity().unregisterReceiver( f );
        com.clilystudio.netbook.umeng.a.b.b( "game_layout" );
    }

    public void onResume()
    {
        super.onResume();
        getActivity().registerReceiver( f, new IntentFilter( "update_game_item_status" ) );
        h();
        com.clilystudio.netbook.umeng.a.b.a( "game_layout" );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        super.onViewCreated( View1, Bundle2 );
        b = (RecyclerView) View1.findViewById( 2131493133 );
    }
}
