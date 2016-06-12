
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
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import uk.me.lewisdeane.ldialogs.h;

public class AddReviewContentActivity extends BaseActivity {

    private String a;
    private EditText c;
    private EditText e;
    private boolean f;
    private boolean g;
    private int b = 0;

    static boolean a(AddReviewContentActivity AddReviewContentActivity1)
    {
        String String2 = AddReviewContentActivity1.c.getText().toString().trim();
        String String3 = AddReviewContentActivity1.e.getText().toString().trim();

        if( com.clilystudio.netbook.hpay100.a.a.Q( String2 ) )
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u8BF7\u8F93\u5165\u4E66\u8BC4\u6807\u9898" );
        else if( String2.length() < 4 )
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u6807\u9898\u5B57\u6570\u4E0D\u80FD\u5C11\u4E8E4\u5B57" );
        else if( com.clilystudio.netbook.hpay100.a.a.Q( String3 ) )
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u8BF7\u8F93\u5165\u4E66\u8BC4\u6B63\u6587" );
        else
        {
            if( com.clilystudio.netbook.hpay100.a.a.Q( String3 ) || String3.length() >= 50 )
                return true;
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u5185\u5BB9\u5B57\u6570\u4E0D\u80FD\u5C11\u4E8E50\u5B57" );
        }
        return false;
    }

    static void b(AddReviewContentActivity AddReviewContentActivity1)
    {
        Account Account2 = am.e();

        if( Account2 == null )
        {
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u8BF7\u767B\u5F55\u540E\u518D\u53D1\u5E03" );
            AddReviewContentActivity1.startActivity( AuthLoginActivity.a( (Context) AddReviewContentActivity1 ) );
        }
        else if( Account2.getUser().getLv() >= 3 )
        {
            String String3 = Account2.getToken();
            h h4 = new h( (Context) AddReviewContentActivity1 );
            View View5 = LayoutInflater.from( (Context) AddReviewContentActivity1 ).inflate( 2130903202, null );
            Object Object8;

            ((TextView) View5.findViewById( 2131493422 )).setText( 2131034587 );
            h4.d = "\u53D1\u5E03";
            h4.a( 2131034583, null );
            h4.b( 2131034129, null );
            Object8 = h4.a( View5 ).b();
            ((Button) ((Dialog) Object8).findViewById( 16908313 )).setOnClickListener( (View$OnClickListener) new E( AddReviewContentActivity1, (Dialog) Object8, String3 ) );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) AddReviewContentActivity1, "\u5F88\u62B1\u6B49\uFF0C\u60A8\u7684\u7B49\u7EA7\u4E0D\u591F" );
    }

    static EditText c(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.c;
    }

    static EditText d(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.e;
    }

    static String e(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.a;
    }

    static int f(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.b;
    }

    static boolean g(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.g;
    }

    static boolean h(AddReviewContentActivity AddReviewContentActivity1)
    {
        return AddReviewContentActivity1.f;
    }

    static void i(AddReviewContentActivity AddReviewContentActivity1)
    {
        MyApplication.a().a( new String[] { "saveToLocalReviewTitle", "saveToLocalReviewDesc" } );
    }

    public void onBackPressed()
    {
        String String1 = c.getText().toString();
        String String2 = e.getText().toString();
        int int3;

        if( !com.clilystudio.netbook.hpay100.a.a.Q( String1 ) || !com.clilystudio.netbook.hpay100.a.a.Q( String2 ) )
            int3 = 1;
        else
            int3 = 0;
        if( int3 != 0 )
        {
            String String4 = c.getText().toString();
            String String5 = e.getText().toString();

            if( !com.clilystudio.netbook.hpay100.a.a.Q( String4 ) )
                MyApplication.a().a( "saveToLocalReviewTitle", String4 );
            if( !com.clilystudio.netbook.hpay100.a.a.Q( String5 ) )
                MyApplication.a().a( "saveToLocalReviewDesc", String5 );
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle Bundle1)
    {
        Bundle Bundle2;

        super.onCreate( Bundle1 );
        setContentView( 2130903077 );
        Bundle2 = getIntent().getExtras();
        if( Bundle2 != null )
            g = "BOOK_COMMENT".equals( Bundle2.getString( "INTENT_TYPE_NAME" ) );
        a( 2131034295, 2131034448, (aa) new D( this ) );
        a = getIntent().getStringExtra( "bookReviewBookId" );
        b = getIntent().getIntExtra( "bookReviewBookRating", 0 );
        f = getIntent().getBooleanExtra( "isFromBookReviewList", false );
        c = (EditText) findViewById( 2131493070 );
        e = (EditText) findViewById( 2131493071 );
        am.a( c, "saveToLocalReviewTitle" );
        am.a( e, "saveToLocalReviewDesc" );
    }
}
