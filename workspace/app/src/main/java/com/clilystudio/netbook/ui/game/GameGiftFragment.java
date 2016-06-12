
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.GameGiftGroupAdapter;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import java.util.ArrayList;
import java.util.List;

public class GameGiftFragment extends BaseLoadingFragment {

    private ListView a;
    private GameGiftGroupAdapter b;
    private List c;
    private BroadcastReceiver d = new u( this );

    static ListView a(GameGiftFragment GameGiftFragment1)
    {
        return GameGiftFragment1.a;
    }

    static List a(GameGiftFragment GameGiftFragment1, List List2)
    {
        GameGiftFragment1.c = List2;
        return List2;
    }

    static List b(GameGiftFragment GameGiftFragment1)
    {
        return GameGiftFragment1.c;
    }

    static void c(GameGiftFragment GameGiftFragment1)
    {
        GameGiftFragment1.g();
    }

    static GameGiftGroupAdapter d(GameGiftFragment GameGiftFragment1)
    {
        return GameGiftFragment1.b;
    }

    private void g()
    {
        if( c != null )
        {
            Object Object1 = new ArrayList();
            int int2;

            for( int2 = 0; int2 < c.size(); ++int2 )
            {
                GameGiftGroup GameGiftGroup3 = (GameGiftGroup) c.get( int2 );

                if( GameGiftGroup3.getType() == 0 )
                    ((List) Object1).add( GameGiftGroup3.getGame() );
            }
            ao.a( (Activity) getActivity(), (List) Object1 );
            b.notifyDataSetChanged();
        }
    }

    protected final int a()
    {
        return 2130903321;
    }

    protected final void b()
    {
        f();
        new v( this, (byte) 0 ).b( new String[0] );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        super.onActivityCreated( Bundle1 );
        a.setDividerHeight( 0 );
        b = new GameGiftGroupAdapter( (Activity) getActivity() );
        a.setAdapter( (ListAdapter) b );
        a.setOnItemClickListener( (AdapterView$OnItemClickListener) new t( this ) );
        b();
    }

    public void onPause()
    {
        super.onPause();
        getActivity().unregisterReceiver( d );
        com.clilystudio.netbook.umeng.a.b.b( "game_gift" );
    }

    public void onResume()
    {
        super.onResume();
        getActivity().registerReceiver( d, new IntentFilter( "update_game_item_status" ) );
        g();
        com.clilystudio.netbook.umeng.a.b.a( "game_gift" );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        super.onViewCreated( View1, Bundle2 );
        a = (ListView) View1.findViewById( 2131493135 );
    }
}
