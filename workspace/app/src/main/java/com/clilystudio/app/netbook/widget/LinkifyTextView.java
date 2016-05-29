package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.bd;
import com.clilystudio.app.netbook.ui.be;
import com.clilystudio.app.netbook.ui.by;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.LinkifyTextView
 * JD-Core Version:    0.6.2
 */