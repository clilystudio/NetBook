
package com.clilystudio.netbook.adapter;

import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class u extends BaseAdapter {

    private List a = new ArrayList();

    public void a(List List1)
    {
        if( List1 != null )
        {
            a = List1;
            notifyDataSetChanged();
        }
    }

    public void a(Object[] Object_1darray1)
    {
        if( Object_1darray1 != null )
        {
            int int2 = Object_1darray1.length;
            int int3;

            for( int3 = 0; int3 < int2; ++int3 )
            {
                Object Object4 = Object_1darray1[int3];

                a.add( Object4 );
            }
            notifyDataSetChanged();
        }
    }

    public final List f()
    {
        return a;
    }

    public int getCount()
    {
        return a.size();
    }

    public Object getItem(int int1)
    {
        return a.get( int1 );
    }

    public long getItemId(int int1)
    {
        return (long) int1;
    }
}
