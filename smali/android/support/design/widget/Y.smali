.class final Landroid/support/design/widget/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Landroid/support/design/widget/X;


# direct methods
.method constructor <init>(Landroid/support/design/widget/X;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Landroid/support/design/widget/Y;->a:Landroid/support/design/widget/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :pswitch_0
    iget-object v1, p0, Landroid/support/design/widget/Y;->a:Landroid/support/design/widget/X;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/Z;

    invoke-static {v1, v0}, Landroid/support/design/widget/X;->a(Landroid/support/design/widget/X;Landroid/support/design/widget/Z;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
