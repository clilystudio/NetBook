
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import butterknife.ButterKnife$Finder;

public class SmsSendActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, SmsSendActivity SmsSendActivity2, Object Object3)
    {
        SmsSendActivity2.mNumberText = (EditText) Finder1.findRequiredView( Object3, 2131493210, "field 'mNumberText'" );
        SmsSendActivity2.mNormalLine = Finder1.findRequiredView( Object3, 2131493211, "field 'mNormalLine'" );
        SmsSendActivity2.mErrorLine = Finder1.findRequiredView( Object3, 2131493212, "field 'mErrorLine'" );
        SmsSendActivity2.mWrongText = Finder1.findRequiredView( Object3, 2131493213, "field 'mWrongText'" );
        SmsSendActivity2.mNextBtn = (Button) Finder1.findRequiredView( Object3, 2131493214, "field 'mNextBtn'" );
    }

    public static void reset(SmsSendActivity SmsSendActivity1)
    {
        SmsSendActivity1.mNumberText = null;
        SmsSendActivity1.mNormalLine = null;
        SmsSendActivity1.mErrorLine = null;
        SmsSendActivity1.mWrongText = null;
        SmsSendActivity1.mNextBtn = null;
    }
}
