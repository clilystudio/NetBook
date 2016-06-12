
package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class ay implements TextWatcher {

    ay(SendView SendView1)
    {
        a = SendView1;
    }

    private SendView a;

    public final void afterTextChanged(Editable Editable1)
    {
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4)
    {
        SendView.a( a );
    }
}
