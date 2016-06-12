package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;

public final class t {

    private Account a;     // final access specifier removed
    private AuthLoginActivity$Source b;
    public t(Account Account1) {
        a = Account1;
    }

    public final Account a() {
        return a;
    }

    public final void a(AuthLoginActivity$Source Source1) {
        b = Source1;
    }

    public final AuthLoginActivity$Source b() {
        return b;
    }
}
