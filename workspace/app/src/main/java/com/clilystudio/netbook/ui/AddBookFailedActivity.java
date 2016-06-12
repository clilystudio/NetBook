
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.d;

public class AddBookFailedActivity extends BaseActivity {
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2)
    {
    }

    public void onCreate(Bundle Bundle1)
    {
        String String2;

        super.onCreate( Bundle1 );
        setContentView( 2130903073 );
        b( 2131034288 );
        String2 = getIntent().getStringExtra( "bookTitle" );
        ((TextView) findViewById( 2131493064 )).setText( (CharSequence) new StringBuilder( "\u8FFD\u4E66\u541B\u6B63\u5954\u8D70\u5728\u627E\u300A" ).append( String2 ).append( "\u300B\u7684\u8DEF\u4E0A\uFF0C\u8BF7\u8010\u5FC3\u7B49\u5F85" ).toString() );
    }
}
