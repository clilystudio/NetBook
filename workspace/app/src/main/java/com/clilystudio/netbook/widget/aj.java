
package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;

final class aj implements InputFilter {

    aj(NicknameEditText NicknameEditText1, byte byte2)
    {
        this( NicknameEditText1 );
    }

    private NicknameEditText a;

    private aj(NicknameEditText NicknameEditText1)
    {
        a = NicknameEditText1;
    }

    public final CharSequence filter(CharSequence CharSequence1, int int2, int int3, Spanned Spanned4, int int5, int int6)
    {
        int int7 = 0;
        String String8 = a.getText().toString();
        int int9 = 0;
        Object Object11;

        while( int7 < String8.length() )
        {
            int int10;

            if( Character.isLetterOrDigit( String8.charAt( int7 ) ) )
                int10 = 1;
            else
                int10 = 2;
            int9 += int10;
            ++int7;
        }
        if( int9 >= 28 )
            Object11 = "";
        return (CharSequence) Object11;
    }
}
