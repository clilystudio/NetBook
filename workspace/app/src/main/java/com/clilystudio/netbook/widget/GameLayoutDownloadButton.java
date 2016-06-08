package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class GameLayoutDownloadButton extends NewGameDownloadButton {
    public GameLayoutDownloadButton(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected final void c() {
        setText("安装");
        setTextColor(-1);
        setBackgroundResource(2130837730);
    }
}

