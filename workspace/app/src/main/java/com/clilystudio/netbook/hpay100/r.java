
package com.clilystudio.netbook.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

final class r implements TextWatcher {

    r(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void afterTextChanged(Editable Editable1)
    {
        Object Object2 = Editable1.toString().trim();

        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "yzm:" ).append( (String) Object2 ).toString() );
        if( TextUtils.isEmpty( (CharSequence) Object2 ) )
            HPaySdkActivity.v( a ).setEnabled( false );
        else
            HPaySdkActivity.v( a ).setEnabled( true );
        HPaySdkActivity.k( a ).setText( (CharSequence) "" );
        HPaySdkActivity.a( a, HPaySdkActivity.l( a ), true );
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }
}
