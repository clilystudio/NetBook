
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.model.GameGiftResponse;
import com.clilystudio.netbook.model.GameGiftResponse$GiftCode;
import com.clilystudio.netbook.model.User;

final class D extends com.clilystudio.netbook.a.c {

    public D(GameGiftListActivity GameGiftListActivity1, Activity Activity2)
    {
        super( Activity2 );
        a = GameGiftListActivity1;
    }

    GameGiftListActivity a;     // final access specifier removed

    private static transient GameGiftResponse a(String[] String_1darray1)
    {
        GameGiftResponse GameGiftResponse4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            GameGiftResponse4 = com.clilystudio.netbook.api.b.b().K( String_1darray1[0], String_1darray1[1] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return GameGiftResponse4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        GameGiftResponse GameGiftResponse2 = (GameGiftResponse) Object1;

        if( GameGiftResponse2 != null )
        {
            if( GameGiftResponse2.isOk() )
            {
                String String3 = GameGiftResponse2.giftCode.code;

                GameGiftRecord.create( GameGiftListActivity.d( a ).getUser().getId(), GameGiftListActivity.c( a )._id, String3 );
                GameGiftListActivity.a( a, String3 );
                com.clilystudio.netbook.util.e.a( (Activity) a, "\u9886\u53D6\u6210\u529F" );
                GameGiftListActivity.e( a ).setText( (CharSequence) "\u67E5\u770B" );
                GameGiftListActivity.e( a ).setBackgroundResource( 2130837819 );
                GameGiftListActivity.e( a ).setOnClickListener( (View$OnClickListener) new E( this, String3 ) );
                GameGiftListActivity.f( a ).setOnClickListener( (View$OnClickListener) new F( this, String3 ) );
            }
            else
                com.clilystudio.netbook.util.e.a( (Activity) a, GameGiftResponse2.getMsg() );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u9886\u53D6\u5931\u8D25" );
    }
}
