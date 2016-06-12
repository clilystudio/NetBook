
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;

final class cZ implements View$OnClickListener {

    cZ(SettingWidget SettingWidget1)
    {
        a = SettingWidget1;
    }

    private SettingWidget a;

    public final void onClick(View View1)
    {
        SettingWidget.d( a ).setSelected( false );
        SettingWidget.e( a ).setSelected( false );
        SettingWidget.f( a ).setSelected( true );
        SettingWidget.b( a ).a( 3 );
        SettingWidget.g( a ).a();
    }
}
