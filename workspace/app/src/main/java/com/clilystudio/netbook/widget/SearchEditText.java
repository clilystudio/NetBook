package com.clilystudio.netbook.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;

public class SearchEditText extends EditText {
    private boolean a;
    private ax b;

    public SearchEditText(Context context) {
        super(context);
        this.a();
    }

    public SearchEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a();
    }

    static /* synthetic */ boolean a(SearchEditText searchEditText) {
        return searchEditText.a;
    }

    static /* synthetic */ boolean a(SearchEditText searchEditText, boolean bl) {
        searchEditText.a = false;
        return false;
    }

    static /* synthetic */ ax b(SearchEditText searchEditText) {
        return searchEditText.b;
    }

    private void a() {
        this.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                if (SearchEditText.a(SearchEditText.this)) {
                    SearchEditText.a(SearchEditText.this, false);
                    return;
                } else {
                    if (SearchEditText.b(SearchEditText.this) == null) return;
                    {
                        SearchEditText.b(SearchEditText.this).a();
                        return;
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

    public void setOnUserInputListener(ax ax2) {
        this.b = ax2;
    }

    public void setTextByCode(String string) {
        if (string != null) {
            this.a = true;
            this.setText(string);
            this.setSelection(string.length());
        }
    }
}
