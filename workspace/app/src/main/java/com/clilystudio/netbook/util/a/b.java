
package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b {

    public static InsideLink a(String String1)
    {
        Matcher Matcher2 = Pattern.compile( "(.+?):(.+)" ).matcher( (CharSequence) String1 );

        if( Matcher2.find() && Matcher2.groupCount() == 2 )
            return InsideLinkFactory.create( Matcher2.group( 1 ), Matcher2.group( 2 ) );
        else
            throw new IllegalStateException( "Type not found exception" );
    }
}
