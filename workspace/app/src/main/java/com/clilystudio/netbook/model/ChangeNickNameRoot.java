
package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class ChangeNickNameRoot extends CodeRoot {

    private String[][] codeMap = { 
        { "LV_NOT_ENOUGH", "\u7B49\u7EA7\u4E0D\u591F" }, 
        { "TOO_LONG", "\u540D\u5B57\u592A\u957F" }, 
        { "ILLEGAL_NICKNAME", "\u4E0D\u5408\u6CD5\u7684\u540D\u5B57" }, 
        { "TOO_OFTEN", "\u4FEE\u6539\u95F4\u9694\u5C11\u4E8E30\u5929" }
        };

    public String getErrorMessage()
    {
        if( TextUtils.isEmpty( (CharSequence) getCode() ) )
            return "";
        else
        {
            String[][] String_2darray1 = codeMap;
            int int2 = String_2darray1.length;
            int int3 = 0;

            while( int3 < int2 )
            {
                String[] String_1darray4 = String_2darray1[int3];

                if( String_1darray4[0].equals( getCode() ) )
                    return String_1darray4[1];
                else
                    ++int3;
            }
            return "\u66F4\u65B0\u5931\u8D25";
        }
    }
}
