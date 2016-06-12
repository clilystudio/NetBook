
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.ButterKnife;

class HomeShelfAdapter$TxtHolder {

    HomeShelfAdapter$TxtHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    CheckBox check;
    TextView desc;
    TextView title;
    View top;
}
