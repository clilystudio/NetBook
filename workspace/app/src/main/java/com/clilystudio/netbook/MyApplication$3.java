
package com.clilystudio.netbook;

import com.clilystudio.netbook.model.Account;
import java.util.Properties;

class MyApplication$3 extends Properties {

    MyApplication$3(MyApplication MyApplication1, Account Account2)
    {
        this$0 = MyApplication1;
        val$account = Account2;
        setProperty( "account.token", val$account.getToken() );
    }

    MyApplication this$0;     // final access specifier removed
    Account val$account;     // final access specifier removed
    private static final long serialVersionUID = 8794384850518743201L;
}
