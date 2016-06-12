
package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.hpay100.config.k;
import com.clilystudio.netbook.hpay100.config.l;

final class m implements View$OnClickListener {

    m(HPaySdkActivity HPaySdkActivity1)
    {
        a = HPaySdkActivity1;
    }

    private HPaySdkActivity a;

    public final void onClick(View View1)
    {
        Object Object2 = HPaySdkActivity.p( a ).getText().toString();

        com.clilystudio.netbook.hpay100.a.a.b( "dalongTest", new StringBuilder( "input:" ).append( (String) Object2 ).toString() );
        if( TextUtils.isEmpty( (CharSequence) Object2 ) )
        {
            HPaySdkActivity.a( a, HPaySdkActivity.d( a ), false );
            HPaySdkActivity.c( a ).setText( (CharSequence) "\u60A8\u8F93\u5165\u7684\u624B\u673A\u53F7\u6709\u8BEF\uFF0C\u8BF7\u6838\u5BF9\u540E\u518D\u8BD5" );
            HPaySdkActivity.q( a ).setEnabled( false );
        }
        else if( !com.clilystudio.netbook.hpay100.c.b.a( (String) Object2 ) )
        {
            HPaySdkActivity.a( a, HPaySdkActivity.d( a ), false );
            HPaySdkActivity.c( a ).setText( (CharSequence) "\u60A8\u8F93\u5165\u7684\u624B\u673A\u53F7\u6709\u8BEF\uFF0C\u8BF7\u6838\u5BF9\u540E\u518D\u8BD5" );
            HPaySdkActivity.q( a ).setEnabled( false );
        }
        else
        {
            HPaySdkActivity.c( a ).setText( (CharSequence) "" );
            HPaySdkActivity.a( a, HPaySdkActivity.d( a ), true );
            HPaySdkActivity.b( a, (String) Object2 );
            HPaySdkActivity.a( a, "\u6B63\u5728\u83B7\u53D6\u9A8C\u8BC1\u7801\uFF0C\u8BF7\u7A0D\u540E" );
            l.a( (Activity) a, HPaySdkActivity.e( a ), HPaySdkActivity.a(), HPaySdkActivity.f( a ), HPaySdkActivity.g( a ), HPaySdkActivity.i( a ), HPaySdkActivity.r( a ), HPaySdkActivity.s( a ), (k) new u( a, 3 ) );
            com.clilystudio.netbook.hpay100.config.a.a( a.getApplicationContext(), HPaySdkActivity.e( a ), HPaySdkActivity.a(), HPaySdkActivity.f( a ), HPaySdkActivity.g( a ), "1", "", 3 );
        }
    }
}
