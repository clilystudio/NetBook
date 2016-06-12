
package com.clilystudio.netbook.hpay100;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.EditText;
import com.clilystudio.netbook.hpay100.c.b;
import com.clilystudio.netbook.hpay100.config.j;

final class t implements j {

    t(HPaySdkActivity HPaySdkActivity1, byte byte2)
    {
        this( HPaySdkActivity1 );
    }

    private HPaySdkActivity a;

    private t(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    public final void a()
    {
        Object Object1 = b.a( a.getApplicationContext(), null );

        if( !android.text.TextUtils.isEmpty( (CharSequence) Object1 ) && HPaySdkActivity.a() == 1 && !com.clilystudio.netbook.hpay100.HPaySdkActivity.m( a ) && HPaySdkActivity.n( a ) != null )
        {
            HPaySdkActivity.n( a ).setText( (CharSequence) Object1 );
            try
            {
                Object Object4;

                HPaySdkActivity.n( a ).setFocusableInTouchMode( true );
                HPaySdkActivity.n( a ).requestFocus();
                Object4 = HPaySdkActivity.n( a ).getText();
                if( Object4 instanceof Spannable )
                    Selection.setSelection( (Spannable) Object4, ((CharSequence) Object4).length() );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                return;
            }
        }
    }
}
