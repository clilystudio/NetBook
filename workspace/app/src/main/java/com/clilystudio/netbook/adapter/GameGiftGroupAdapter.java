
package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;
import com.clilystudio.netbook.widget.GiftGameGiftButton;
import java.util.List;

public final class GameGiftGroupAdapter extends u {

    public GameGiftGroupAdapter(Activity Activity1)
    {
        a = LayoutInflater.from( (Context) Activity1 );
        b = am.e();
    }

    private LayoutInflater a;
    private Account b;

    static void a(GameGiftGroupAdapter GameGiftGroupAdapter1, GiftGame GiftGame2)
    {
        List List3 = GameGiftGroupAdapter1.f();

        if( List3 != null )
        {
            GiftGameGift[] GiftGameGift_1darray4 = GiftGame2.gifts;

            if( GiftGameGift_1darray4 != null && GiftGameGift_1darray4.length > 3 )
            {
                String String5 = GiftGame2.get_id();
                int int6;

label_38:
                {
                    for( int6 = 0; int6 < List3.size(); ++int6 )
                    {
                        GameGiftGroup GameGiftGroup11 = (GameGiftGroup) List3.get( int6 );

                        if( GameGiftGroup11.getType() == 0 && String5.equals( GameGiftGroup11.getGame().get_id() ) )
                            break label_38;
                    }
                    int6 = -1;
                }
                if( int6 >= 0 )
                {
                    int int7 = int6 + 3;
                    int int8;

                    for( int8 = 3; int8 < GiftGameGift_1darray4.length; ++int8 )
                    {
                        Object Object10;

                        ++int7;
                        Object10 = new GameGiftGroup();
                        ((GameGiftGroup) Object10).setType( 1 );
                        ((GameGiftGroup) Object10).setGift( GiftGameGift_1darray4[int8] );
                        ((GameGiftGroup) Object10).setGame( GiftGame2 );
                        List3.add( int7, Object10 );
                    }
                    List3.remove( int7 + 1 );
                    GameGiftGroupAdapter1.a( List3 );
                    return;
                }
            }
        }
    }

    public final int getItemViewType(int int1)
    {
        return ((GameGiftGroup) getItem( int1 )).getType();
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3)
    {
        GameGiftGroup GameGiftGroup4 = (GameGiftGroup) getItem( int1 );
        int int5 = GameGiftGroup4.getType();

        if( View2 == null )
        {
            switch( int5 )
            {
                case 0:
                    View2 = a.inflate( 2130903280, ViewGroup3, false );
                    break;
                case 1:
                    View2 = a.inflate( 2130903281, ViewGroup3, false );
                    break;
                case 2:
                    View2 = a.inflate( 2130903282, ViewGroup3, false );
                    break;
                default:
                    break;
            }
        }
        switch( int5 )
        {
            default:
                return View2;
            case 0:
                GiftGame GiftGame8 = GameGiftGroup4.getGame();
                GameGiftGroupAdapter$GameHolder GameHolder9 = new GameGiftGroupAdapter$GameHolder( View2 );

                GameHolder9.icon.setImageUrl( GiftGame8.icon, 2130837766 );
                GameHolder9.title.setText( (CharSequence) GiftGame8.getName() );
                GameHolder9.desc.setText( (CharSequence) new StringBuilder( "\u6709 " ).append( GiftGame8.followers ).append( " \u4E2A\u5C0F\u4F19\u4F34\u5728\u73A9" ).toString() );
                GameHolder9.button.setGame( GiftGame8 );
                GameHolder9.button.a( GiftGame8.getDownloadStatus() );
                return View2;
            case 1:
                GiftGameGift GiftGameGift6 = GameGiftGroup4.getGift();
                GameGiftGroupAdapter$GiftHolder GiftHolder7 = new GameGiftGroupAdapter$GiftHolder( View2 );

                GiftHolder7.title.setText( (CharSequence) GiftGameGift6.title );
                GiftHolder7.desc.setText( (CharSequence) GiftGameGift6.description );
                GiftHolder7.button.setGift( GiftGameGift6 );
                GiftHolder7.button.setGame( GameGiftGroup4.getGame() );
                GiftHolder7.button.setAccount( b );
                GiftHolder7.button.a( GameGiftGroup4.getGame().getDownloadStatus() );
                return View2;
            case 2:
                new GameGiftGroupAdapter$MoreHolder( View2 ).title.setOnClickListener( (View$OnClickListener) new n( this, GameGiftGroup4 ) );
                return View2;
        }
    }

    public final int getViewTypeCount()
    {
        return 3;
    }
}
