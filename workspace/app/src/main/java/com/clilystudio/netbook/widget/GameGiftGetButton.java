
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

public class GameGiftGetButton extends GameDownloadButton {

    public GameGiftGetButton(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        try
        {
            ((GameDetailActivity) Context1).a( this );
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return;
        }
    }

    private GameGiftItemView a;

    protected final void a()
    {
        setText( (CharSequence) "\u4E0B\u8F7D" );
        setBackgroundResource( 2131427379 );
    }

    protected final void b()
    {
        setText( (CharSequence) "\u4E0B\u8F7D\u4E2D" );
        setBackgroundResource( 2131427377 );
    }

    protected final void c()
    {
        setText( (CharSequence) "\u5B89\u88C5" );
        setBackgroundResource( 2131427378 );
    }

    protected final void d()
    {
        if( a != null )
            a.a();
    }

    public void setGiftItemView(GameGiftItemView GameGiftItemView1)
    {
        a = GameGiftItemView1;
    }
}
