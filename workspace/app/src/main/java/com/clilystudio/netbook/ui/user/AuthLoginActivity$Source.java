
package com.clilystudio.netbook.ui.user;

public final class AuthLoginActivity$Source extends Enum {

    private AuthLoginActivity$Source(String String1, int int2)
    {
        super( String1, int2 );
    }

    private static AuthLoginActivity$Source[] a;     // final access specifier removed
    public static final AuthLoginActivity$Source HOME = new AuthLoginActivity$Source( "HOME", 0 );
    public static final AuthLoginActivity$Source OTHER = new AuthLoginActivity$Source( "OTHER", 1 );
// Error: Internal #201: 
// The following method may not be correct.

    public static AuthLoginActivity$Source valueOf(String String1)
    {
    }

    public static AuthLoginActivity$Source[] values()
    {
        return (AuthLoginActivity$Source[]) a.clone();
    }

    static 
    {
        AuthLoginActivity$Source[] Source_1darray1 = new AuthLoginActivity$Source[2];

        Source_1darray1[0] = HOME;
        Source_1darray1[1] = OTHER;
        a = Source_1darray1;
    }
}
