
package com.clilystudio.netbook.widget;

import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;

public final class j {

    public j(Context Context1, String String2)
    {
        a = new AlertDialog$Builder( Context1 );
        a.setMessage( (CharSequence) "\u662F\u5426\u8DF3\u8F6C\u81F3\u300C17k \u5C0F\u8BF4\u7F51\u300D\uFF1F" );
        a.setNegativeButton( 17039360, null );
        a.setPositiveButton( 17039370, (DialogInterface$OnClickListener) new k( this, String2, Context1 ) );
    }

    private AlertDialog$Builder a;     // final access specifier removed

    public final void a()
    {
        a.create().show();
    }
}
