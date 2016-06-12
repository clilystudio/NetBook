
package com.clilystudio.netbook.model;

public class InsideLinkFactory {

    public static InsideLink create(String String1, String String2)
    {
        return new InsideLink( InsideLinkType.build( String1 ), String2 );
    }

    public static InsideLink create(String String1, String String2, String String3)
    {
        return new InsideLink( InsideLinkType.build( String1 ), String2, String3 );
    }
}
