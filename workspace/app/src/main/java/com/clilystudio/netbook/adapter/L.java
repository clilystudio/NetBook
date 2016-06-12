
package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class L implements View$OnClickListener {

    L(G G1, Tweet Tweet2, R R3)
    {
        c = G1;
        a = Tweet2;
        b = R3;
    }

    private Tweet a;
    private R b;
    private G c;

    public final void onClick(View View1)
    {
        Account Account2 = am.e();

        if( Account2 == null )
            G.a( c ).startActivity( AuthLoginActivity.a( G.a( c ) ) );
        else if( G.a( Account2, a ) )
        {
            String String5 = a.get_id();
            String String6;
            U U7;
            String[] String_1darray8;

            if( a.isRetween() )
                String6 = a.getRefTweet().get_id();
            else
                String6 = String5;
            G.a( c, a, b );
            com.clilystudio.netbook.util.e.a( (Activity) G.a( c ), "\t\t\u8F6C\u53D1\u6210\u529F\t\t" );
            RetweenRecord.save2DB( Account2.getUser().getId(), String6 );
            U7 = new U( c, a, b );
            String_1darray8 = new String[2];
            String_1darray8[0] = am.e().getToken();
            String_1darray8[1] = String6;
            U7.execute( String_1darray8 );
        }
        else
        {
            String String3 = G.a( c ).getString( 2131034472 );
            String String4;

            if( G.a( a, Account2 ) && !a.isRetween() )
                String4 = G.a( c ).getString( 2131034423 );
            else
                String4 = String3;
            com.clilystudio.netbook.util.e.a( (Activity) G.a( c ), new StringBuilder( "\t\t" ).append( String4 ).append( "\t\t" ).toString() );
        }
    }
}
