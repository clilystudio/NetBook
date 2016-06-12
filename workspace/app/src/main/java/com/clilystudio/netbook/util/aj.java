
package com.clilystudio.netbook.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostCountRoot;

final class aj extends HandlerThread implements Handler$Callback {

    public aj(String String1)
    {
        super( String1 );
    }

    public final boolean handleMessage(Message Message1)
    {
        String String2 = Message1.getData().getString( "bookId" );

        try
        {
            PostCountRoot PostCountRoot4 = ag.c().c( String2 );
            Message Message5 = Message.obtain( ag.d() );
            Bundle Bundle6 = new Bundle();

            Bundle6.putInt( "postCount", PostCountRoot4.getPostCount() );
            Bundle6.putString( "bookId", String2 );
            Message5.setData( Bundle6 );
            ag.d().sendMessage( Message5 );
        }
        catch( Exception Exception3 )
        {
            Exception3.printStackTrace();
            return false;
        }
        return true;
    }
}
