
package com.clilystudio.netbook.umeng.update;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class m implements CompoundButton$OnCheckedChangeListener {

    m(UpdateDialogActivity UpdateDialogActivity1)
    {
        a = UpdateDialogActivity1;
    }

    private UpdateDialogActivity a;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        a.b = boolean2;
    }
}
