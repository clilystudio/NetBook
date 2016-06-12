
package com.clilystudio.netbook.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import com.xiaomi.mipush.sdk.d;
import java.io.PrintStream;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MiPushReceiver extends PushMessageReceiver {

    public final void a(Context Context1, MiPushMessage MiPushMessage2)
    {
        int int3 = 1;
        Object Object4;

        System.out.println( new StringBuilder( "message = " ).append( MiPushMessage2.getExtra() ).toString() );
        Object4 = MiPushMessage2.getContent();
        new com.clilystudio.netbook.util.a.b();
        if( TextUtils.isEmpty( (CharSequence) Object4 ) || !java.util.regex.Pattern.compile( "\\w+:\\w+" ).matcher( (CharSequence) Object4 ).find() )
            int3 = 0;
        if( int3 != 0 )
        {
            try
            {
                Object Object6 = new InsideLinkIntent( Context1, com.clilystudio.netbook.util.a.b.a( (String) Object4 ) );

                ((InsideLinkIntent) Object6).putExtra( "EXTRA_OPEN_HOME_WHEN_CLOSE", true );
                ((InsideLinkIntent) Object6).setFlags( 268435456 );
                Context1.startActivity( (Intent) Object6 );
            }
            catch( Exception Exception7 )
            {
                Exception7.printStackTrace();
                return;
            }
        }
    }

    public final void a(MiPushCommandMessage MiPushCommandMessage1)
    {
        String String2 = MiPushCommandMessage1.getCommand();
        List List3 = MiPushCommandMessage1.getCommandArguments();
        String String4;
        boolean boolean5;
        String String6;
        long long7;

        if( List3 != null && List3.size() > 0 )
            String4 = (String) List3.get( 0 );
        else
            String4 = null;
        boolean5 = d.a.equals( String2 );
        String6 = null;
        if( !boolean5 )
        {
            if( d.b.equals( String2 ) )
            {
                String6 = String4;
                String4 = null;
            }
            else
            {
                String4 = null;
                String6 = null;
            }
        }
        long7 = MiPushCommandMessage1.getResultCode();
        if( String4 != null && long7 == 0L )
            BookSubRecord.delete( String4 );
        else
            System.out.println( new StringBuilder( "PUSH SUB ERROR: " ).append( long7 ).toString() );
        if( String6 != null && long7 == 0L )
            BookUnSubRecord.delete( String6 );
        else
            System.out.println( new StringBuilder( "PUSH UN SUB ERROR: " ).append( long7 ).toString() );
    }
}
