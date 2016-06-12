
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.AbsListView$LayoutParams;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.clilystudio.netbook.ui.BaseLoadingFragment;

public class GameCatListFragment extends BaseLoadingFragment {

    private ListView a;
    private b b;

    static ListView a(GameCatListFragment GameCatListFragment1)
    {
        return GameCatListFragment1.a;
    }

    static b b(GameCatListFragment GameCatListFragment1)
    {
        return GameCatListFragment1.b;
    }

    protected final int a()
    {
        return 2130903321;
    }

    protected final void b()
    {
        f();
        new c( this, (byte) 0 ).b( new String[0] );
    }

    public void onActivityCreated(Bundle Bundle1)
    {
        TypedArray TypedArray2;
        int int3;
        Object Object4;
        ListView ListView5;
        int int6;
        View View7;

        super.onActivityCreated( Bundle1 );
        a.setDividerHeight( 0 );
        TypedArray2 = getActivity().getTheme().obtainStyledAttributes( new int[] { 2130771972 } );
        int3 = TypedArray2.getResourceId( 0, 2131427422 );
        TypedArray2.recycle();
        Object4 = getActivity();
        ListView5 = a;
        int6 = ((Context) Object4).getResources().getDimensionPixelSize( 2131099926 );
        View7 = new View( (Context) Object4 );
        View7.setLayoutParams( (ViewGroup$LayoutParams) new AbsListView$LayoutParams( -2, int6 ) );
        View7.setBackgroundResource( int3 );
        ListView5.addHeaderView( View7, null, false );
        b = new b( this, LayoutInflater.from( (Context) getActivity() ) );
        a.setAdapter( (ListAdapter) b );
        a.setOnItemClickListener( (AdapterView$OnItemClickListener) new a( this ) );
        b();
    }

    public void onPause()
    {
        super.onPause();
        com.clilystudio.netbook.umeng.a.b.b( "game_cate" );
    }

    public void onResume()
    {
        super.onResume();
        com.clilystudio.netbook.umeng.a.b.a( "game_cate" );
    }

    public void onViewCreated(View View1, Bundle Bundle2)
    {
        super.onViewCreated( View1, Bundle2 );
        a = (ListView) View1.findViewById( 2131493135 );
    }
}
