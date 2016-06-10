.class final Lcom/mob/tools/b/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/os/Message;

.field public final b:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/b/l;->a:Landroid/os/Message;

    iput-object p2, p0, Lcom/mob/tools/b/l;->b:Landroid/os/Handler$Callback;

    return-void
.end method
