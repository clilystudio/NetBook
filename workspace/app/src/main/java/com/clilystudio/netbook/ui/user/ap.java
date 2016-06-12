
package com.clilystudio.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class ap implements TextWatcher {

    ap(SmsSendActivity SmsSendActivity1)
    {
        a = SmsSendActivity1;
    }

    private SmsSendActivity a;

    public final void afterTextChanged(Editable Editable1)
    {
        SmsSendActivity.a( a );
        if( Editable1 == null || Editable1.toString() == null )
            SmsSendActivity.a( a, false );
        else
        {
            String String2 = Editable1.toString().replace( (CharSequence) " ", (CharSequence) "" );
            String[] String_1darray3 = SmsSendActivity.b( a );
            int int4 = String_1darray3.length;
            int int5 = 0;

            while( int5 < int4 )
            {
                String String6 = String_1darray3[int5];

                if( String2.startsWith( String6 ) && String2.length() == 11 + String6.length() )
                {
                    SmsSendActivity.a( a, true );
                    return;
                }
                else
                    ++int5;
            }
            SmsSendActivity.a( a, false );
        }
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }
}
