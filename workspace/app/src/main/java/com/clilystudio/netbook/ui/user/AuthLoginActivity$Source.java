package com.clilystudio.netbook.ui.user;

public final class AuthLoginActivity$Source extends Enum<AuthLoginActivity$Source> {
    public static final /* enum */ AuthLoginActivity$Source HOME = new AuthLoginActivity$Source();
    public static final /* enum */ AuthLoginActivity$Source OTHER = new AuthLoginActivity$Source();
    private static final /* synthetic */ AuthLoginActivity$Source[] a;

    static {
        AuthLoginActivity$Source[] arrauthLoginActivity$Source = new AuthLoginActivity$Source[]{HOME, OTHER};
        a = arrauthLoginActivity$Source;
    }

    private AuthLoginActivity$Source() {
        super(string, n);
    }

    public static AuthLoginActivity$Source valueOf(String string) {
        return (AuthLoginActivity$Source) ((Object) Enum.valueOf(AuthLoginActivity$Source.class, string));
    }

    public static AuthLoginActivity$Source[] values() {
        return (AuthLoginActivity$Source[]) a.clone();
    }
}
