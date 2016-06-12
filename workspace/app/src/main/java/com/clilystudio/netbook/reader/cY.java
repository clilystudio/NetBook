
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;

final class cY implements View$OnClickListener {

    cY(SettingWidget SettingWidget1)
    {
        a = SettingWidget1;
    }

    private SettingWidget a;

    public final void onClick(View View1)
    {
        SettingWidget.d( a ).setSelected( false );
        SettingWidget.e( a ).setSelected( true );
        SettingWidget.f( a ).setSelected( false );
        SettingWidget.b( a ).a( 2 );
        SettingWidget.g( a ).a();
    }
}
