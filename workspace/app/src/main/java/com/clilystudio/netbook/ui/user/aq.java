
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import com.clilystudio.netbook.model.ChargePlan;

final class aq implements View$OnClickListener {

    aq(SmsSendActivity SmsSendActivity1)
    {
        a = SmsSendActivity1;
    }

    private SmsSendActivity a;

    public final void onClick(View View1)
    {
        if( SmsSendActivity.a( a, a.mNumberText.getText().toString() ) )
        {
            Intent Intent2 = SmsVerifyActivity.a( (Context) a, SmsSendActivity.c( a ), a.mNumberText.getText().toString() );

            a.startActivity( Intent2 );
        }
        else
            SmsSendActivity.d( a );
    }
}
