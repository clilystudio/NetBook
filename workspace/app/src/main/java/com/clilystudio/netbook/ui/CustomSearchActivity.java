
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.clilystudio.netbook.util.e;

public class CustomSearchActivity extends BaseActivity {

    private EditText a;
    private EditText b;

    static void a(CustomSearchActivity CustomSearchActivity1)
    {
        String String2 = CustomSearchActivity1.a.getText().toString();
        String String3 = CustomSearchActivity1.b.getText().toString();
        int int4;

        if( com.clilystudio.netbook.hpay100.a.a.Q( String2 ) )
        {
            e.a( (Activity) CustomSearchActivity1, "\u4E66\u540D\u4E0D\u80FD\u4E3A\u7A7A" );
            int4 = 0;
        }
        else if( com.clilystudio.netbook.hpay100.a.a.Q( String3 ) )
        {
            e.a( (Activity) CustomSearchActivity1, "\u4F5C\u8005\u4E0D\u80FD\u4E3A\u7A7A" );
            int4 = 0;
        }
        else
            int4 = 1;
        if( int4 != 0 )
        {
            String String5 = new StringBuilder().append( Build.BRAND ).append( " " ).append( Build.MODEL ).toString();
            ba ba6 = new ba( CustomSearchActivity1, (Activity) CustomSearchActivity1, 2131034324 );
            String[] String_1darray7 = new String[3];

            String_1darray7[0] = CustomSearchActivity1.a.getText().toString().trim();
            String_1darray7[1] = CustomSearchActivity1.b.getText().toString().trim();
            String_1darray7[2] = String5;
            ba6.b( String_1darray7 );
        }
    }

    static void b(CustomSearchActivity CustomSearchActivity1)
    {
        CustomSearchActivity1.startActivity( AddBookFailedActivity.a( (Context) CustomSearchActivity1, CustomSearchActivity1.a.getText().toString() ) );
    }

    public void onCreate(Bundle Bundle1)
    {
        Intent Intent2;

        super.onCreate( Bundle1 );
        setContentView( 2130903094 );
        a( 2131034288, 2131034282, (aa) new aZ( this ) );
        a = (EditText) findViewById( 2131493119 );
        b = (EditText) findViewById( 2131493120 );
        Intent2 = getIntent();
        if( Intent2 != null )
        {
            Object Object3 = Intent2.getStringExtra( "AddBookKey" );
            Object Object4;

            if( Object3 != null )
                a.setText( (CharSequence) Object3 );
            Object4 = Intent2.getStringExtra( "extra_author" );
            b.setText( (CharSequence) Object4 );
        }
    }
}
