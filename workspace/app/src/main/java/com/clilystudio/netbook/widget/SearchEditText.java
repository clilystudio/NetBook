package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

public class SearchEditText
        extends EditText {
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
        this.addTextChangedListener(new aw(this));
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
