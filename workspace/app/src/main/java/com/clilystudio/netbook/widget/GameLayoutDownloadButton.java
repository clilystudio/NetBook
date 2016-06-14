package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

public class GameLayoutDownloadButton extends NewGameDownloadButton {
    public GameLayoutDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected final void c() {
        this.setText("\u5b89\u88c5");
        this.setTextColor(-1);
        this.setBackgroundResource(2130837730);
    }
}
