
package com.clilystudio.netbook.ui.post;

import android.text.Editable;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.EditText;
import com.clilystudio.netbook.model.ReplyeeInfo;

final class e implements View$OnClickListener {

    e(AbsPostActivity AbsPostActivity1, ReplyeeInfo ReplyeeInfo2, EditText EditText3)
    {
        c = AbsPostActivity1;
        a = ReplyeeInfo2;
        b = EditText3;
    }

    private ReplyeeInfo a;
    private EditText b;
    private AbsPostActivity c;

    public final void onClick(View View1)
    {
        c.a( a, b.getText().toString() );
    }
}
