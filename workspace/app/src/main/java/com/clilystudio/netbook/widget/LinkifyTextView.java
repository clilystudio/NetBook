package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.widget.TextView;

import com.clilystudio.netbook.ui.bd;
import com.clilystudio.netbook.ui.be;
import com.clilystudio.netbook.ui.by;

public class LinkifyTextView extends TextView {
    public LinkifyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setLinkifyText(String string, boolean bl) {
        if (bl) {
            this.setText(new by(this.getContext(), string).b());
            this.setMovementMethod((MovementMethod) ((Object) new bd()));
            return;
        }
        this.setText(new be(this.getContext(), string).b());
        this.setMovementMethod((MovementMethod) ((Object) new bd()));
    }
}
