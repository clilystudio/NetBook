package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;

public class NicknameEditText extends EditText {

    public NicknameEditText(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    protected void onFinishInflate() {
        Object[] Object_1darray1;

        super.onFinishInflate();
        Object_1darray1 = new InputFilter[1];
        Object_1darray1[0] = new aj(this, (byte) 0);
        setFilters((InputFilter[]) Object_1darray1);
    }
}
