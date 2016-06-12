
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.LinearLayout;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Account;

public class PostAgreeView extends LinearLayout implements View$OnClickListener {

    public PostAgreeView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private String a;

    public void onClick(View View1)
    {
        Account Account2 = am.a( (Activity) getContext() );

        if( a != null && Account2 != null )
        {
            an an3;
            String[] String_1darray4;

            setAgree( true );
            an3 = new an( this, (byte) 0 );
            String_1darray4 = new String[2];
            String_1darray4[0] = a;
            String_1darray4[1] = Account2.getToken();
            an3.b( String_1darray4 );
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setOnClickListener( this );
    }

    public void setAgree(boolean boolean1)
    {
        View View2 = findViewById( 2131493841 );

        if( boolean1 )
        {
            setOnClickListener( null );
            View2.setEnabled( false );
            setBackgroundResource( 2130837618 );
        }
        else
        {
            setOnClickListener( this );
            View2.setEnabled( true );
            setBackgroundResource( 2130837617 );
        }
    }

    public void setPostId(String String1)
    {
        String String2;
        Account Account3;

        a = String1;
        String2 = a;
        Account3 = am.e();
        if( Account3 != null && PostAgreeRecord.get( Account3.getToken(), String2 ) != null )
            setAgree( true );
    }
}
