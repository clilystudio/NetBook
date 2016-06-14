package com.clilystudio.netbook.ui.post;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class W implements TextWatcher {
    private /* synthetic */ EditText a;
    private /* synthetic */ Button b;

    W(AddVoteItemActivity addVoteItemActivity, EditText editText, Button button) {
        this.a = editText;
        this.b = button;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
        if (a.Q(this.a.getText().toString())) {
            this.b.setEnabled(false);
            return;
        }
        this.b.setEnabled(true);
    }
}
