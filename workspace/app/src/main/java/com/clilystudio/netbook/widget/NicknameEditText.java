package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;

public class NicknameEditText
        extends EditText {
    public NicknameEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        InputFilter[] arrinputFilter = new InputFilter[]{new aj(this, 0)};
        this.setFilters(arrinputFilter);
    }
}
