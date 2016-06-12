
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.util.e;

final class G implements View$OnClickListener {

    G(GameGiftItemView GameGiftItemView1, com.clilystudio.netbook.view.a a2, String String3)
    {
        c = GameGiftItemView1;
        a = a2;
        b = String3;
    }

    private com.clilystudio.netbook.view.a a;
    private String b;
    private GameGiftItemView c;

    public final void onClick(View View1)
    {
        a.dismiss();
        am.a( c.getContext(), b );
        e.a( (Activity) c.getContext(), "\u5DF2\u590D\u5236" );
        if( GameGiftItemView.b( c ) )
        {
            am.a( c.getContext(), GameGiftItemView.c( c ).game );
            com.clilystudio.netbook.umeng.a.b.a( c.getContext(), "micro_game_play_click", GameGiftItemView.c( c ).game.getName() );
        }
        else
            am.d( c.getContext(), GameGiftItemView.c( c ).game.getAndroidPackageName() );
    }
}
