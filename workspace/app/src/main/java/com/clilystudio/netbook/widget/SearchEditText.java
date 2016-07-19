package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;

public class SearchEditText extends EditText {
    private boolean a;
    private OnUserInputListener b;

    public SearchEditText(Context context) {
        super(context);
        this.a();
    }

    public SearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a();
    }

    private void a() {
        this.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                if (SearchEditText.this.a) {
                    SearchEditText.this.a = false;
                } else {
                    if (SearchEditText.this.b != null) {
                        SearchEditText.this.b.a();
                    }
                }
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });
    }

    public void setOnUserInputListener(OnUserInputListener ax2) {
        this.b = ax2;
    }

    public void setTextByCode(String string) {
        if (string != null) {
            this.a = true;
            this.setText(string);
            this.setSelection(string.length());
        }
    }

    public interface OnUserInputListener {
        void a();
    }
}
