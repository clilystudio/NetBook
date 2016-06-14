package com.clilystudio.netbook.widget;

import android.text.InputFilter;
import android.text.Spanned;

final class aj implements InputFilter {
    private /* synthetic */ NicknameEditText a;

    private aj(NicknameEditText nicknameEditText) {
        this.a = nicknameEditText;
    }

    /* synthetic */ aj(NicknameEditText nicknameEditText, byte by) {
        this(nicknameEditText);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final CharSequence filter(CharSequence charSequence, int n, int n2, Spanned spanned, int n3, int n4) {
        int n5;
        String string = this.a.getText().toString();
        int n6 = 0;
        for (int i = 0; i < string.length(); n6 += n5, ++i) {
            n5 = Character.isLetterOrDigit(string.charAt(i)) ? 1 : 2;
        }
        if (n6 < 28) return charSequence;
        return "";
    }
}
