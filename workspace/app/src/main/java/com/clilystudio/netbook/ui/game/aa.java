
package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;
import java.util.List;

final class aa implements View$OnClickListener {

    aa(Z Z1, GameLayoutRoot$ModuleLayout$ActivityItem ActivityItem2)
    {
        b = Z1;
        a = ActivityItem2;
    }

    private GameLayoutRoot$ModuleLayout$ActivityItem a;
    private Z b;

    public final void onClick(View View1)
    {
        try
        {
            Object Object3;

            if( GameMicroFragment.e( b.i.a ) != null && GameMicroFragment.e( b.i.a ).indexOf( a.getBannerImage() ) >= 0 )
                com.clilystudio.netbook.umeng.a.b.a( (Context) b.i.a.getActivity(), "micro_game_banner_click", new StringBuilder( "Banner " ).append( GameMicroFragment.e( b.i.a ).indexOf( a.getBannerImage() ) ).toString() );
            Object3 = new InsideLinkIntent( (Context) b.i.a.getActivity(), a.getLink(), true );
            b.i.a.startActivity( (Intent) Object3 );
        }
        catch( UnImplementException UnImplementException2 )
        {
            UnImplementException2.printStackTrace();
            return;
        }
    }
}
