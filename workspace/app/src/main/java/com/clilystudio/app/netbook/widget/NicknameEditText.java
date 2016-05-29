package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.EditText;

public class NicknameEditText extends EditText {
    public NicknameEditText(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        InputFilter[] arrayOfInputFilter = new InputFilter[1];
        arrayOfInputFilter[0] = new aj(this, 0);
        setFilters(arrayOfInputFilter);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.NicknameEditText
 * JD-Core Version:    0.6.2
 */