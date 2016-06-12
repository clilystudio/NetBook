
package com.clilystudio.netbook.a;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.TopicCount;

public abstract class b extends e {

    private static transient TopicCount a(String[] String_1darray1)
    {
        TopicCount TopicCount4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            TopicCount4 = com.clilystudio.netbook.api.b.b().I( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return TopicCount4;
    }

    protected abstract void a(TopicCount TopicCount1);

    protected Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected void onPostExecute(Object Object1)
    {
        Object Object2 = (TopicCount) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((TopicCount) Object2).isOk() )
            a( (TopicCount) Object2 );
    }
}
