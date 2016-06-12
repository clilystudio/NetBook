
package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ResultStatus;
import java.io.IOException;

final class ca implements Runnable {

    ca(SettingsActivity SettingsActivity1, String String2)
    {
        b = SettingsActivity1;
        a = String2;
    }

    private String a;
    private SettingsActivity b;

    public final void run()
    {
        try
        {
            com.clilystudio.netbook.api.b.b().P( a );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return;
        }
    }
}
