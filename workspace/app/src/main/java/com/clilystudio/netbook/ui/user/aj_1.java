
package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.VipPlan;
import com.clilystudio.netbook.model.VipPlan$Plan;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aj extends e {

    aj(RemoveAdActivity RemoveAdActivity1, byte byte2)
    {
        this( RemoveAdActivity1 );
    }

    private RemoveAdActivity a;

    private aj(RemoveAdActivity RemoveAdActivity1)
    {
        a = RemoveAdActivity1;
    }

    private transient VipPlan a()
    {
        VipPlan VipPlan2;

        try
        {
            VipPlan2 = com.clilystudio.netbook.api.b.b().m();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return VipPlan2;
    }

    public final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    public final void onPostExecute(Object Object1)
    {
        VipPlan VipPlan2 = (VipPlan) Object1;

        if( VipPlan2 != null && VipPlan2.isOk() )
        {
            a.f();
            a.a.a( Arrays.asList( VipPlan2.getPlans() ) );
        }
        else
            a.h();
    }
}
