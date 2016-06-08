package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

import com.clilystudio.netbook.ui.bd;
import com.clilystudio.netbook.ui.be;
import com.clilystudio.netbook.ui.by;

public class LinkifyTextView extends TextView {
    public LinkifyTextView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public void setLinkifyText(String paramString, boolean paramBoolean) {
        if (paramBoolean) {
            setText(new by(getContext(), paramString).b());
            setMovementMethod(new bd());
            return;
        }
        setText(new be(getContext(), paramString).b());
        setMovementMethod(new bd());
    }
}

