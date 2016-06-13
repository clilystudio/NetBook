package com.clilystudio.netbook.ui;

public final class NotifFragment$Type
        extends Enum<NotifFragment$Type> {
    public static final /* enum */ NotifFragment$Type IMPORTANT = new NotifFragment$Type();
    public static final /* enum */ NotifFragment$Type UNIMPORTANT = new NotifFragment$Type();
    private static final /* synthetic */ NotifFragment$Type[] a;

    static {
        NotifFragment$Type[] arrnotifFragment$Type = new NotifFragment$Type[]{IMPORTANT, UNIMPORTANT};
        a = arrnotifFragment$Type;
    }

    private NotifFragment$Type() {
        super(string, n);
    }

    public static NotifFragment$Type valueOf(String string) {
        return (NotifFragment$Type) ((Object) Enum.valueOf(NotifFragment$Type.class, string));
    }

    public static NotifFragment$Type[] values() {
        return (NotifFragment$Type[]) a.clone();
    }
}
