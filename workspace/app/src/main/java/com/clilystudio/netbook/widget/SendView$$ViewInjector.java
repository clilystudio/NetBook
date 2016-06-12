
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import butterknife.ButterKnife$Finder;

public class SendView$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, SendView SendView2, Object Object3)
    {
        SendView2.mSendContent = (EditText) Finder1.findRequiredView( Object3, 2131494004, "field 'mSendContent'" );
        SendView2.mSendView = (ImageView) Finder1.findRequiredView( Object3, 2131494005, "field 'mSendView'" );
    }

    public static void reset(SendView SendView1)
    {
        SendView1.mSendContent = null;
        SendView1.mSendView = null;
    }
}
