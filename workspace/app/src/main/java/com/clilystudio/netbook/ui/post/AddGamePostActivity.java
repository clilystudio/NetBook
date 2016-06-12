
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.sharesdk.framework.ShareSDK;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import uk.me.lewisdeane.ldialogs.h;

public class AddGamePostActivity extends BaseActivity {

    private EditText a;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }

    static boolean a(AddGamePostActivity AddGamePostActivity1)
    {
        if( !com.clilystudio.netbook.hpay100.a.a.Q( AddGamePostActivity1.a.getText().toString().trim() ) )
            return true;
        com.clilystudio.netbook.util.e.a( (Activity) AddGamePostActivity1, "\u8BF7\u8F93\u5165\u6B63\u6587" );
        return false;
    }

    static void b(AddGamePostActivity AddGamePostActivity1)
    {
        Account Account2 = am.e();

        if( Account2 == null )
        {
            com.clilystudio.netbook.util.e.a( (Activity) AddGamePostActivity1, "\u8BF7\u767B\u5F55\u540E\u518D\u53D1\u5E03" );
            AddGamePostActivity1.startActivity( AuthLoginActivity.a( (Context) AddGamePostActivity1 ) );
        }
        else if( Account2.getUser().getLv() >= 2 )
        {
            String String3 = Account2.getToken();
            h h4 = new h( (Context) AddGamePostActivity1 );
            View View5 = LayoutInflater.from( (Context) AddGamePostActivity1 ).inflate( 2130903202, null );
            Object Object8;

            ((TextView) View5.findViewById( 2131493422 )).setText( 2131034585 );
            h4.d = "\u53D1\u5E03";
            h4.a( 2131034583, null );
            h4.b( 2131034129, (DialogInterface$OnClickListener) new p( AddGamePostActivity1 ) );
            Object8 = h4.a( View5 ).b();
            ((Button) ((Dialog) Object8).findViewById( 16908313 )).setOnClickListener( (View$OnClickListener) new q( AddGamePostActivity1, (Dialog) Object8, String3 ) );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) AddGamePostActivity1, "\u5F88\u62B1\u6B49\uFF0C\u60A8\u7684\u7B49\u7EA7\u4E0D\u591F" );
    }

    static EditText c(AddGamePostActivity AddGamePostActivity1)
    {
        return AddGamePostActivity1.a;
    }

    public void onBackPressed()
    {
        int int1;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( a.getText().toString() ) )
            int1 = 1;
        else
            int1 = 0;
        if( int1 != 0 )
        {
            h h2 = new h( (Context) this );

            h2.d = "\u63D0\u793A";
            h2.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u8F93\u5165\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
            h2.b( "\u7559\u5728\u6B64\u9875", (DialogInterface$OnClickListener) new r( this ) );
            h2.a( "\u79BB\u5F00", (DialogInterface$OnClickListener) new s( this ) );
            h2.a().show();
        }
        else
            super.onBackPressed();
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903075 );
        a( 2131034293, 2131034448, (aa) new o( this ) );
        ShareSDK.initSDK( (Context) this );
        a = (EditText) findViewById( 2131493067 );
    }
}
