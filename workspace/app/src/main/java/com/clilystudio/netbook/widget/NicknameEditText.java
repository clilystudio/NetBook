package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.AttributeSet;
import android.widget.EditText;

public class NicknameEditText extends EditText {
    public NicknameEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        InputFilter[] arrinputFilter = new InputFilter[]{new InputFilter() {
            @Override
            public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
                String string = getText().toString();
                int n6 = 0;
                for (int i = 0; i < string.length(); ++i) {
                    n6 += Character.isLetterOrDigit(string.charAt(i)) ? 1 : 2;
                }
                if (n6 < 28) return source;
                return "";
            }
        }};
        this.setFilters(arrinputFilter);
    }
}
