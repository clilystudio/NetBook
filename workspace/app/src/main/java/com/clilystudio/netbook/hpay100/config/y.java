
package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.text.TextUtils;

final class y implements k {

    y(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void a(String String1)
    {
        try
        {
            if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) )
            {
                String String3 = l.f( a.getApplicationContext() );

                a.b.edit().putString( String3, String1 ).commit();
            }
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }
}
