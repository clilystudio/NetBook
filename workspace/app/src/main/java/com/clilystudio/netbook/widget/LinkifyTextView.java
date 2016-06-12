package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.widget.TextView;

import com.clilystudio.netbook.ui.bd;
import com.clilystudio.netbook.ui.be;
import com.clilystudio.netbook.ui.by;

public class LinkifyTextView extends TextView {

    public LinkifyTextView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public void setLinkifyText(String String1, boolean boolean2) {
        if (boolean2) {
            setText((CharSequence) ((be) new by(getContext(), String1)).b());
            setMovementMethod((MovementMethod) new bd());
        } else {
            setText((CharSequence) new be(getContext(), String1).b());
            setMovementMethod((MovementMethod) new bd());
        }
    }
}
